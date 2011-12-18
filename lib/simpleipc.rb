#!/usr/bin/env ruby
#  test
#
#  Created by Paolo Bosetti on 2011-01-04.
#  Copyright (c) 2011 University of Trento. All rights reserved.
#
require "yaml"
require "socket"
require "timeout"

class SimpleIPC
  LENGTH_CODE = 'N'
  LENGTH_SIZE = [0].pack(LENGTH_CODE).size
  LOCALHOST = '127.0.0.1'
  
  attr_accessor :cfg
  attr_reader :stream_size
  
  def initialize(args = {})
    @cfg = {:port => 5000, :host => LOCALHOST, :timeout => 1.0 }
    @cfg.merge! args
    @stream_size
    @socket = UDPSocket.new
  end
  
  def send(something)
    if block_given? then
      payload = yield(something)
    else
      payload = YAML.dump(something)
    end
    length = [payload.size].pack(LENGTH_CODE)
    @socket.connect(@cfg[:host], @cfg[:port])
    @socket.print(length)
    @socket.print(payload)
  end
  
  def listen
    @socket.bind(LOCALHOST, @cfg[:port])
  end
  
  def get
    result = nil
    begin
      if @cfg[:timeout] > 0 and !@cfg[:nonblock] then
        Timeout::timeout(@cfg[:timeout]) do |to|
          result = get_
        end
      else
        result = get_
      end
    rescue Timeout::Error
      result = nil
    end
    if block_given? then
      return yield(result)
    else
      return YAML.load(result)
    end
  rescue Errno::EAGAIN
    return nil
  end
  
  def close
    @socket.close
  end
  
  private
  def get_
    if @cfg[:nonblock] then
      msg, sender = @socket.recv_nonblock(LENGTH_SIZE)
      return nil if msg == ""
    else
      msg, sender = @socket.recvfrom(LENGTH_SIZE)
    end
    @stream_size = msg.unpack(LENGTH_CODE)[0]
    msg, sender = @socket.recvfrom(@stream_size)
    return msg
  end
  
end

if __FILE__ == $0 then
  if ARGV[0] == "server" then
    from_client = SimpleIPC.new :port => 5000, :timeout => 0
    from_client.listen
    result = from_client.get
    puts "#{from_client.stream_size} bytes: #{result.inspect}"
    
    from_client.cfg[:nonblock] = true
    result = from_client.get {|s| s.split(',').map {|e| e.to_f}}
    puts "#{from_client.stream_size} bytes: #{result.inspect}"

    result = from_client.get {|s| s.unpack('N4')}
    puts "#{from_client.stream_size} bytes: #{result.inspect}"
    
  else
    to_server = SimpleIPC.new :port => 5000
    p to_server
    to_server.send([1,2,3,4, "test"])
    to_server.send([1,2,3,4]) {|o| o * ","}
    to_server.send([1,2,3,4]) {|o| o.pack("N4")}
    to_server.close
  end
end