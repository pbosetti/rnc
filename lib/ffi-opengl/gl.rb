
module GL
  extend FFI::Library
  GL_VERSION_1_1 = 1
  GL_VERSION_1_2 = 1
  GL_VERSION_1_3 = 1
  GL_ARB_imaging = 1
  GL_FALSE = 0x0
  GL_TRUE = 0x1
  GL_BYTE = 0x1400
  GL_UNSIGNED_BYTE = 0x1401
  GL_SHORT = 0x1402
  GL_UNSIGNED_SHORT = 0x1403
  GL_INT = 0x1404
  GL_UNSIGNED_INT = 0x1405
  GL_FLOAT = 0x1406
  GL_2_BYTES = 0x1407
  GL_3_BYTES = 0x1408
  GL_4_BYTES = 0x1409
  GL_DOUBLE = 0x140A
  GL_POINTS = 0x0000
  GL_LINES = 0x0001
  GL_LINE_LOOP = 0x0002
  GL_LINE_STRIP = 0x0003
  GL_TRIANGLES = 0x0004
  GL_TRIANGLE_STRIP = 0x0005
  GL_TRIANGLE_FAN = 0x0006
  GL_QUADS = 0x0007
  GL_QUAD_STRIP = 0x0008
  GL_POLYGON = 0x0009
  GL_VERTEX_ARRAY = 0x8074
  GL_NORMAL_ARRAY = 0x8075
  GL_COLOR_ARRAY = 0x8076
  GL_INDEX_ARRAY = 0x8077
  GL_TEXTURE_COORD_ARRAY = 0x8078
  GL_EDGE_FLAG_ARRAY = 0x8079
  GL_VERTEX_ARRAY_SIZE = 0x807A
  GL_VERTEX_ARRAY_TYPE = 0x807B
  GL_VERTEX_ARRAY_STRIDE = 0x807C
  GL_NORMAL_ARRAY_TYPE = 0x807E
  GL_NORMAL_ARRAY_STRIDE = 0x807F
  GL_COLOR_ARRAY_SIZE = 0x8081
  GL_COLOR_ARRAY_TYPE = 0x8082
  GL_COLOR_ARRAY_STRIDE = 0x8083
  GL_INDEX_ARRAY_TYPE = 0x8085
  GL_INDEX_ARRAY_STRIDE = 0x8086
  GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088
  GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089
  GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A
  GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C
  GL_VERTEX_ARRAY_POINTER = 0x808E
  GL_NORMAL_ARRAY_POINTER = 0x808F
  GL_COLOR_ARRAY_POINTER = 0x8090
  GL_INDEX_ARRAY_POINTER = 0x8091
  GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092
  GL_EDGE_FLAG_ARRAY_POINTER = 0x8093
  GL_V2F = 0x2A20
  GL_V3F = 0x2A21
  GL_C4UB_V2F = 0x2A22
  GL_C4UB_V3F = 0x2A23
  GL_C3F_V3F = 0x2A24
  GL_N3F_V3F = 0x2A25
  GL_C4F_N3F_V3F = 0x2A26
  GL_T2F_V3F = 0x2A27
  GL_T4F_V4F = 0x2A28
  GL_T2F_C4UB_V3F = 0x2A29
  GL_T2F_C3F_V3F = 0x2A2A
  GL_T2F_N3F_V3F = 0x2A2B
  GL_T2F_C4F_N3F_V3F = 0x2A2C
  GL_T4F_C4F_N3F_V4F = 0x2A2D
  GL_MATRIX_MODE = 0x0BA0
  GL_MODELVIEW = 0x1700
  GL_PROJECTION = 0x1701
  GL_TEXTURE = 0x1702
  GL_POINT_SMOOTH = 0x0B10
  GL_POINT_SIZE = 0x0B11
  GL_POINT_SIZE_GRANULARITY = 0x0B13
  GL_POINT_SIZE_RANGE = 0x0B12
  GL_LINE_SMOOTH = 0x0B20
  GL_LINE_STIPPLE = 0x0B24
  GL_LINE_STIPPLE_PATTERN = 0x0B25
  GL_LINE_STIPPLE_REPEAT = 0x0B26
  GL_LINE_WIDTH = 0x0B21
  GL_LINE_WIDTH_GRANULARITY = 0x0B23
  GL_LINE_WIDTH_RANGE = 0x0B22
  GL_POINT = 0x1B00
  GL_LINE = 0x1B01
  GL_FILL = 0x1B02
  GL_CW = 0x0900
  GL_CCW = 0x0901
  GL_FRONT = 0x0404
  GL_BACK = 0x0405
  GL_POLYGON_MODE = 0x0B40
  GL_POLYGON_SMOOTH = 0x0B41
  GL_POLYGON_STIPPLE = 0x0B42
  GL_EDGE_FLAG = 0x0B43
  GL_CULL_FACE = 0x0B44
  GL_CULL_FACE_MODE = 0x0B45
  GL_FRONT_FACE = 0x0B46
  GL_POLYGON_OFFSET_FACTOR = 0x8038
  GL_POLYGON_OFFSET_UNITS = 0x2A00
  GL_POLYGON_OFFSET_POINT = 0x2A01
  GL_POLYGON_OFFSET_LINE = 0x2A02
  GL_POLYGON_OFFSET_FILL = 0x8037
  GL_COMPILE = 0x1300
  GL_COMPILE_AND_EXECUTE = 0x1301
  GL_LIST_BASE = 0x0B32
  GL_LIST_INDEX = 0x0B33
  GL_LIST_MODE = 0x0B30
  GL_NEVER = 0x0200
  GL_LESS = 0x0201
  GL_EQUAL = 0x0202
  GL_LEQUAL = 0x0203
  GL_GREATER = 0x0204
  GL_NOTEQUAL = 0x0205
  GL_GEQUAL = 0x0206
  GL_ALWAYS = 0x0207
  GL_DEPTH_TEST = 0x0B71
  GL_DEPTH_BITS = 0x0D56
  GL_DEPTH_CLEAR_VALUE = 0x0B73
  GL_DEPTH_FUNC = 0x0B74
  GL_DEPTH_RANGE = 0x0B70
  GL_DEPTH_WRITEMASK = 0x0B72
  GL_DEPTH_COMPONENT = 0x1902
  GL_LIGHTING = 0x0B50
  GL_LIGHT0 = 0x4000
  GL_LIGHT1 = 0x4001
  GL_LIGHT2 = 0x4002
  GL_LIGHT3 = 0x4003
  GL_LIGHT4 = 0x4004
  GL_LIGHT5 = 0x4005
  GL_LIGHT6 = 0x4006
  GL_LIGHT7 = 0x4007
  GL_SPOT_EXPONENT = 0x1205
  GL_SPOT_CUTOFF = 0x1206
  GL_CONSTANT_ATTENUATION = 0x1207
  GL_LINEAR_ATTENUATION = 0x1208
  GL_QUADRATIC_ATTENUATION = 0x1209
  GL_AMBIENT = 0x1200
  GL_DIFFUSE = 0x1201
  GL_SPECULAR = 0x1202
  GL_SHININESS = 0x1601
  GL_EMISSION = 0x1600
  GL_POSITION = 0x1203
  GL_SPOT_DIRECTION = 0x1204
  GL_AMBIENT_AND_DIFFUSE = 0x1602
  GL_COLOR_INDEXES = 0x1603
  GL_LIGHT_MODEL_TWO_SIDE = 0x0B52
  GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51
  GL_LIGHT_MODEL_AMBIENT = 0x0B53
  GL_FRONT_AND_BACK = 0x0408
  GL_SHADE_MODEL = 0x0B54
  GL_FLAT = 0x1D00
  GL_SMOOTH = 0x1D01
  GL_COLOR_MATERIAL = 0x0B57
  GL_COLOR_MATERIAL_FACE = 0x0B55
  GL_COLOR_MATERIAL_PARAMETER = 0x0B56
  GL_NORMALIZE = 0x0BA1
  GL_CLIP_PLANE0 = 0x3000
  GL_CLIP_PLANE1 = 0x3001
  GL_CLIP_PLANE2 = 0x3002
  GL_CLIP_PLANE3 = 0x3003
  GL_CLIP_PLANE4 = 0x3004
  GL_CLIP_PLANE5 = 0x3005
  GL_ACCUM_RED_BITS = 0x0D58
  GL_ACCUM_GREEN_BITS = 0x0D59
  GL_ACCUM_BLUE_BITS = 0x0D5A
  GL_ACCUM_ALPHA_BITS = 0x0D5B
  GL_ACCUM_CLEAR_VALUE = 0x0B80
  GL_ACCUM = 0x0100
  GL_ADD = 0x0104
  GL_LOAD = 0x0101
  GL_MULT = 0x0103
  GL_RETURN = 0x0102
  GL_ALPHA_TEST = 0x0BC0
  GL_ALPHA_TEST_REF = 0x0BC2
  GL_ALPHA_TEST_FUNC = 0x0BC1
  GL_BLEND = 0x0BE2
  GL_BLEND_SRC = 0x0BE1
  GL_BLEND_DST = 0x0BE0
  GL_ZERO = 0x0
  GL_ONE = 0x1
  GL_SRC_COLOR = 0x0300
  GL_ONE_MINUS_SRC_COLOR = 0x0301
  GL_SRC_ALPHA = 0x0302
  GL_ONE_MINUS_SRC_ALPHA = 0x0303
  GL_DST_ALPHA = 0x0304
  GL_ONE_MINUS_DST_ALPHA = 0x0305
  GL_DST_COLOR = 0x0306
  GL_ONE_MINUS_DST_COLOR = 0x0307
  GL_SRC_ALPHA_SATURATE = 0x0308
  GL_FEEDBACK = 0x1C01
  GL_RENDER = 0x1C00
  GL_SELECT = 0x1C02
  GL_2D = 0x0600
  GL_3D = 0x0601
  GL_3D_COLOR = 0x0602
  GL_3D_COLOR_TEXTURE = 0x0603
  GL_4D_COLOR_TEXTURE = 0x0604
  GL_POINT_TOKEN = 0x0701
  GL_LINE_TOKEN = 0x0702
  GL_LINE_RESET_TOKEN = 0x0707
  GL_POLYGON_TOKEN = 0x0703
  GL_BITMAP_TOKEN = 0x0704
  GL_DRAW_PIXEL_TOKEN = 0x0705
  GL_COPY_PIXEL_TOKEN = 0x0706
  GL_PASS_THROUGH_TOKEN = 0x0700
  GL_FEEDBACK_BUFFER_POINTER = 0x0DF0
  GL_FEEDBACK_BUFFER_SIZE = 0x0DF1
  GL_FEEDBACK_BUFFER_TYPE = 0x0DF2
  GL_SELECTION_BUFFER_POINTER = 0x0DF3
  GL_SELECTION_BUFFER_SIZE = 0x0DF4
  GL_FOG = 0x0B60
  GL_FOG_MODE = 0x0B65
  GL_FOG_DENSITY = 0x0B62
  GL_FOG_COLOR = 0x0B66
  GL_FOG_INDEX = 0x0B61
  GL_FOG_START = 0x0B63
  GL_FOG_END = 0x0B64
  GL_LINEAR = 0x2601
  GL_EXP = 0x0800
  GL_EXP2 = 0x0801
  GL_LOGIC_OP = 0x0BF1
  GL_INDEX_LOGIC_OP = 0x0BF1
  GL_COLOR_LOGIC_OP = 0x0BF2
  GL_LOGIC_OP_MODE = 0x0BF0
  GL_CLEAR = 0x1500
  GL_SET = 0x150F
  GL_COPY = 0x1503
  GL_COPY_INVERTED = 0x150C
  GL_NOOP = 0x1505
  GL_INVERT = 0x150A
  GL_AND = 0x1501
  GL_NAND = 0x150E
  GL_OR = 0x1507
  GL_NOR = 0x1508
  GL_XOR = 0x1506
  GL_EQUIV = 0x1509
  GL_AND_REVERSE = 0x1502
  GL_AND_INVERTED = 0x1504
  GL_OR_REVERSE = 0x150B
  GL_OR_INVERTED = 0x150D
  GL_STENCIL_BITS = 0x0D57
  GL_STENCIL_TEST = 0x0B90
  GL_STENCIL_CLEAR_VALUE = 0x0B91
  GL_STENCIL_FUNC = 0x0B92
  GL_STENCIL_VALUE_MASK = 0x0B93
  GL_STENCIL_FAIL = 0x0B94
  GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95
  GL_STENCIL_PASS_DEPTH_PASS = 0x0B96
  GL_STENCIL_REF = 0x0B97
  GL_STENCIL_WRITEMASK = 0x0B98
  GL_STENCIL_INDEX = 0x1901
  GL_KEEP = 0x1E00
  GL_REPLACE = 0x1E01
  GL_INCR = 0x1E02
  GL_DECR = 0x1E03
  GL_NONE = 0x0
  GL_LEFT = 0x0406
  GL_RIGHT = 0x0407
  GL_FRONT_LEFT = 0x0400
  GL_FRONT_RIGHT = 0x0401
  GL_BACK_LEFT = 0x0402
  GL_BACK_RIGHT = 0x0403
  GL_AUX0 = 0x0409
  GL_AUX1 = 0x040A
  GL_AUX2 = 0x040B
  GL_AUX3 = 0x040C
  GL_COLOR_INDEX = 0x1900
  GL_RED = 0x1903
  GL_GREEN = 0x1904
  GL_BLUE = 0x1905
  GL_ALPHA = 0x1906
  GL_LUMINANCE = 0x1909
  GL_LUMINANCE_ALPHA = 0x190A
  GL_ALPHA_BITS = 0x0D55
  GL_RED_BITS = 0x0D52
  GL_GREEN_BITS = 0x0D53
  GL_BLUE_BITS = 0x0D54
  GL_INDEX_BITS = 0x0D51
  GL_SUBPIXEL_BITS = 0x0D50
  GL_AUX_BUFFERS = 0x0C00
  GL_READ_BUFFER = 0x0C02
  GL_DRAW_BUFFER = 0x0C01
  GL_DOUBLEBUFFER = 0x0C32
  GL_STEREO = 0x0C33
  GL_BITMAP = 0x1A00
  GL_COLOR = 0x1800
  GL_DEPTH = 0x1801
  GL_STENCIL = 0x1802
  GL_DITHER = 0x0BD0
  GL_RGB = 0x1907
  GL_RGBA = 0x1908
  GL_MAX_LIST_NESTING = 0x0B31
  GL_MAX_EVAL_ORDER = 0x0D30
  GL_MAX_LIGHTS = 0x0D31
  GL_MAX_CLIP_PLANES = 0x0D32
  GL_MAX_TEXTURE_SIZE = 0x0D33
  GL_MAX_PIXEL_MAP_TABLE = 0x0D34
  GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35
  GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36
  GL_MAX_NAME_STACK_DEPTH = 0x0D37
  GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38
  GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39
  GL_MAX_VIEWPORT_DIMS = 0x0D3A
  GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B
  GL_ATTRIB_STACK_DEPTH = 0x0BB0
  GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1
  GL_COLOR_CLEAR_VALUE = 0x0C22
  GL_COLOR_WRITEMASK = 0x0C23
  GL_CURRENT_INDEX = 0x0B01
  GL_CURRENT_COLOR = 0x0B00
  GL_CURRENT_NORMAL = 0x0B02
  GL_CURRENT_RASTER_COLOR = 0x0B04
  GL_CURRENT_RASTER_DISTANCE = 0x0B09
  GL_CURRENT_RASTER_INDEX = 0x0B05
  GL_CURRENT_RASTER_POSITION = 0x0B07
  GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06
  GL_CURRENT_RASTER_POSITION_VALID = 0x0B08
  GL_CURRENT_TEXTURE_COORDS = 0x0B03
  GL_INDEX_CLEAR_VALUE = 0x0C20
  GL_INDEX_MODE = 0x0C30
  GL_INDEX_WRITEMASK = 0x0C21
  GL_MODELVIEW_MATRIX = 0x0BA6
  GL_MODELVIEW_STACK_DEPTH = 0x0BA3
  GL_NAME_STACK_DEPTH = 0x0D70
  GL_PROJECTION_MATRIX = 0x0BA7
  GL_PROJECTION_STACK_DEPTH = 0x0BA4
  GL_RENDER_MODE = 0x0C40
  GL_RGBA_MODE = 0x0C31
  GL_TEXTURE_MATRIX = 0x0BA8
  GL_TEXTURE_STACK_DEPTH = 0x0BA5
  GL_VIEWPORT = 0x0BA2
  GL_AUTO_NORMAL = 0x0D80
  GL_MAP1_COLOR_4 = 0x0D90
  GL_MAP1_INDEX = 0x0D91
  GL_MAP1_NORMAL = 0x0D92
  GL_MAP1_TEXTURE_COORD_1 = 0x0D93
  GL_MAP1_TEXTURE_COORD_2 = 0x0D94
  GL_MAP1_TEXTURE_COORD_3 = 0x0D95
  GL_MAP1_TEXTURE_COORD_4 = 0x0D96
  GL_MAP1_VERTEX_3 = 0x0D97
  GL_MAP1_VERTEX_4 = 0x0D98
  GL_MAP2_COLOR_4 = 0x0DB0
  GL_MAP2_INDEX = 0x0DB1
  GL_MAP2_NORMAL = 0x0DB2
  GL_MAP2_TEXTURE_COORD_1 = 0x0DB3
  GL_MAP2_TEXTURE_COORD_2 = 0x0DB4
  GL_MAP2_TEXTURE_COORD_3 = 0x0DB5
  GL_MAP2_TEXTURE_COORD_4 = 0x0DB6
  GL_MAP2_VERTEX_3 = 0x0DB7
  GL_MAP2_VERTEX_4 = 0x0DB8
  GL_MAP1_GRID_DOMAIN = 0x0DD0
  GL_MAP1_GRID_SEGMENTS = 0x0DD1
  GL_MAP2_GRID_DOMAIN = 0x0DD2
  GL_MAP2_GRID_SEGMENTS = 0x0DD3
  GL_COEFF = 0x0A00
  GL_ORDER = 0x0A01
  GL_DOMAIN = 0x0A02
  GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50
  GL_POINT_SMOOTH_HINT = 0x0C51
  GL_LINE_SMOOTH_HINT = 0x0C52
  GL_POLYGON_SMOOTH_HINT = 0x0C53
  GL_FOG_HINT = 0x0C54
  GL_DONT_CARE = 0x1100
  GL_FASTEST = 0x1101
  GL_NICEST = 0x1102
  GL_SCISSOR_BOX = 0x0C10
  GL_SCISSOR_TEST = 0x0C11
  GL_MAP_COLOR = 0x0D10
  GL_MAP_STENCIL = 0x0D11
  GL_INDEX_SHIFT = 0x0D12
  GL_INDEX_OFFSET = 0x0D13
  GL_RED_SCALE = 0x0D14
  GL_RED_BIAS = 0x0D15
  GL_GREEN_SCALE = 0x0D18
  GL_GREEN_BIAS = 0x0D19
  GL_BLUE_SCALE = 0x0D1A
  GL_BLUE_BIAS = 0x0D1B
  GL_ALPHA_SCALE = 0x0D1C
  GL_ALPHA_BIAS = 0x0D1D
  GL_DEPTH_SCALE = 0x0D1E
  GL_DEPTH_BIAS = 0x0D1F
  GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1
  GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0
  GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2
  GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3
  GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4
  GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5
  GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6
  GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7
  GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8
  GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9
  GL_PIXEL_MAP_S_TO_S = 0x0C71
  GL_PIXEL_MAP_I_TO_I = 0x0C70
  GL_PIXEL_MAP_I_TO_R = 0x0C72
  GL_PIXEL_MAP_I_TO_G = 0x0C73
  GL_PIXEL_MAP_I_TO_B = 0x0C74
  GL_PIXEL_MAP_I_TO_A = 0x0C75
  GL_PIXEL_MAP_R_TO_R = 0x0C76
  GL_PIXEL_MAP_G_TO_G = 0x0C77
  GL_PIXEL_MAP_B_TO_B = 0x0C78
  GL_PIXEL_MAP_A_TO_A = 0x0C79
  GL_PACK_ALIGNMENT = 0x0D05
  GL_PACK_LSB_FIRST = 0x0D01
  GL_PACK_ROW_LENGTH = 0x0D02
  GL_PACK_SKIP_PIXELS = 0x0D04
  GL_PACK_SKIP_ROWS = 0x0D03
  GL_PACK_SWAP_BYTES = 0x0D00
  GL_UNPACK_ALIGNMENT = 0x0CF5
  GL_UNPACK_LSB_FIRST = 0x0CF1
  GL_UNPACK_ROW_LENGTH = 0x0CF2
  GL_UNPACK_SKIP_PIXELS = 0x0CF4
  GL_UNPACK_SKIP_ROWS = 0x0CF3
  GL_UNPACK_SWAP_BYTES = 0x0CF0
  GL_ZOOM_X = 0x0D16
  GL_ZOOM_Y = 0x0D17
  GL_TEXTURE_ENV = 0x2300
  GL_TEXTURE_ENV_MODE = 0x2200
  GL_TEXTURE_1D = 0x0DE0
  GL_TEXTURE_2D = 0x0DE1
  GL_TEXTURE_WRAP_S = 0x2802
  GL_TEXTURE_WRAP_T = 0x2803
  GL_TEXTURE_MAG_FILTER = 0x2800
  GL_TEXTURE_MIN_FILTER = 0x2801
  GL_TEXTURE_ENV_COLOR = 0x2201
  GL_TEXTURE_GEN_S = 0x0C60
  GL_TEXTURE_GEN_T = 0x0C61
  GL_TEXTURE_GEN_MODE = 0x2500
  GL_TEXTURE_BORDER_COLOR = 0x1004
  GL_TEXTURE_WIDTH = 0x1000
  GL_TEXTURE_HEIGHT = 0x1001
  GL_TEXTURE_BORDER = 0x1005
  GL_TEXTURE_COMPONENTS = 0x1003
  GL_TEXTURE_RED_SIZE = 0x805C
  GL_TEXTURE_GREEN_SIZE = 0x805D
  GL_TEXTURE_BLUE_SIZE = 0x805E
  GL_TEXTURE_ALPHA_SIZE = 0x805F
  GL_TEXTURE_LUMINANCE_SIZE = 0x8060
  GL_TEXTURE_INTENSITY_SIZE = 0x8061
  GL_NEAREST_MIPMAP_NEAREST = 0x2700
  GL_NEAREST_MIPMAP_LINEAR = 0x2702
  GL_LINEAR_MIPMAP_NEAREST = 0x2701
  GL_LINEAR_MIPMAP_LINEAR = 0x2703
  GL_OBJECT_LINEAR = 0x2401
  GL_OBJECT_PLANE = 0x2501
  GL_EYE_LINEAR = 0x2400
  GL_EYE_PLANE = 0x2502
  GL_SPHERE_MAP = 0x2402
  GL_DECAL = 0x2101
  GL_MODULATE = 0x2100
  GL_NEAREST = 0x2600
  GL_REPEAT = 0x2901
  GL_CLAMP = 0x2900
  GL_S = 0x2000
  GL_T = 0x2001
  GL_R = 0x2002
  GL_Q = 0x2003
  GL_TEXTURE_GEN_R = 0x0C62
  GL_TEXTURE_GEN_Q = 0x0C63
  GL_VENDOR = 0x1F00
  GL_RENDERER = 0x1F01
  GL_VERSION = 0x1F02
  GL_EXTENSIONS = 0x1F03
  GL_NO_ERROR = 0x0
  GL_INVALID_ENUM = 0x0500
  GL_INVALID_VALUE = 0x0501
  GL_INVALID_OPERATION = 0x0502
  GL_STACK_OVERFLOW = 0x0503
  GL_STACK_UNDERFLOW = 0x0504
  GL_OUT_OF_MEMORY = 0x0505
  GL_CURRENT_BIT = 0x00000001
  GL_POINT_BIT = 0x00000002
  GL_LINE_BIT = 0x00000004
  GL_POLYGON_BIT = 0x00000008
  GL_POLYGON_STIPPLE_BIT = 0x00000010
  GL_PIXEL_MODE_BIT = 0x00000020
  GL_LIGHTING_BIT = 0x00000040
  GL_FOG_BIT = 0x00000080
  GL_DEPTH_BUFFER_BIT = 0x00000100
  GL_ACCUM_BUFFER_BIT = 0x00000200
  GL_STENCIL_BUFFER_BIT = 0x00000400
  GL_VIEWPORT_BIT = 0x00000800
  GL_TRANSFORM_BIT = 0x00001000
  GL_ENABLE_BIT = 0x00002000
  GL_COLOR_BUFFER_BIT = 0x00004000
  GL_HINT_BIT = 0x00008000
  GL_EVAL_BIT = 0x00010000
  GL_LIST_BIT = 0x00020000
  GL_TEXTURE_BIT = 0x00040000
  GL_SCISSOR_BIT = 0x00080000
  GL_ALL_ATTRIB_BITS = 0x000FFFFF
  GL_PROXY_TEXTURE_1D = 0x8063
  GL_PROXY_TEXTURE_2D = 0x8064
  GL_TEXTURE_PRIORITY = 0x8066
  GL_TEXTURE_RESIDENT = 0x8067
  GL_TEXTURE_BINDING_1D = 0x8068
  GL_TEXTURE_BINDING_2D = 0x8069
  GL_TEXTURE_INTERNAL_FORMAT = 0x1003
  GL_ALPHA4 = 0x803B
  GL_ALPHA8 = 0x803C
  GL_ALPHA12 = 0x803D
  GL_ALPHA16 = 0x803E
  GL_LUMINANCE4 = 0x803F
  GL_LUMINANCE8 = 0x8040
  GL_LUMINANCE12 = 0x8041
  GL_LUMINANCE16 = 0x8042
  GL_LUMINANCE4_ALPHA4 = 0x8043
  GL_LUMINANCE6_ALPHA2 = 0x8044
  GL_LUMINANCE8_ALPHA8 = 0x8045
  GL_LUMINANCE12_ALPHA4 = 0x8046
  GL_LUMINANCE12_ALPHA12 = 0x8047
  GL_LUMINANCE16_ALPHA16 = 0x8048
  GL_INTENSITY = 0x8049
  GL_INTENSITY4 = 0x804A
  GL_INTENSITY8 = 0x804B
  GL_INTENSITY12 = 0x804C
  GL_INTENSITY16 = 0x804D
  GL_R3_G3_B2 = 0x2A10
  GL_RGB4 = 0x804F
  GL_RGB5 = 0x8050
  GL_RGB8 = 0x8051
  GL_RGB10 = 0x8052
  GL_RGB12 = 0x8053
  GL_RGB16 = 0x8054
  GL_RGBA2 = 0x8055
  GL_RGBA4 = 0x8056
  GL_RGB5_A1 = 0x8057
  GL_RGBA8 = 0x8058
  GL_RGB10_A2 = 0x8059
  GL_RGBA12 = 0x805A
  GL_RGBA16 = 0x805B
  GL_CLIENT_PIXEL_STORE_BIT = 0x00000001
  GL_CLIENT_VERTEX_ARRAY_BIT = 0x00000002
  GL_ALL_CLIENT_ATTRIB_BITS = 0xFFFFFFFF
  GL_CLIENT_ALL_ATTRIB_BITS = 0xFFFFFFFF
  attach_function :glClearIndex, [ :float ], :void
  attach_function :glClearColor, [ :float, :float, :float, :float ], :void
  attach_function :glClear, [ :uint ], :void
  attach_function :glIndexMask, [ :uint ], :void
  attach_function :glColorMask, [ :uchar, :uchar, :uchar, :uchar ], :void
  attach_function :glAlphaFunc, [ :uint, :float ], :void
  attach_function :glBlendFunc, [ :uint, :uint ], :void
  attach_function :glLogicOp, [ :uint ], :void
  attach_function :glCullFace, [ :uint ], :void
  attach_function :glFrontFace, [ :uint ], :void
  attach_function :glPointSize, [ :float ], :void
  attach_function :glLineWidth, [ :float ], :void
  attach_function :glLineStipple, [ :int, :ushort ], :void
  attach_function :glPolygonMode, [ :uint, :uint ], :void
  attach_function :glPolygonOffset, [ :float, :float ], :void
  attach_function :glPolygonStipple, [ :pointer ], :void
  attach_function :glGetPolygonStipple, [ :pointer ], :void
  attach_function :glEdgeFlag, [ :uchar ], :void
  attach_function :glEdgeFlagv, [ :pointer ], :void
  attach_function :glScissor, [ :int, :int, :int, :int ], :void
  attach_function :glClipPlane, [ :uint, :pointer ], :void
  attach_function :glGetClipPlane, [ :uint, :pointer ], :void
  attach_function :glDrawBuffer, [ :uint ], :void
  attach_function :glReadBuffer, [ :uint ], :void
  attach_function :glEnable, [ :uint ], :void
  attach_function :glDisable, [ :uint ], :void
  attach_function :glIsEnabled, [ :uint ], :uchar
  attach_function :glEnableClientState, [ :uint ], :void
  attach_function :glDisableClientState, [ :uint ], :void
  attach_function :glGetBooleanv, [ :uint, :pointer ], :void
  attach_function :glGetDoublev, [ :uint, :pointer ], :void
  attach_function :glGetFloatv, [ :uint, :pointer ], :void
  attach_function :glGetIntegerv, [ :uint, :pointer ], :void
  attach_function :glPushAttrib, [ :uint ], :void
  attach_function :glPopAttrib, [  ], :void
  attach_function :glPushClientAttrib, [ :uint ], :void
  attach_function :glPopClientAttrib, [  ], :void
  attach_function :glRenderMode, [ :uint ], :int
  attach_function :glGetError, [  ], :uint
  attach_function :glGetString, [ :uint ], :pointer
  attach_function :glFinish, [  ], :void
  attach_function :glFlush, [  ], :void
  attach_function :glHint, [ :uint, :uint ], :void
  attach_function :glClearDepth, [ :double ], :void
  attach_function :glDepthFunc, [ :uint ], :void
  attach_function :glDepthMask, [ :uchar ], :void
  attach_function :glDepthRange, [ :double, :double ], :void
  attach_function :glClearAccum, [ :float, :float, :float, :float ], :void
  attach_function :glAccum, [ :uint, :float ], :void
  attach_function :glMatrixMode, [ :uint ], :void
  attach_function :glOrtho, [ :double, :double, :double, :double, :double, :double ], :void
  attach_function :glFrustum, [ :double, :double, :double, :double, :double, :double ], :void
  attach_function :glViewport, [ :int, :int, :int, :int ], :void
  attach_function :glPushMatrix, [  ], :void
  attach_function :glPopMatrix, [  ], :void
  attach_function :glLoadIdentity, [  ], :void
  attach_function :glLoadMatrixd, [ :pointer ], :void
  attach_function :glLoadMatrixf, [ :pointer ], :void
  attach_function :glMultMatrixd, [ :pointer ], :void
  attach_function :glMultMatrixf, [ :pointer ], :void
  attach_function :glRotated, [ :double, :double, :double, :double ], :void
  attach_function :glRotatef, [ :float, :float, :float, :float ], :void
  attach_function :glScaled, [ :double, :double, :double ], :void
  attach_function :glScalef, [ :float, :float, :float ], :void
  attach_function :glTranslated, [ :double, :double, :double ], :void
  attach_function :glTranslatef, [ :float, :float, :float ], :void
  attach_function :glIsList, [ :uint ], :uchar
  attach_function :glDeleteLists, [ :uint, :int ], :void
  attach_function :glGenLists, [ :int ], :uint
  attach_function :glNewList, [ :uint, :uint ], :void
  attach_function :glEndList, [  ], :void
  attach_function :glCallList, [ :uint ], :void
  attach_function :glCallLists, [ :int, :uint, :pointer ], :void
  attach_function :glListBase, [ :uint ], :void
  attach_function :glBegin, [ :uint ], :void
  attach_function :glEnd, [  ], :void
  attach_function :glVertex2d, [ :double, :double ], :void
  attach_function :glVertex2f, [ :float, :float ], :void
  attach_function :glVertex2i, [ :int, :int ], :void
  attach_function :glVertex2s, [ :short, :short ], :void
  attach_function :glVertex3d, [ :double, :double, :double ], :void
  attach_function :glVertex3f, [ :float, :float, :float ], :void
  attach_function :glVertex3i, [ :int, :int, :int ], :void
  attach_function :glVertex3s, [ :short, :short, :short ], :void
  attach_function :glVertex4d, [ :double, :double, :double, :double ], :void
  attach_function :glVertex4f, [ :float, :float, :float, :float ], :void
  attach_function :glVertex4i, [ :int, :int, :int, :int ], :void
  attach_function :glVertex4s, [ :short, :short, :short, :short ], :void
  attach_function :glVertex2dv, [ :pointer ], :void
  attach_function :glVertex2fv, [ :pointer ], :void
  attach_function :glVertex2iv, [ :pointer ], :void
  attach_function :glVertex2sv, [ :pointer ], :void
  attach_function :glVertex3dv, [ :pointer ], :void
  attach_function :glVertex3fv, [ :pointer ], :void
  attach_function :glVertex3iv, [ :pointer ], :void
  attach_function :glVertex3sv, [ :pointer ], :void
  attach_function :glVertex4dv, [ :pointer ], :void
  attach_function :glVertex4fv, [ :pointer ], :void
  attach_function :glVertex4iv, [ :pointer ], :void
  attach_function :glVertex4sv, [ :pointer ], :void
  attach_function :glNormal3b, [ :char, :char, :char ], :void
  attach_function :glNormal3d, [ :double, :double, :double ], :void
  attach_function :glNormal3f, [ :float, :float, :float ], :void
  attach_function :glNormal3i, [ :int, :int, :int ], :void
  attach_function :glNormal3s, [ :short, :short, :short ], :void
  attach_function :glNormal3bv, [ :pointer ], :void
  attach_function :glNormal3dv, [ :pointer ], :void
  attach_function :glNormal3fv, [ :pointer ], :void
  attach_function :glNormal3iv, [ :pointer ], :void
  attach_function :glNormal3sv, [ :pointer ], :void
  attach_function :glIndexd, [ :double ], :void
  attach_function :glIndexf, [ :float ], :void
  attach_function :glIndexi, [ :int ], :void
  attach_function :glIndexs, [ :short ], :void
  attach_function :glIndexub, [ :uchar ], :void
  attach_function :glIndexdv, [ :pointer ], :void
  attach_function :glIndexfv, [ :pointer ], :void
  attach_function :glIndexiv, [ :pointer ], :void
  attach_function :glIndexsv, [ :pointer ], :void
  attach_function :glIndexubv, [ :pointer ], :void
  attach_function :glColor3b, [ :char, :char, :char ], :void
  attach_function :glColor3d, [ :double, :double, :double ], :void
  attach_function :glColor3f, [ :float, :float, :float ], :void
  attach_function :glColor3i, [ :int, :int, :int ], :void
  attach_function :glColor3s, [ :short, :short, :short ], :void
  attach_function :glColor3ub, [ :uchar, :uchar, :uchar ], :void
  attach_function :glColor3ui, [ :uint, :uint, :uint ], :void
  attach_function :glColor3us, [ :ushort, :ushort, :ushort ], :void
  attach_function :glColor4b, [ :char, :char, :char, :char ], :void
  attach_function :glColor4d, [ :double, :double, :double, :double ], :void
  attach_function :glColor4f, [ :float, :float, :float, :float ], :void
  attach_function :glColor4i, [ :int, :int, :int, :int ], :void
  attach_function :glColor4s, [ :short, :short, :short, :short ], :void
  attach_function :glColor4ub, [ :uchar, :uchar, :uchar, :uchar ], :void
  attach_function :glColor4ui, [ :uint, :uint, :uint, :uint ], :void
  attach_function :glColor4us, [ :ushort, :ushort, :ushort, :ushort ], :void
  attach_function :glColor3bv, [ :pointer ], :void
  attach_function :glColor3dv, [ :pointer ], :void
  attach_function :glColor3fv, [ :pointer ], :void
  attach_function :glColor3iv, [ :pointer ], :void
  attach_function :glColor3sv, [ :pointer ], :void
  attach_function :glColor3ubv, [ :pointer ], :void
  attach_function :glColor3uiv, [ :pointer ], :void
  attach_function :glColor3usv, [ :pointer ], :void
  attach_function :glColor4bv, [ :pointer ], :void
  attach_function :glColor4dv, [ :pointer ], :void
  attach_function :glColor4fv, [ :pointer ], :void
  attach_function :glColor4iv, [ :pointer ], :void
  attach_function :glColor4sv, [ :pointer ], :void
  attach_function :glColor4ubv, [ :pointer ], :void
  attach_function :glColor4uiv, [ :pointer ], :void
  attach_function :glColor4usv, [ :pointer ], :void
  attach_function :glTexCoord1d, [ :double ], :void
  attach_function :glTexCoord1f, [ :float ], :void
  attach_function :glTexCoord1i, [ :int ], :void
  attach_function :glTexCoord1s, [ :short ], :void
  attach_function :glTexCoord2d, [ :double, :double ], :void
  attach_function :glTexCoord2f, [ :float, :float ], :void
  attach_function :glTexCoord2i, [ :int, :int ], :void
  attach_function :glTexCoord2s, [ :short, :short ], :void
  attach_function :glTexCoord3d, [ :double, :double, :double ], :void
  attach_function :glTexCoord3f, [ :float, :float, :float ], :void
  attach_function :glTexCoord3i, [ :int, :int, :int ], :void
  attach_function :glTexCoord3s, [ :short, :short, :short ], :void
  attach_function :glTexCoord4d, [ :double, :double, :double, :double ], :void
  attach_function :glTexCoord4f, [ :float, :float, :float, :float ], :void
  attach_function :glTexCoord4i, [ :int, :int, :int, :int ], :void
  attach_function :glTexCoord4s, [ :short, :short, :short, :short ], :void
  attach_function :glTexCoord1dv, [ :pointer ], :void
  attach_function :glTexCoord1fv, [ :pointer ], :void
  attach_function :glTexCoord1iv, [ :pointer ], :void
  attach_function :glTexCoord1sv, [ :pointer ], :void
  attach_function :glTexCoord2dv, [ :pointer ], :void
  attach_function :glTexCoord2fv, [ :pointer ], :void
  attach_function :glTexCoord2iv, [ :pointer ], :void
  attach_function :glTexCoord2sv, [ :pointer ], :void
  attach_function :glTexCoord3dv, [ :pointer ], :void
  attach_function :glTexCoord3fv, [ :pointer ], :void
  attach_function :glTexCoord3iv, [ :pointer ], :void
  attach_function :glTexCoord3sv, [ :pointer ], :void
  attach_function :glTexCoord4dv, [ :pointer ], :void
  attach_function :glTexCoord4fv, [ :pointer ], :void
  attach_function :glTexCoord4iv, [ :pointer ], :void
  attach_function :glTexCoord4sv, [ :pointer ], :void
  attach_function :glRasterPos2d, [ :double, :double ], :void
  attach_function :glRasterPos2f, [ :float, :float ], :void
  attach_function :glRasterPos2i, [ :int, :int ], :void
  attach_function :glRasterPos2s, [ :short, :short ], :void
  attach_function :glRasterPos3d, [ :double, :double, :double ], :void
  attach_function :glRasterPos3f, [ :float, :float, :float ], :void
  attach_function :glRasterPos3i, [ :int, :int, :int ], :void
  attach_function :glRasterPos3s, [ :short, :short, :short ], :void
  attach_function :glRasterPos4d, [ :double, :double, :double, :double ], :void
  attach_function :glRasterPos4f, [ :float, :float, :float, :float ], :void
  attach_function :glRasterPos4i, [ :int, :int, :int, :int ], :void
  attach_function :glRasterPos4s, [ :short, :short, :short, :short ], :void
  attach_function :glRasterPos2dv, [ :pointer ], :void
  attach_function :glRasterPos2fv, [ :pointer ], :void
  attach_function :glRasterPos2iv, [ :pointer ], :void
  attach_function :glRasterPos2sv, [ :pointer ], :void
  attach_function :glRasterPos3dv, [ :pointer ], :void
  attach_function :glRasterPos3fv, [ :pointer ], :void
  attach_function :glRasterPos3iv, [ :pointer ], :void
  attach_function :glRasterPos3sv, [ :pointer ], :void
  attach_function :glRasterPos4dv, [ :pointer ], :void
  attach_function :glRasterPos4fv, [ :pointer ], :void
  attach_function :glRasterPos4iv, [ :pointer ], :void
  attach_function :glRasterPos4sv, [ :pointer ], :void
  attach_function :glRectd, [ :double, :double, :double, :double ], :void
  attach_function :glRectf, [ :float, :float, :float, :float ], :void
  attach_function :glRecti, [ :int, :int, :int, :int ], :void
  attach_function :glRects, [ :short, :short, :short, :short ], :void
  attach_function :glRectdv, [ :pointer, :pointer ], :void
  attach_function :glRectfv, [ :pointer, :pointer ], :void
  attach_function :glRectiv, [ :pointer, :pointer ], :void
  attach_function :glRectsv, [ :pointer, :pointer ], :void
  attach_function :glVertexPointer, [ :int, :uint, :int, :pointer ], :void
  attach_function :glNormalPointer, [ :uint, :int, :pointer ], :void
  attach_function :glColorPointer, [ :int, :uint, :int, :pointer ], :void
  attach_function :glIndexPointer, [ :uint, :int, :pointer ], :void
  attach_function :glTexCoordPointer, [ :int, :uint, :int, :pointer ], :void
  attach_function :glEdgeFlagPointer, [ :int, :pointer ], :void
  attach_function :glGetPointerv, [ :uint, :pointer ], :void
  attach_function :glArrayElement, [ :int ], :void
  attach_function :glDrawArrays, [ :uint, :int, :int ], :void
  attach_function :glDrawElements, [ :uint, :int, :uint, :pointer ], :void
  attach_function :glInterleavedArrays, [ :uint, :int, :pointer ], :void
  attach_function :glShadeModel, [ :uint ], :void
  attach_function :glLightf, [ :uint, :uint, :float ], :void
  attach_function :glLighti, [ :uint, :uint, :int ], :void
  attach_function :glLightfv, [ :uint, :uint, :pointer ], :void
  attach_function :glLightiv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetLightfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetLightiv, [ :uint, :uint, :pointer ], :void
  attach_function :glLightModelf, [ :uint, :float ], :void
  attach_function :glLightModeli, [ :uint, :int ], :void
  attach_function :glLightModelfv, [ :uint, :pointer ], :void
  attach_function :glLightModeliv, [ :uint, :pointer ], :void
  attach_function :glMaterialf, [ :uint, :uint, :float ], :void
  attach_function :glMateriali, [ :uint, :uint, :int ], :void
  attach_function :glMaterialfv, [ :uint, :uint, :pointer ], :void
  attach_function :glMaterialiv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetMaterialfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetMaterialiv, [ :uint, :uint, :pointer ], :void
  attach_function :glColorMaterial, [ :uint, :uint ], :void
  attach_function :glPixelZoom, [ :float, :float ], :void
  attach_function :glPixelStoref, [ :uint, :float ], :void
  attach_function :glPixelStorei, [ :uint, :int ], :void
  attach_function :glPixelTransferf, [ :uint, :float ], :void
  attach_function :glPixelTransferi, [ :uint, :int ], :void
  attach_function :glPixelMapfv, [ :uint, :int, :pointer ], :void
  attach_function :glPixelMapuiv, [ :uint, :int, :pointer ], :void
  attach_function :glPixelMapusv, [ :uint, :int, :pointer ], :void
  attach_function :glGetPixelMapfv, [ :uint, :pointer ], :void
  attach_function :glGetPixelMapuiv, [ :uint, :pointer ], :void
  attach_function :glGetPixelMapusv, [ :uint, :pointer ], :void
  attach_function :glBitmap, [ :int, :int, :float, :float, :float, :float, :pointer ], :void
  attach_function :glReadPixels, [ :int, :int, :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glDrawPixels, [ :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glCopyPixels, [ :int, :int, :int, :int, :uint ], :void
  attach_function :glStencilFunc, [ :uint, :int, :uint ], :void
  attach_function :glStencilMask, [ :uint ], :void
  attach_function :glStencilOp, [ :uint, :uint, :uint ], :void
  attach_function :glClearStencil, [ :int ], :void
  attach_function :glTexGend, [ :uint, :uint, :double ], :void
  attach_function :glTexGenf, [ :uint, :uint, :float ], :void
  attach_function :glTexGeni, [ :uint, :uint, :int ], :void
  attach_function :glTexGendv, [ :uint, :uint, :pointer ], :void
  attach_function :glTexGenfv, [ :uint, :uint, :pointer ], :void
  attach_function :glTexGeniv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetTexGendv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetTexGenfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetTexGeniv, [ :uint, :uint, :pointer ], :void
  attach_function :glTexEnvf, [ :uint, :uint, :float ], :void
  attach_function :glTexEnvi, [ :uint, :uint, :int ], :void
  attach_function :glTexEnvfv, [ :uint, :uint, :pointer ], :void
  attach_function :glTexEnviv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetTexEnvfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetTexEnviv, [ :uint, :uint, :pointer ], :void
  attach_function :glTexParameterf, [ :uint, :uint, :float ], :void
  attach_function :glTexParameteri, [ :uint, :uint, :int ], :void
  attach_function :glTexParameterfv, [ :uint, :uint, :pointer ], :void
  attach_function :glTexParameteriv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetTexParameterfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetTexParameteriv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetTexLevelParameterfv, [ :uint, :int, :uint, :pointer ], :void
  attach_function :glGetTexLevelParameteriv, [ :uint, :int, :uint, :pointer ], :void
  attach_function :glTexImage1D, [ :uint, :int, :int, :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glTexImage2D, [ :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glGetTexImage, [ :uint, :int, :uint, :uint, :pointer ], :void
  attach_function :glGenTextures, [ :int, :pointer ], :void
  attach_function :glDeleteTextures, [ :int, :pointer ], :void
  attach_function :glBindTexture, [ :uint, :uint ], :void
  attach_function :glPrioritizeTextures, [ :int, :pointer, :pointer ], :void
  attach_function :glAreTexturesResident, [ :int, :pointer, :pointer ], :uchar
  attach_function :glIsTexture, [ :uint ], :uchar
  attach_function :glTexSubImage1D, [ :uint, :int, :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glTexSubImage2D, [ :uint, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glCopyTexImage1D, [ :uint, :int, :uint, :int, :int, :int, :int ], :void
  attach_function :glCopyTexImage2D, [ :uint, :int, :uint, :int, :int, :int, :int, :int ], :void
  attach_function :glCopyTexSubImage1D, [ :uint, :int, :int, :int, :int, :int ], :void
  attach_function :glCopyTexSubImage2D, [ :uint, :int, :int, :int, :int, :int, :int, :int ], :void
  attach_function :glMap1d, [ :uint, :double, :double, :int, :int, :pointer ], :void
  attach_function :glMap1f, [ :uint, :float, :float, :int, :int, :pointer ], :void
  attach_function :glMap2d, [ :uint, :double, :double, :int, :int, :double, :double, :int, :int, :pointer ], :void
  attach_function :glMap2f, [ :uint, :float, :float, :int, :int, :float, :float, :int, :int, :pointer ], :void
  attach_function :glGetMapdv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetMapfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetMapiv, [ :uint, :uint, :pointer ], :void
  attach_function :glEvalCoord1d, [ :double ], :void
  attach_function :glEvalCoord1f, [ :float ], :void
  attach_function :glEvalCoord1dv, [ :pointer ], :void
  attach_function :glEvalCoord1fv, [ :pointer ], :void
  attach_function :glEvalCoord2d, [ :double, :double ], :void
  attach_function :glEvalCoord2f, [ :float, :float ], :void
  attach_function :glEvalCoord2dv, [ :pointer ], :void
  attach_function :glEvalCoord2fv, [ :pointer ], :void
  attach_function :glMapGrid1d, [ :int, :double, :double ], :void
  attach_function :glMapGrid1f, [ :int, :float, :float ], :void
  attach_function :glMapGrid2d, [ :int, :double, :double, :int, :double, :double ], :void
  attach_function :glMapGrid2f, [ :int, :float, :float, :int, :float, :float ], :void
  attach_function :glEvalPoint1, [ :int ], :void
  attach_function :glEvalPoint2, [ :int, :int ], :void
  attach_function :glEvalMesh1, [ :uint, :int, :int ], :void
  attach_function :glEvalMesh2, [ :uint, :int, :int, :int, :int ], :void
  attach_function :glFogf, [ :uint, :float ], :void
  attach_function :glFogi, [ :uint, :int ], :void
  attach_function :glFogfv, [ :uint, :pointer ], :void
  attach_function :glFogiv, [ :uint, :pointer ], :void
  attach_function :glFeedbackBuffer, [ :int, :uint, :pointer ], :void
  attach_function :glPassThrough, [ :float ], :void
  attach_function :glSelectBuffer, [ :int, :pointer ], :void
  attach_function :glInitNames, [  ], :void
  attach_function :glLoadName, [ :uint ], :void
  attach_function :glPushName, [ :uint ], :void
  attach_function :glPopName, [  ], :void
  GL_RESCALE_NORMAL = 0x803A
  GL_CLAMP_TO_EDGE = 0x812F
  GL_MAX_ELEMENTS_VERTICES = 0x80E8
  GL_MAX_ELEMENTS_INDICES = 0x80E9
  GL_BGR = 0x80E0
  GL_BGRA = 0x80E1
  GL_UNSIGNED_BYTE_3_3_2 = 0x8032
  GL_UNSIGNED_BYTE_2_3_3_REV = 0x8362
  GL_UNSIGNED_SHORT_5_6_5 = 0x8363
  GL_UNSIGNED_SHORT_5_6_5_REV = 0x8364
  GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033
  GL_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365
  GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034
  GL_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366
  GL_UNSIGNED_INT_8_8_8_8 = 0x8035
  GL_UNSIGNED_INT_8_8_8_8_REV = 0x8367
  GL_UNSIGNED_INT_10_10_10_2 = 0x8036
  GL_UNSIGNED_INT_2_10_10_10_REV = 0x8368
  GL_LIGHT_MODEL_COLOR_CONTROL = 0x81F8
  GL_SINGLE_COLOR = 0x81F9
  GL_SEPARATE_SPECULAR_COLOR = 0x81FA
  GL_TEXTURE_MIN_LOD = 0x813A
  GL_TEXTURE_MAX_LOD = 0x813B
  GL_TEXTURE_BASE_LEVEL = 0x813C
  GL_TEXTURE_MAX_LEVEL = 0x813D
  GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12
  GL_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13
  GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22
  GL_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23
  GL_ALIASED_POINT_SIZE_RANGE = 0x846D
  GL_ALIASED_LINE_WIDTH_RANGE = 0x846E
  GL_PACK_SKIP_IMAGES = 0x806B
  GL_PACK_IMAGE_HEIGHT = 0x806C
  GL_UNPACK_SKIP_IMAGES = 0x806D
  GL_UNPACK_IMAGE_HEIGHT = 0x806E
  GL_TEXTURE_3D = 0x806F
  GL_PROXY_TEXTURE_3D = 0x8070
  GL_TEXTURE_DEPTH = 0x8071
  GL_TEXTURE_WRAP_R = 0x8072
  GL_MAX_3D_TEXTURE_SIZE = 0x8073
  GL_TEXTURE_BINDING_3D = 0x806A
  attach_function :glDrawRangeElements, [ :uint, :uint, :uint, :int, :uint, :pointer ], :void
  attach_function :glTexImage3D, [ :uint, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glTexSubImage3D, [ :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glCopyTexSubImage3D, [ :uint, :int, :int, :int, :int, :int, :int, :int, :int ], :void
  callback(:PFNGLDRAWRANGEELEMENTSPROC, [ :uint, :uint, :uint, :int, :uint, :pointer ], :void)
  callback(:PFNGLTEXIMAGE3DPROC, [ :uint, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void)
  callback(:PFNGLTEXSUBIMAGE3DPROC, [ :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer ], :void)
  callback(:PFNGLCOPYTEXSUBIMAGE3DPROC, [ :uint, :int, :int, :int, :int, :int, :int, :int, :int ], :void)
  GL_CONSTANT_COLOR = 0x8001
  GL_ONE_MINUS_CONSTANT_COLOR = 0x8002
  GL_CONSTANT_ALPHA = 0x8003
  GL_ONE_MINUS_CONSTANT_ALPHA = 0x8004
  GL_COLOR_TABLE = 0x80D0
  GL_POST_CONVOLUTION_COLOR_TABLE = 0x80D1
  GL_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2
  GL_PROXY_COLOR_TABLE = 0x80D3
  GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4
  GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5
  GL_COLOR_TABLE_SCALE = 0x80D6
  GL_COLOR_TABLE_BIAS = 0x80D7
  GL_COLOR_TABLE_FORMAT = 0x80D8
  GL_COLOR_TABLE_WIDTH = 0x80D9
  GL_COLOR_TABLE_RED_SIZE = 0x80DA
  GL_COLOR_TABLE_GREEN_SIZE = 0x80DB
  GL_COLOR_TABLE_BLUE_SIZE = 0x80DC
  GL_COLOR_TABLE_ALPHA_SIZE = 0x80DD
  GL_COLOR_TABLE_LUMINANCE_SIZE = 0x80DE
  GL_COLOR_TABLE_INTENSITY_SIZE = 0x80DF
  GL_CONVOLUTION_1D = 0x8010
  GL_CONVOLUTION_2D = 0x8011
  GL_SEPARABLE_2D = 0x8012
  GL_CONVOLUTION_BORDER_MODE = 0x8013
  GL_CONVOLUTION_FILTER_SCALE = 0x8014
  GL_CONVOLUTION_FILTER_BIAS = 0x8015
  GL_REDUCE = 0x8016
  GL_CONVOLUTION_FORMAT = 0x8017
  GL_CONVOLUTION_WIDTH = 0x8018
  GL_CONVOLUTION_HEIGHT = 0x8019
  GL_MAX_CONVOLUTION_WIDTH = 0x801A
  GL_MAX_CONVOLUTION_HEIGHT = 0x801B
  GL_POST_CONVOLUTION_RED_SCALE = 0x801C
  GL_POST_CONVOLUTION_GREEN_SCALE = 0x801D
  GL_POST_CONVOLUTION_BLUE_SCALE = 0x801E
  GL_POST_CONVOLUTION_ALPHA_SCALE = 0x801F
  GL_POST_CONVOLUTION_RED_BIAS = 0x8020
  GL_POST_CONVOLUTION_GREEN_BIAS = 0x8021
  GL_POST_CONVOLUTION_BLUE_BIAS = 0x8022
  GL_POST_CONVOLUTION_ALPHA_BIAS = 0x8023
  GL_CONSTANT_BORDER = 0x8151
  GL_REPLICATE_BORDER = 0x8153
  GL_CONVOLUTION_BORDER_COLOR = 0x8154
  GL_COLOR_MATRIX = 0x80B1
  GL_COLOR_MATRIX_STACK_DEPTH = 0x80B2
  GL_MAX_COLOR_MATRIX_STACK_DEPTH = 0x80B3
  GL_POST_COLOR_MATRIX_RED_SCALE = 0x80B4
  GL_POST_COLOR_MATRIX_GREEN_SCALE = 0x80B5
  GL_POST_COLOR_MATRIX_BLUE_SCALE = 0x80B6
  GL_POST_COLOR_MATRIX_ALPHA_SCALE = 0x80B7
  GL_POST_COLOR_MATRIX_RED_BIAS = 0x80B8
  GL_POST_COLOR_MATRIX_GREEN_BIAS = 0x80B9
  GL_POST_COLOR_MATRIX_BLUE_BIAS = 0x80BA
  GL_POST_COLOR_MATRIX_ALPHA_BIAS = 0x80BB
  GL_HISTOGRAM = 0x8024
  GL_PROXY_HISTOGRAM = 0x8025
  GL_HISTOGRAM_WIDTH = 0x8026
  GL_HISTOGRAM_FORMAT = 0x8027
  GL_HISTOGRAM_RED_SIZE = 0x8028
  GL_HISTOGRAM_GREEN_SIZE = 0x8029
  GL_HISTOGRAM_BLUE_SIZE = 0x802A
  GL_HISTOGRAM_ALPHA_SIZE = 0x802B
  GL_HISTOGRAM_LUMINANCE_SIZE = 0x802C
  GL_HISTOGRAM_SINK = 0x802D
  GL_MINMAX = 0x802E
  GL_MINMAX_FORMAT = 0x802F
  GL_MINMAX_SINK = 0x8030
  GL_TABLE_TOO_LARGE = 0x8031
  GL_BLEND_EQUATION = 0x8009
  GL_MIN = 0x8007
  GL_MAX = 0x8008
  GL_FUNC_ADD = 0x8006
  GL_FUNC_SUBTRACT = 0x800A
  GL_FUNC_REVERSE_SUBTRACT = 0x800B
  GL_BLEND_COLOR = 0x8005
  attach_function :glColorTable, [ :uint, :uint, :int, :uint, :uint, :pointer ], :void
  attach_function :glColorSubTable, [ :uint, :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glColorTableParameteriv, [ :uint, :uint, :pointer ], :void
  attach_function :glColorTableParameterfv, [ :uint, :uint, :pointer ], :void
  attach_function :glCopyColorSubTable, [ :uint, :int, :int, :int, :int ], :void
  attach_function :glCopyColorTable, [ :uint, :uint, :int, :int, :int ], :void
  attach_function :glGetColorTable, [ :uint, :uint, :uint, :pointer ], :void
  attach_function :glGetColorTableParameterfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetColorTableParameteriv, [ :uint, :uint, :pointer ], :void
  attach_function :glBlendEquation, [ :uint ], :void
  attach_function :glBlendColor, [ :float, :float, :float, :float ], :void
  attach_function :glHistogram, [ :uint, :int, :uint, :uchar ], :void
  attach_function :glResetHistogram, [ :uint ], :void
  attach_function :glGetHistogram, [ :uint, :uchar, :uint, :uint, :pointer ], :void
  attach_function :glGetHistogramParameterfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetHistogramParameteriv, [ :uint, :uint, :pointer ], :void
  attach_function :glMinmax, [ :uint, :uint, :uchar ], :void
  attach_function :glResetMinmax, [ :uint ], :void
  attach_function :glGetMinmax, [ :uint, :uchar, :uint, :uint, :pointer ], :void
  attach_function :glGetMinmaxParameterfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetMinmaxParameteriv, [ :uint, :uint, :pointer ], :void
  attach_function :glConvolutionFilter1D, [ :uint, :uint, :int, :uint, :uint, :pointer ], :void
  attach_function :glConvolutionFilter2D, [ :uint, :uint, :int, :int, :uint, :uint, :pointer ], :void
  attach_function :glConvolutionParameterf, [ :uint, :uint, :float ], :void
  attach_function :glConvolutionParameterfv, [ :uint, :uint, :pointer ], :void
  attach_function :glConvolutionParameteri, [ :uint, :uint, :int ], :void
  attach_function :glConvolutionParameteriv, [ :uint, :uint, :pointer ], :void
  attach_function :glCopyConvolutionFilter1D, [ :uint, :uint, :int, :int, :int ], :void
  attach_function :glCopyConvolutionFilter2D, [ :uint, :uint, :int, :int, :int, :int ], :void
  attach_function :glGetConvolutionFilter, [ :uint, :uint, :uint, :pointer ], :void
  attach_function :glGetConvolutionParameterfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetConvolutionParameteriv, [ :uint, :uint, :pointer ], :void
  attach_function :glSeparableFilter2D, [ :uint, :uint, :int, :int, :uint, :uint, :pointer, :pointer ], :void
  attach_function :glGetSeparableFilter, [ :uint, :uint, :uint, :pointer, :pointer, :pointer ], :void
  callback(:PFNGLBLENDCOLORPROC, [ :float, :float, :float, :float ], :void)
  callback(:PFNGLBLENDEQUATIONPROC, [ :uint ], :void)
  callback(:PFNGLCOLORTABLEPROC, [ :uint, :uint, :int, :uint, :uint, :pointer ], :void)
  callback(:PFNGLCOLORTABLEPARAMETERFVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLCOLORTABLEPARAMETERIVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLCOPYCOLORTABLEPROC, [ :uint, :uint, :int, :int, :int ], :void)
  callback(:PFNGLGETCOLORTABLEPROC, [ :uint, :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETCOLORTABLEPARAMETERFVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETCOLORTABLEPARAMETERIVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLCOLORSUBTABLEPROC, [ :uint, :int, :int, :uint, :uint, :pointer ], :void)
  callback(:PFNGLCOPYCOLORSUBTABLEPROC, [ :uint, :int, :int, :int, :int ], :void)
  callback(:PFNGLCONVOLUTIONFILTER1DPROC, [ :uint, :uint, :int, :uint, :uint, :pointer ], :void)
  callback(:PFNGLCONVOLUTIONFILTER2DPROC, [ :uint, :uint, :int, :int, :uint, :uint, :pointer ], :void)
  callback(:PFNGLCONVOLUTIONPARAMETERFPROC, [ :uint, :uint, :float ], :void)
  callback(:PFNGLCONVOLUTIONPARAMETERFVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLCONVOLUTIONPARAMETERIPROC, [ :uint, :uint, :int ], :void)
  callback(:PFNGLCONVOLUTIONPARAMETERIVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLCOPYCONVOLUTIONFILTER1DPROC, [ :uint, :uint, :int, :int, :int ], :void)
  callback(:PFNGLCOPYCONVOLUTIONFILTER2DPROC, [ :uint, :uint, :int, :int, :int, :int ], :void)
  callback(:PFNGLGETCONVOLUTIONFILTERPROC, [ :uint, :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETCONVOLUTIONPARAMETERFVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETCONVOLUTIONPARAMETERIVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETSEPARABLEFILTERPROC, [ :uint, :uint, :uint, :pointer, :pointer, :pointer ], :void)
  callback(:PFNGLSEPARABLEFILTER2DPROC, [ :uint, :uint, :int, :int, :uint, :uint, :pointer, :pointer ], :void)
  callback(:PFNGLGETHISTOGRAMPROC, [ :uint, :uchar, :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETHISTOGRAMPARAMETERFVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETHISTOGRAMPARAMETERIVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETMINMAXPROC, [ :uint, :uchar, :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETMINMAXPARAMETERFVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETMINMAXPARAMETERIVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLHISTOGRAMPROC, [ :uint, :int, :uint, :uchar ], :void)
  callback(:PFNGLMINMAXPROC, [ :uint, :uint, :uchar ], :void)
  callback(:PFNGLRESETHISTOGRAMPROC, [ :uint ], :void)
  callback(:PFNGLRESETMINMAXPROC, [ :uint ], :void)
  GL_TEXTURE0 = 0x84C0
  GL_TEXTURE1 = 0x84C1
  GL_TEXTURE2 = 0x84C2
  GL_TEXTURE3 = 0x84C3
  GL_TEXTURE4 = 0x84C4
  GL_TEXTURE5 = 0x84C5
  GL_TEXTURE6 = 0x84C6
  GL_TEXTURE7 = 0x84C7
  GL_TEXTURE8 = 0x84C8
  GL_TEXTURE9 = 0x84C9
  GL_TEXTURE10 = 0x84CA
  GL_TEXTURE11 = 0x84CB
  GL_TEXTURE12 = 0x84CC
  GL_TEXTURE13 = 0x84CD
  GL_TEXTURE14 = 0x84CE
  GL_TEXTURE15 = 0x84CF
  GL_TEXTURE16 = 0x84D0
  GL_TEXTURE17 = 0x84D1
  GL_TEXTURE18 = 0x84D2
  GL_TEXTURE19 = 0x84D3
  GL_TEXTURE20 = 0x84D4
  GL_TEXTURE21 = 0x84D5
  GL_TEXTURE22 = 0x84D6
  GL_TEXTURE23 = 0x84D7
  GL_TEXTURE24 = 0x84D8
  GL_TEXTURE25 = 0x84D9
  GL_TEXTURE26 = 0x84DA
  GL_TEXTURE27 = 0x84DB
  GL_TEXTURE28 = 0x84DC
  GL_TEXTURE29 = 0x84DD
  GL_TEXTURE30 = 0x84DE
  GL_TEXTURE31 = 0x84DF
  GL_ACTIVE_TEXTURE = 0x84E0
  GL_CLIENT_ACTIVE_TEXTURE = 0x84E1
  GL_MAX_TEXTURE_UNITS = 0x84E2
  GL_NORMAL_MAP = 0x8511
  GL_REFLECTION_MAP = 0x8512
  GL_TEXTURE_CUBE_MAP = 0x8513
  GL_TEXTURE_BINDING_CUBE_MAP = 0x8514
  GL_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515
  GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516
  GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517
  GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518
  GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519
  GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A
  GL_PROXY_TEXTURE_CUBE_MAP = 0x851B
  GL_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C
  GL_COMPRESSED_ALPHA = 0x84E9
  GL_COMPRESSED_LUMINANCE = 0x84EA
  GL_COMPRESSED_LUMINANCE_ALPHA = 0x84EB
  GL_COMPRESSED_INTENSITY = 0x84EC
  GL_COMPRESSED_RGB = 0x84ED
  GL_COMPRESSED_RGBA = 0x84EE
  GL_TEXTURE_COMPRESSION_HINT = 0x84EF
  GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0
  GL_TEXTURE_COMPRESSED = 0x86A1
  GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2
  GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3
  GL_MULTISAMPLE = 0x809D
  GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E
  GL_SAMPLE_ALPHA_TO_ONE = 0x809F
  GL_SAMPLE_COVERAGE = 0x80A0
  GL_SAMPLE_BUFFERS = 0x80A8
  GL_SAMPLES = 0x80A9
  GL_SAMPLE_COVERAGE_VALUE = 0x80AA
  GL_SAMPLE_COVERAGE_INVERT = 0x80AB
  GL_MULTISAMPLE_BIT = 0x20000000
  GL_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3
  GL_TRANSPOSE_PROJECTION_MATRIX = 0x84E4
  GL_TRANSPOSE_TEXTURE_MATRIX = 0x84E5
  GL_TRANSPOSE_COLOR_MATRIX = 0x84E6
  GL_COMBINE = 0x8570
  GL_COMBINE_RGB = 0x8571
  GL_COMBINE_ALPHA = 0x8572
  GL_SOURCE0_RGB = 0x8580
  GL_SOURCE1_RGB = 0x8581
  GL_SOURCE2_RGB = 0x8582
  GL_SOURCE0_ALPHA = 0x8588
  GL_SOURCE1_ALPHA = 0x8589
  GL_SOURCE2_ALPHA = 0x858A
  GL_OPERAND0_RGB = 0x8590
  GL_OPERAND1_RGB = 0x8591
  GL_OPERAND2_RGB = 0x8592
  GL_OPERAND0_ALPHA = 0x8598
  GL_OPERAND1_ALPHA = 0x8599
  GL_OPERAND2_ALPHA = 0x859A
  GL_RGB_SCALE = 0x8573
  GL_ADD_SIGNED = 0x8574
  GL_INTERPOLATE = 0x8575
  GL_SUBTRACT = 0x84E7
  GL_CONSTANT = 0x8576
  GL_PRIMARY_COLOR = 0x8577
  GL_PREVIOUS = 0x8578
  GL_DOT3_RGB = 0x86AE
  GL_DOT3_RGBA = 0x86AF
  GL_CLAMP_TO_BORDER = 0x812D
  attach_function :glActiveTexture, [ :uint ], :void
  attach_function :glClientActiveTexture, [ :uint ], :void
  attach_function :glCompressedTexImage1D, [ :uint, :int, :uint, :int, :int, :int, :pointer ], :void
  attach_function :glCompressedTexImage2D, [ :uint, :int, :uint, :int, :int, :int, :int, :pointer ], :void
  attach_function :glCompressedTexImage3D, [ :uint, :int, :uint, :int, :int, :int, :int, :int, :pointer ], :void
  attach_function :glCompressedTexSubImage1D, [ :uint, :int, :int, :int, :uint, :int, :pointer ], :void
  attach_function :glCompressedTexSubImage2D, [ :uint, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void
  attach_function :glCompressedTexSubImage3D, [ :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void
  attach_function :glGetCompressedTexImage, [ :uint, :int, :pointer ], :void
  attach_function :glMultiTexCoord1d, [ :uint, :double ], :void
  attach_function :glMultiTexCoord1dv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord1f, [ :uint, :float ], :void
  attach_function :glMultiTexCoord1fv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord1i, [ :uint, :int ], :void
  attach_function :glMultiTexCoord1iv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord1s, [ :uint, :short ], :void
  attach_function :glMultiTexCoord1sv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord2d, [ :uint, :double, :double ], :void
  attach_function :glMultiTexCoord2dv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord2f, [ :uint, :float, :float ], :void
  attach_function :glMultiTexCoord2fv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord2i, [ :uint, :int, :int ], :void
  attach_function :glMultiTexCoord2iv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord2s, [ :uint, :short, :short ], :void
  attach_function :glMultiTexCoord2sv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord3d, [ :uint, :double, :double, :double ], :void
  attach_function :glMultiTexCoord3dv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord3f, [ :uint, :float, :float, :float ], :void
  attach_function :glMultiTexCoord3fv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord3i, [ :uint, :int, :int, :int ], :void
  attach_function :glMultiTexCoord3iv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord3s, [ :uint, :short, :short, :short ], :void
  attach_function :glMultiTexCoord3sv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord4d, [ :uint, :double, :double, :double, :double ], :void
  attach_function :glMultiTexCoord4dv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord4f, [ :uint, :float, :float, :float, :float ], :void
  attach_function :glMultiTexCoord4fv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord4i, [ :uint, :int, :int, :int, :int ], :void
  attach_function :glMultiTexCoord4iv, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord4s, [ :uint, :short, :short, :short, :short ], :void
  attach_function :glMultiTexCoord4sv, [ :uint, :pointer ], :void
  attach_function :glSampleCoverage, [ :float, :uchar ], :void
  callback(:PFNGLACTIVETEXTUREPROC, [ :uint ], :void)
  callback(:PFNGLCLIENTACTIVETEXTUREPROC, [ :uint ], :void)
  callback(:PFNGLMULTITEXCOORD1DPROC, [ :uint, :double ], :void)
  callback(:PFNGLMULTITEXCOORD1DVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD1FPROC, [ :uint, :float ], :void)
  callback(:PFNGLMULTITEXCOORD1FVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD1IPROC, [ :uint, :int ], :void)
  callback(:PFNGLMULTITEXCOORD1IVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD1SPROC, [ :uint, :short ], :void)
  callback(:PFNGLMULTITEXCOORD1SVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD2DPROC, [ :uint, :double, :double ], :void)
  callback(:PFNGLMULTITEXCOORD2DVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD2FPROC, [ :uint, :float, :float ], :void)
  callback(:PFNGLMULTITEXCOORD2FVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD2IPROC, [ :uint, :int, :int ], :void)
  callback(:PFNGLMULTITEXCOORD2IVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD2SPROC, [ :uint, :short, :short ], :void)
  callback(:PFNGLMULTITEXCOORD2SVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD3DPROC, [ :uint, :double, :double, :double ], :void)
  callback(:PFNGLMULTITEXCOORD3DVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD3FPROC, [ :uint, :float, :float, :float ], :void)
  callback(:PFNGLMULTITEXCOORD3FVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD3IPROC, [ :uint, :int, :int, :int ], :void)
  callback(:PFNGLMULTITEXCOORD3IVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD3SPROC, [ :uint, :short, :short, :short ], :void)
  callback(:PFNGLMULTITEXCOORD3SVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD4DPROC, [ :uint, :double, :double, :double, :double ], :void)
  callback(:PFNGLMULTITEXCOORD4DVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD4FPROC, [ :uint, :float, :float, :float, :float ], :void)
  callback(:PFNGLMULTITEXCOORD4FVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD4IPROC, [ :uint, :int, :int, :int, :int ], :void)
  callback(:PFNGLMULTITEXCOORD4IVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD4SPROC, [ :uint, :short, :short, :short, :short ], :void)
  callback(:PFNGLMULTITEXCOORD4SVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLLOADTRANSPOSEMATRIXFPROC, [ :pointer ], :void)
  callback(:PFNGLLOADTRANSPOSEMATRIXDPROC, [ :pointer ], :void)
  callback(:PFNGLMULTTRANSPOSEMATRIXFPROC, [ :pointer ], :void)
  callback(:PFNGLMULTTRANSPOSEMATRIXDPROC, [ :pointer ], :void)
  callback(:PFNGLSAMPLECOVERAGEPROC, [ :float, :uchar ], :void)
  callback(:PFNGLCOMPRESSEDTEXIMAGE3DPROC, [ :uint, :int, :uint, :int, :int, :int, :int, :int, :pointer ], :void)
  callback(:PFNGLCOMPRESSEDTEXIMAGE2DPROC, [ :uint, :int, :uint, :int, :int, :int, :int, :pointer ], :void)
  callback(:PFNGLCOMPRESSEDTEXIMAGE1DPROC, [ :uint, :int, :uint, :int, :int, :int, :pointer ], :void)
  callback(:PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC, [ :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void)
  callback(:PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC, [ :uint, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void)
  callback(:PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC, [ :uint, :int, :int, :int, :uint, :int, :pointer ], :void)
  callback(:PFNGLGETCOMPRESSEDTEXIMAGEPROC, [ :uint, :int, :pointer ], :void)
  GL_ARB_multitexture = 1
  GL_TEXTURE0_ARB = 0x84C0
  GL_TEXTURE1_ARB = 0x84C1
  GL_TEXTURE2_ARB = 0x84C2
  GL_TEXTURE3_ARB = 0x84C3
  GL_TEXTURE4_ARB = 0x84C4
  GL_TEXTURE5_ARB = 0x84C5
  GL_TEXTURE6_ARB = 0x84C6
  GL_TEXTURE7_ARB = 0x84C7
  GL_TEXTURE8_ARB = 0x84C8
  GL_TEXTURE9_ARB = 0x84C9
  GL_TEXTURE10_ARB = 0x84CA
  GL_TEXTURE11_ARB = 0x84CB
  GL_TEXTURE12_ARB = 0x84CC
  GL_TEXTURE13_ARB = 0x84CD
  GL_TEXTURE14_ARB = 0x84CE
  GL_TEXTURE15_ARB = 0x84CF
  GL_TEXTURE16_ARB = 0x84D0
  GL_TEXTURE17_ARB = 0x84D1
  GL_TEXTURE18_ARB = 0x84D2
  GL_TEXTURE19_ARB = 0x84D3
  GL_TEXTURE20_ARB = 0x84D4
  GL_TEXTURE21_ARB = 0x84D5
  GL_TEXTURE22_ARB = 0x84D6
  GL_TEXTURE23_ARB = 0x84D7
  GL_TEXTURE24_ARB = 0x84D8
  GL_TEXTURE25_ARB = 0x84D9
  GL_TEXTURE26_ARB = 0x84DA
  GL_TEXTURE27_ARB = 0x84DB
  GL_TEXTURE28_ARB = 0x84DC
  GL_TEXTURE29_ARB = 0x84DD
  GL_TEXTURE30_ARB = 0x84DE
  GL_TEXTURE31_ARB = 0x84DF
  GL_ACTIVE_TEXTURE_ARB = 0x84E0
  GL_CLIENT_ACTIVE_TEXTURE_ARB = 0x84E1
  GL_MAX_TEXTURE_UNITS_ARB = 0x84E2
  attach_function :glActiveTextureARB, [ :uint ], :void
  attach_function :glClientActiveTextureARB, [ :uint ], :void
  attach_function :glMultiTexCoord1dARB, [ :uint, :double ], :void
  attach_function :glMultiTexCoord1dvARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord1fARB, [ :uint, :float ], :void
  attach_function :glMultiTexCoord1fvARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord1iARB, [ :uint, :int ], :void
  attach_function :glMultiTexCoord1ivARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord1sARB, [ :uint, :short ], :void
  attach_function :glMultiTexCoord1svARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord2dARB, [ :uint, :double, :double ], :void
  attach_function :glMultiTexCoord2dvARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord2fARB, [ :uint, :float, :float ], :void
  attach_function :glMultiTexCoord2fvARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord2iARB, [ :uint, :int, :int ], :void
  attach_function :glMultiTexCoord2ivARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord2sARB, [ :uint, :short, :short ], :void
  attach_function :glMultiTexCoord2svARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord3dARB, [ :uint, :double, :double, :double ], :void
  attach_function :glMultiTexCoord3dvARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord3fARB, [ :uint, :float, :float, :float ], :void
  attach_function :glMultiTexCoord3fvARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord3iARB, [ :uint, :int, :int, :int ], :void
  attach_function :glMultiTexCoord3ivARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord3sARB, [ :uint, :short, :short, :short ], :void
  attach_function :glMultiTexCoord3svARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord4dARB, [ :uint, :double, :double, :double, :double ], :void
  attach_function :glMultiTexCoord4dvARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord4fARB, [ :uint, :float, :float, :float, :float ], :void
  attach_function :glMultiTexCoord4fvARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord4iARB, [ :uint, :int, :int, :int, :int ], :void
  attach_function :glMultiTexCoord4ivARB, [ :uint, :pointer ], :void
  attach_function :glMultiTexCoord4sARB, [ :uint, :short, :short, :short, :short ], :void
  attach_function :glMultiTexCoord4svARB, [ :uint, :pointer ], :void
  callback(:PFNGLACTIVETEXTUREARBPROC, [ :uint ], :void)
  callback(:PFNGLCLIENTACTIVETEXTUREARBPROC, [ :uint ], :void)
  callback(:PFNGLMULTITEXCOORD1DARBPROC, [ :uint, :double ], :void)
  callback(:PFNGLMULTITEXCOORD1DVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD1FARBPROC, [ :uint, :float ], :void)
  callback(:PFNGLMULTITEXCOORD1FVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD1IARBPROC, [ :uint, :int ], :void)
  callback(:PFNGLMULTITEXCOORD1IVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD1SARBPROC, [ :uint, :short ], :void)
  callback(:PFNGLMULTITEXCOORD1SVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD2DARBPROC, [ :uint, :double, :double ], :void)
  callback(:PFNGLMULTITEXCOORD2DVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD2FARBPROC, [ :uint, :float, :float ], :void)
  callback(:PFNGLMULTITEXCOORD2FVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD2IARBPROC, [ :uint, :int, :int ], :void)
  callback(:PFNGLMULTITEXCOORD2IVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD2SARBPROC, [ :uint, :short, :short ], :void)
  callback(:PFNGLMULTITEXCOORD2SVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD3DARBPROC, [ :uint, :double, :double, :double ], :void)
  callback(:PFNGLMULTITEXCOORD3DVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD3FARBPROC, [ :uint, :float, :float, :float ], :void)
  callback(:PFNGLMULTITEXCOORD3FVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD3IARBPROC, [ :uint, :int, :int, :int ], :void)
  callback(:PFNGLMULTITEXCOORD3IVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD3SARBPROC, [ :uint, :short, :short, :short ], :void)
  callback(:PFNGLMULTITEXCOORD3SVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD4DARBPROC, [ :uint, :double, :double, :double, :double ], :void)
  callback(:PFNGLMULTITEXCOORD4DVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD4FARBPROC, [ :uint, :float, :float, :float, :float ], :void)
  callback(:PFNGLMULTITEXCOORD4FVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD4IARBPROC, [ :uint, :int, :int, :int, :int ], :void)
  callback(:PFNGLMULTITEXCOORD4IVARBPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLMULTITEXCOORD4SARBPROC, [ :uint, :short, :short, :short, :short ], :void)
  callback(:PFNGLMULTITEXCOORD4SVARBPROC, [ :uint, :pointer ], :void)
  GL_MESA_packed_depth_stencil = 1
  GL_DEPTH_STENCIL_MESA = 0x8750
  GL_UNSIGNED_INT_24_8_MESA = 0x8751
  GL_UNSIGNED_INT_8_24_REV_MESA = 0x8752
  GL_UNSIGNED_SHORT_15_1_MESA = 0x8753
  GL_UNSIGNED_SHORT_1_15_REV_MESA = 0x8754
  GL_MESA_texture_array = 1
  GL_TEXTURE_1D_ARRAY_EXT = 0x8C18
  GL_PROXY_TEXTURE_1D_ARRAY_EXT = 0x8C19
  GL_TEXTURE_2D_ARRAY_EXT = 0x8C1A
  GL_PROXY_TEXTURE_2D_ARRAY_EXT = 0x8C1B
  GL_TEXTURE_BINDING_1D_ARRAY_EXT = 0x8C1C
  GL_TEXTURE_BINDING_2D_ARRAY_EXT = 0x8C1D
  GL_MAX_ARRAY_TEXTURE_LAYERS_EXT = 0x88FF
  GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = 0x8CD4

end
