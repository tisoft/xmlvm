#include "xmlvm.h"

#include "org_xmlvm_iphone_gl_GL.h"

#define XMLVM_CURRENT_CLASS_NAME GL
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_gl_GL

__TIB_DEFINITION_org_xmlvm_iphone_gl_GL __TIB_org_xmlvm_iphone_gl_GL = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_gl_GL, // classInitializer
    "org.xmlvm.iphone.gl.GL", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_gl_GL), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_GL;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_GL_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_GL_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_GL_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_COMPLETE_OES;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERBUFFER_OES;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_OES;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ATTACHMENT0_OES;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BUFFER_BIT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BUFFER_BIT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_BUFFER_BIT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FALSE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TRUE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POINTS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINES;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_LOOP;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_STRIP;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLES;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_STRIP;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_FAN;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NEVER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LESS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_EQUAL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LEQUAL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_GREATER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NOTEQUAL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_GEQUAL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ALWAYS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ZERO;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_COLOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_COLOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DST_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DST_COLOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_COLOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA_SATURATE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE0;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE1;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE2;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE3;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE4;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE5;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_BACK;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_AND_BACK;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHTING;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_2D;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_LOGIC_OP;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DITHER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_TEST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_TEST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_MATERIAL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMALIZE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_RESCALE_NORMAL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MULTISAMPLE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_COVERAGE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_ONE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NO_ERROR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_ENUM;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_VALUE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_OPERATION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_OVERFLOW;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_UNDERFLOW;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OUT_OF_MEMORY;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_EXP;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_EXP2;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_DENSITY;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_START;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_END;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_MODE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_COLOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CW;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CCW;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_COLOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_NORMAL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_TEXTURE_COORDS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MIN;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MAX;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_FADE_THRESHOLD_SIZE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_DISTANCE_ATTENUATION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_POINT_SIZE_RANGE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_WIDTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_LINE_WIDTH_RANGE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_POINT_SIZE_RANGE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_LINE_WIDTH_RANGE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE_MODE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_FACE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SHADE_MODEL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_RANGE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_WRITEMASK;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_CLEAR_VALUE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_FUNC;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_CLEAR_VALUE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FUNC;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_VALUE_MASK;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FAIL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_FAIL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_PASS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_REF;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_WRITEMASK;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MATRIX_MODE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_VIEWPORT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_STACK_DEPTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_STACK_DEPTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_STACK_DEPTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_MATRIX;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_MATRIX;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MATRIX;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_FUNC;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_REF;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_DST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_SRC;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LOGIC_OP_MODE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_BOX;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_TEST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_CLEAR_VALUE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_WRITEMASK;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_LIGHTS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_CLIP_PLANES;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_SIZE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_MODELVIEW_STACK_DEPTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_PROJECTION_STACK_DEPTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_STACK_DEPTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_VIEWPORT_DIMS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_UNITS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SUBPIXEL_BITS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_RED_BITS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_GREEN_BITS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_BLUE_BITS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_BITS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BITS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BITS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_UNITS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FILL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FACTOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_BINDING_2D;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_SIZE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_TYPE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_STRIDE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_TYPE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_STRIDE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_SIZE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_TYPE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_STRIDE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_SIZE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_TYPE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_STRIDE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_POINTER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_POINTER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_POINTER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_POINTER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_BUFFERS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLES;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_VALUE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_INVERT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NUM_COMPRESSED_TEXTURE_FORMATS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COMPRESSED_TEXTURE_FORMATS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DONT_CARE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FASTEST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NICEST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_PERSPECTIVE_CORRECTION_HINT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH_HINT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH_HINT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_HINT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP_HINT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_AMBIENT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_TWO_SIDE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DIFFUSE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SPECULAR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_POSITION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_DIRECTION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_EXPONENT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_CUTOFF;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT_ATTENUATION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_ATTENUATION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_QUADRATIC_ATTENUATION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_BYTE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_BYTE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SHORT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FLOAT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FIXED;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CLEAR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_AND;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_AND_REVERSE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COPY;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_AND_INVERTED;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NOOP;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_XOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_EQUIV;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_INVERT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OR_REVERSE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COPY_INVERTED;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OR_INVERTED;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NAND;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SET;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_EMISSION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SHININESS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT_AND_DIFFUSE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_RGB;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_RGBA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_UNPACK_ALIGNMENT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_PACK_ALIGNMENT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_4_4_4_4;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_5_5_1;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_6_5;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_FLAT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_KEEP;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_REPLACE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_INCR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DECR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_VENDOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_VERSION;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_EXTENSIONS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_MODULATE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DECAL;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ADD;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_MODE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_COLOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_NEAREST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_NEAREST;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_LINEAR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_LINEAR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MAG_FILTER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MIN_FILTER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_S;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_T;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE0;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE1;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE2;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE3;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE4;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE5;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE6;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE7;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE8;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE9;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE10;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE11;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE12;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE13;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE14;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE15;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE16;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE17;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE18;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE19;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE20;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE21;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE22;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE23;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE24;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE25;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE26;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE27;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE28;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE29;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE30;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE31;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ACTIVE_TEXTURE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIENT_ACTIVE_TEXTURE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_REPEAT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CLAMP_TO_EDGE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT0;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT1;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT2;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT3;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT4;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT5;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT6;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT7;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER_BINDING;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER_BINDING;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_BUFFER_BINDING;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_BUFFER_BINDING;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_BUFFER_BINDING;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_STATIC_DRAW;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DYNAMIC_DRAW;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_SIZE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_USAGE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SUBTRACT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_RGB;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_RGB_SCALE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ADD_SIGNED;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_INTERPOLATE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_PRIMARY_COLOR;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_PREVIOUS;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_RGB;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_RGB;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_RGB;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_SCALE;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_RGB;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_RGB;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_RGB;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_ALPHA;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGB;
static JAVA_INT _STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGBA;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"GL_FRAMEBUFFER_COMPLETE_OES",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_COMPLETE_OES,
    "",
    JAVA_NULL},
    {"GL_RENDERBUFFER_OES",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERBUFFER_OES,
    "",
    JAVA_NULL},
    {"GL_FRAMEBUFFER_OES",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_OES,
    "",
    JAVA_NULL},
    {"GL_COLOR_ATTACHMENT0_OES",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ATTACHMENT0_OES,
    "",
    JAVA_NULL},
    {"GL_DEPTH_BUFFER_BIT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BUFFER_BIT,
    "",
    JAVA_NULL},
    {"GL_STENCIL_BUFFER_BIT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BUFFER_BIT,
    "",
    JAVA_NULL},
    {"GL_COLOR_BUFFER_BIT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_BUFFER_BIT,
    "",
    JAVA_NULL},
    {"GL_FALSE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FALSE,
    "",
    JAVA_NULL},
    {"GL_TRUE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TRUE,
    "",
    JAVA_NULL},
    {"GL_POINTS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POINTS,
    "",
    JAVA_NULL},
    {"GL_LINES",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINES,
    "",
    JAVA_NULL},
    {"GL_LINE_LOOP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_LOOP,
    "",
    JAVA_NULL},
    {"GL_LINE_STRIP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_STRIP,
    "",
    JAVA_NULL},
    {"GL_TRIANGLES",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLES,
    "",
    JAVA_NULL},
    {"GL_TRIANGLE_STRIP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_STRIP,
    "",
    JAVA_NULL},
    {"GL_TRIANGLE_FAN",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_FAN,
    "",
    JAVA_NULL},
    {"GL_NEVER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NEVER,
    "",
    JAVA_NULL},
    {"GL_LESS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LESS,
    "",
    JAVA_NULL},
    {"GL_EQUAL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_EQUAL,
    "",
    JAVA_NULL},
    {"GL_LEQUAL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LEQUAL,
    "",
    JAVA_NULL},
    {"GL_GREATER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_GREATER,
    "",
    JAVA_NULL},
    {"GL_NOTEQUAL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NOTEQUAL,
    "",
    JAVA_NULL},
    {"GL_GEQUAL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_GEQUAL,
    "",
    JAVA_NULL},
    {"GL_ALWAYS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ALWAYS,
    "",
    JAVA_NULL},
    {"GL_ZERO",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ZERO,
    "",
    JAVA_NULL},
    {"GL_ONE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ONE,
    "",
    JAVA_NULL},
    {"GL_SRC_COLOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_COLOR,
    "",
    JAVA_NULL},
    {"GL_ONE_MINUS_SRC_COLOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_COLOR,
    "",
    JAVA_NULL},
    {"GL_SRC_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA,
    "",
    JAVA_NULL},
    {"GL_ONE_MINUS_SRC_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_ALPHA,
    "",
    JAVA_NULL},
    {"GL_DST_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DST_ALPHA,
    "",
    JAVA_NULL},
    {"GL_ONE_MINUS_DST_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_ALPHA,
    "",
    JAVA_NULL},
    {"GL_DST_COLOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DST_COLOR,
    "",
    JAVA_NULL},
    {"GL_ONE_MINUS_DST_COLOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_COLOR,
    "",
    JAVA_NULL},
    {"GL_SRC_ALPHA_SATURATE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA_SATURATE,
    "",
    JAVA_NULL},
    {"GL_CLIP_PLANE0",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE0,
    "",
    JAVA_NULL},
    {"GL_CLIP_PLANE1",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE1,
    "",
    JAVA_NULL},
    {"GL_CLIP_PLANE2",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE2,
    "",
    JAVA_NULL},
    {"GL_CLIP_PLANE3",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE3,
    "",
    JAVA_NULL},
    {"GL_CLIP_PLANE4",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE4,
    "",
    JAVA_NULL},
    {"GL_CLIP_PLANE5",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE5,
    "",
    JAVA_NULL},
    {"GL_FRONT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT,
    "",
    JAVA_NULL},
    {"GL_BACK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_BACK,
    "",
    JAVA_NULL},
    {"GL_FRONT_AND_BACK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_AND_BACK,
    "",
    JAVA_NULL},
    {"GL_FOG",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FOG,
    "",
    JAVA_NULL},
    {"GL_LIGHTING",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHTING,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_2D",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_2D,
    "",
    JAVA_NULL},
    {"GL_CULL_FACE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE,
    "",
    JAVA_NULL},
    {"GL_ALPHA_TEST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST,
    "",
    JAVA_NULL},
    {"GL_BLEND",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND,
    "",
    JAVA_NULL},
    {"GL_COLOR_LOGIC_OP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_LOGIC_OP,
    "",
    JAVA_NULL},
    {"GL_DITHER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DITHER,
    "",
    JAVA_NULL},
    {"GL_STENCIL_TEST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_TEST,
    "",
    JAVA_NULL},
    {"GL_DEPTH_TEST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_TEST,
    "",
    JAVA_NULL},
    {"GL_POINT_SMOOTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH,
    "",
    JAVA_NULL},
    {"GL_LINE_SMOOTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH,
    "",
    JAVA_NULL},
    {"GL_COLOR_MATERIAL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_MATERIAL,
    "",
    JAVA_NULL},
    {"GL_NORMALIZE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NORMALIZE,
    "",
    JAVA_NULL},
    {"GL_RESCALE_NORMAL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_RESCALE_NORMAL,
    "",
    JAVA_NULL},
    {"GL_VERTEX_ARRAY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY,
    "",
    JAVA_NULL},
    {"GL_NORMAL_ARRAY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY,
    "",
    JAVA_NULL},
    {"GL_COLOR_ARRAY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_COORD_ARRAY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY,
    "",
    JAVA_NULL},
    {"GL_MULTISAMPLE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MULTISAMPLE,
    "",
    JAVA_NULL},
    {"GL_SAMPLE_ALPHA_TO_COVERAGE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_COVERAGE,
    "",
    JAVA_NULL},
    {"GL_SAMPLE_ALPHA_TO_ONE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_ONE,
    "",
    JAVA_NULL},
    {"GL_SAMPLE_COVERAGE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE,
    "",
    JAVA_NULL},
    {"GL_NO_ERROR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NO_ERROR,
    "",
    JAVA_NULL},
    {"GL_INVALID_ENUM",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_ENUM,
    "",
    JAVA_NULL},
    {"GL_INVALID_VALUE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_VALUE,
    "",
    JAVA_NULL},
    {"GL_INVALID_OPERATION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_OPERATION,
    "",
    JAVA_NULL},
    {"GL_STACK_OVERFLOW",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_OVERFLOW,
    "",
    JAVA_NULL},
    {"GL_STACK_UNDERFLOW",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_UNDERFLOW,
    "",
    JAVA_NULL},
    {"GL_OUT_OF_MEMORY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OUT_OF_MEMORY,
    "",
    JAVA_NULL},
    {"GL_EXP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_EXP,
    "",
    JAVA_NULL},
    {"GL_EXP2",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_EXP2,
    "",
    JAVA_NULL},
    {"GL_FOG_DENSITY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_DENSITY,
    "",
    JAVA_NULL},
    {"GL_FOG_START",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_START,
    "",
    JAVA_NULL},
    {"GL_FOG_END",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_END,
    "",
    JAVA_NULL},
    {"GL_FOG_MODE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_MODE,
    "",
    JAVA_NULL},
    {"GL_FOG_COLOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_COLOR,
    "",
    JAVA_NULL},
    {"GL_CW",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CW,
    "",
    JAVA_NULL},
    {"GL_CCW",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CCW,
    "",
    JAVA_NULL},
    {"GL_CURRENT_COLOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_COLOR,
    "",
    JAVA_NULL},
    {"GL_CURRENT_NORMAL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_NORMAL,
    "",
    JAVA_NULL},
    {"GL_CURRENT_TEXTURE_COORDS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_TEXTURE_COORDS,
    "",
    JAVA_NULL},
    {"GL_POINT_SIZE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE,
    "",
    JAVA_NULL},
    {"GL_POINT_SIZE_MIN",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MIN,
    "",
    JAVA_NULL},
    {"GL_POINT_SIZE_MAX",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MAX,
    "",
    JAVA_NULL},
    {"GL_POINT_FADE_THRESHOLD_SIZE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_FADE_THRESHOLD_SIZE,
    "",
    JAVA_NULL},
    {"GL_POINT_DISTANCE_ATTENUATION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_DISTANCE_ATTENUATION,
    "",
    JAVA_NULL},
    {"GL_SMOOTH_POINT_SIZE_RANGE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_POINT_SIZE_RANGE,
    "",
    JAVA_NULL},
    {"GL_LINE_WIDTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_WIDTH,
    "",
    JAVA_NULL},
    {"GL_SMOOTH_LINE_WIDTH_RANGE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_LINE_WIDTH_RANGE,
    "",
    JAVA_NULL},
    {"GL_ALIASED_POINT_SIZE_RANGE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_POINT_SIZE_RANGE,
    "",
    JAVA_NULL},
    {"GL_ALIASED_LINE_WIDTH_RANGE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_LINE_WIDTH_RANGE,
    "",
    JAVA_NULL},
    {"GL_CULL_FACE_MODE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE_MODE,
    "",
    JAVA_NULL},
    {"GL_FRONT_FACE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_FACE,
    "",
    JAVA_NULL},
    {"GL_SHADE_MODEL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SHADE_MODEL,
    "",
    JAVA_NULL},
    {"GL_DEPTH_RANGE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_RANGE,
    "",
    JAVA_NULL},
    {"GL_DEPTH_WRITEMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_WRITEMASK,
    "",
    JAVA_NULL},
    {"GL_DEPTH_CLEAR_VALUE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_CLEAR_VALUE,
    "",
    JAVA_NULL},
    {"GL_DEPTH_FUNC",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_FUNC,
    "",
    JAVA_NULL},
    {"GL_STENCIL_CLEAR_VALUE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_CLEAR_VALUE,
    "",
    JAVA_NULL},
    {"GL_STENCIL_FUNC",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FUNC,
    "",
    JAVA_NULL},
    {"GL_STENCIL_VALUE_MASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_VALUE_MASK,
    "",
    JAVA_NULL},
    {"GL_STENCIL_FAIL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FAIL,
    "",
    JAVA_NULL},
    {"GL_STENCIL_PASS_DEPTH_FAIL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_FAIL,
    "",
    JAVA_NULL},
    {"GL_STENCIL_PASS_DEPTH_PASS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_PASS,
    "",
    JAVA_NULL},
    {"GL_STENCIL_REF",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_REF,
    "",
    JAVA_NULL},
    {"GL_STENCIL_WRITEMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_WRITEMASK,
    "",
    JAVA_NULL},
    {"GL_MATRIX_MODE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MATRIX_MODE,
    "",
    JAVA_NULL},
    {"GL_VIEWPORT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_VIEWPORT,
    "",
    JAVA_NULL},
    {"GL_MODELVIEW_STACK_DEPTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_STACK_DEPTH,
    "",
    JAVA_NULL},
    {"GL_PROJECTION_STACK_DEPTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_STACK_DEPTH,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_STACK_DEPTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_STACK_DEPTH,
    "",
    JAVA_NULL},
    {"GL_MODELVIEW_MATRIX",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_MATRIX,
    "",
    JAVA_NULL},
    {"GL_PROJECTION_MATRIX",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_MATRIX,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_MATRIX",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MATRIX,
    "",
    JAVA_NULL},
    {"GL_ALPHA_TEST_FUNC",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_FUNC,
    "",
    JAVA_NULL},
    {"GL_ALPHA_TEST_REF",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_REF,
    "",
    JAVA_NULL},
    {"GL_BLEND_DST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_DST,
    "",
    JAVA_NULL},
    {"GL_BLEND_SRC",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_SRC,
    "",
    JAVA_NULL},
    {"GL_LOGIC_OP_MODE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LOGIC_OP_MODE,
    "",
    JAVA_NULL},
    {"GL_SCISSOR_BOX",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_BOX,
    "",
    JAVA_NULL},
    {"GL_SCISSOR_TEST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_TEST,
    "",
    JAVA_NULL},
    {"GL_COLOR_CLEAR_VALUE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_CLEAR_VALUE,
    "",
    JAVA_NULL},
    {"GL_COLOR_WRITEMASK",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_WRITEMASK,
    "",
    JAVA_NULL},
    {"GL_MAX_LIGHTS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_LIGHTS,
    "",
    JAVA_NULL},
    {"GL_MAX_CLIP_PLANES",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_CLIP_PLANES,
    "",
    JAVA_NULL},
    {"GL_MAX_TEXTURE_SIZE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_SIZE,
    "",
    JAVA_NULL},
    {"GL_MAX_MODELVIEW_STACK_DEPTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_MODELVIEW_STACK_DEPTH,
    "",
    JAVA_NULL},
    {"GL_MAX_PROJECTION_STACK_DEPTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_PROJECTION_STACK_DEPTH,
    "",
    JAVA_NULL},
    {"GL_MAX_TEXTURE_STACK_DEPTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_STACK_DEPTH,
    "",
    JAVA_NULL},
    {"GL_MAX_VIEWPORT_DIMS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_VIEWPORT_DIMS,
    "",
    JAVA_NULL},
    {"GL_MAX_TEXTURE_UNITS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_UNITS,
    "",
    JAVA_NULL},
    {"GL_SUBPIXEL_BITS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SUBPIXEL_BITS,
    "",
    JAVA_NULL},
    {"GL_RED_BITS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_RED_BITS,
    "",
    JAVA_NULL},
    {"GL_GREEN_BITS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_GREEN_BITS,
    "",
    JAVA_NULL},
    {"GL_BLUE_BITS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_BLUE_BITS,
    "",
    JAVA_NULL},
    {"GL_ALPHA_BITS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_BITS,
    "",
    JAVA_NULL},
    {"GL_DEPTH_BITS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BITS,
    "",
    JAVA_NULL},
    {"GL_STENCIL_BITS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BITS,
    "",
    JAVA_NULL},
    {"GL_POLYGON_OFFSET_UNITS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_UNITS,
    "",
    JAVA_NULL},
    {"GL_POLYGON_OFFSET_FILL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FILL,
    "",
    JAVA_NULL},
    {"GL_POLYGON_OFFSET_FACTOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FACTOR,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_BINDING_2D",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_BINDING_2D,
    "",
    JAVA_NULL},
    {"GL_VERTEX_ARRAY_SIZE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_SIZE,
    "",
    JAVA_NULL},
    {"GL_VERTEX_ARRAY_TYPE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_TYPE,
    "",
    JAVA_NULL},
    {"GL_VERTEX_ARRAY_STRIDE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_STRIDE,
    "",
    JAVA_NULL},
    {"GL_NORMAL_ARRAY_TYPE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_TYPE,
    "",
    JAVA_NULL},
    {"GL_NORMAL_ARRAY_STRIDE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_STRIDE,
    "",
    JAVA_NULL},
    {"GL_COLOR_ARRAY_SIZE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_SIZE,
    "",
    JAVA_NULL},
    {"GL_COLOR_ARRAY_TYPE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_TYPE,
    "",
    JAVA_NULL},
    {"GL_COLOR_ARRAY_STRIDE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_STRIDE,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_COORD_ARRAY_SIZE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_SIZE,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_COORD_ARRAY_TYPE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_TYPE,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_COORD_ARRAY_STRIDE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_STRIDE,
    "",
    JAVA_NULL},
    {"GL_VERTEX_ARRAY_POINTER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_POINTER,
    "",
    JAVA_NULL},
    {"GL_NORMAL_ARRAY_POINTER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_POINTER,
    "",
    JAVA_NULL},
    {"GL_COLOR_ARRAY_POINTER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_POINTER,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_COORD_ARRAY_POINTER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_POINTER,
    "",
    JAVA_NULL},
    {"GL_SAMPLE_BUFFERS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_BUFFERS,
    "",
    JAVA_NULL},
    {"GL_SAMPLES",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLES,
    "",
    JAVA_NULL},
    {"GL_SAMPLE_COVERAGE_VALUE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_VALUE,
    "",
    JAVA_NULL},
    {"GL_SAMPLE_COVERAGE_INVERT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_INVERT,
    "",
    JAVA_NULL},
    {"GL_NUM_COMPRESSED_TEXTURE_FORMATS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NUM_COMPRESSED_TEXTURE_FORMATS,
    "",
    JAVA_NULL},
    {"GL_COMPRESSED_TEXTURE_FORMATS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COMPRESSED_TEXTURE_FORMATS,
    "",
    JAVA_NULL},
    {"GL_DONT_CARE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DONT_CARE,
    "",
    JAVA_NULL},
    {"GL_FASTEST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FASTEST,
    "",
    JAVA_NULL},
    {"GL_NICEST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NICEST,
    "",
    JAVA_NULL},
    {"GL_PERSPECTIVE_CORRECTION_HINT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_PERSPECTIVE_CORRECTION_HINT,
    "",
    JAVA_NULL},
    {"GL_POINT_SMOOTH_HINT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH_HINT,
    "",
    JAVA_NULL},
    {"GL_LINE_SMOOTH_HINT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH_HINT,
    "",
    JAVA_NULL},
    {"GL_FOG_HINT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_HINT,
    "",
    JAVA_NULL},
    {"GL_GENERATE_MIPMAP_HINT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP_HINT,
    "",
    JAVA_NULL},
    {"GL_LIGHT_MODEL_AMBIENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_AMBIENT,
    "",
    JAVA_NULL},
    {"GL_LIGHT_MODEL_TWO_SIDE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_TWO_SIDE,
    "",
    JAVA_NULL},
    {"GL_AMBIENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT,
    "",
    JAVA_NULL},
    {"GL_DIFFUSE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DIFFUSE,
    "",
    JAVA_NULL},
    {"GL_SPECULAR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SPECULAR,
    "",
    JAVA_NULL},
    {"GL_POSITION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_POSITION,
    "",
    JAVA_NULL},
    {"GL_SPOT_DIRECTION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_DIRECTION,
    "",
    JAVA_NULL},
    {"GL_SPOT_EXPONENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_EXPONENT,
    "",
    JAVA_NULL},
    {"GL_SPOT_CUTOFF",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_CUTOFF,
    "",
    JAVA_NULL},
    {"GL_CONSTANT_ATTENUATION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT_ATTENUATION,
    "",
    JAVA_NULL},
    {"GL_LINEAR_ATTENUATION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_ATTENUATION,
    "",
    JAVA_NULL},
    {"GL_QUADRATIC_ATTENUATION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_QUADRATIC_ATTENUATION,
    "",
    JAVA_NULL},
    {"GL_BYTE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_BYTE,
    "",
    JAVA_NULL},
    {"GL_UNSIGNED_BYTE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_BYTE,
    "",
    JAVA_NULL},
    {"GL_SHORT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SHORT,
    "",
    JAVA_NULL},
    {"GL_UNSIGNED_SHORT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT,
    "",
    JAVA_NULL},
    {"GL_FLOAT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FLOAT,
    "",
    JAVA_NULL},
    {"GL_FIXED",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FIXED,
    "",
    JAVA_NULL},
    {"GL_CLEAR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CLEAR,
    "",
    JAVA_NULL},
    {"GL_AND",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_AND,
    "",
    JAVA_NULL},
    {"GL_AND_REVERSE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_AND_REVERSE,
    "",
    JAVA_NULL},
    {"GL_COPY",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COPY,
    "",
    JAVA_NULL},
    {"GL_AND_INVERTED",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_AND_INVERTED,
    "",
    JAVA_NULL},
    {"GL_NOOP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NOOP,
    "",
    JAVA_NULL},
    {"GL_XOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_XOR,
    "",
    JAVA_NULL},
    {"GL_OR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OR,
    "",
    JAVA_NULL},
    {"GL_NOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NOR,
    "",
    JAVA_NULL},
    {"GL_EQUIV",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_EQUIV,
    "",
    JAVA_NULL},
    {"GL_INVERT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_INVERT,
    "",
    JAVA_NULL},
    {"GL_OR_REVERSE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OR_REVERSE,
    "",
    JAVA_NULL},
    {"GL_COPY_INVERTED",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COPY_INVERTED,
    "",
    JAVA_NULL},
    {"GL_OR_INVERTED",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OR_INVERTED,
    "",
    JAVA_NULL},
    {"GL_NAND",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NAND,
    "",
    JAVA_NULL},
    {"GL_SET",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SET,
    "",
    JAVA_NULL},
    {"GL_EMISSION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_EMISSION,
    "",
    JAVA_NULL},
    {"GL_SHININESS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SHININESS,
    "",
    JAVA_NULL},
    {"GL_AMBIENT_AND_DIFFUSE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT_AND_DIFFUSE,
    "",
    JAVA_NULL},
    {"GL_MODELVIEW",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW,
    "",
    JAVA_NULL},
    {"GL_PROJECTION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION,
    "",
    JAVA_NULL},
    {"GL_TEXTURE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE,
    "",
    JAVA_NULL},
    {"GL_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA,
    "",
    JAVA_NULL},
    {"GL_RGB",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_RGB,
    "",
    JAVA_NULL},
    {"GL_RGBA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_RGBA,
    "",
    JAVA_NULL},
    {"GL_LUMINANCE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE,
    "",
    JAVA_NULL},
    {"GL_LUMINANCE_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE_ALPHA,
    "",
    JAVA_NULL},
    {"GL_UNPACK_ALIGNMENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_UNPACK_ALIGNMENT,
    "",
    JAVA_NULL},
    {"GL_PACK_ALIGNMENT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_PACK_ALIGNMENT,
    "",
    JAVA_NULL},
    {"GL_UNSIGNED_SHORT_4_4_4_4",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_4_4_4_4,
    "",
    JAVA_NULL},
    {"GL_UNSIGNED_SHORT_5_5_5_1",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_5_5_1,
    "",
    JAVA_NULL},
    {"GL_UNSIGNED_SHORT_5_6_5",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_6_5,
    "",
    JAVA_NULL},
    {"GL_FLAT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_FLAT,
    "",
    JAVA_NULL},
    {"GL_SMOOTH",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH,
    "",
    JAVA_NULL},
    {"GL_KEEP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_KEEP,
    "",
    JAVA_NULL},
    {"GL_REPLACE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_REPLACE,
    "",
    JAVA_NULL},
    {"GL_INCR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_INCR,
    "",
    JAVA_NULL},
    {"GL_DECR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DECR,
    "",
    JAVA_NULL},
    {"GL_VENDOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_VENDOR,
    "",
    JAVA_NULL},
    {"GL_RENDERER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERER,
    "",
    JAVA_NULL},
    {"GL_VERSION",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_VERSION,
    "",
    JAVA_NULL},
    {"GL_EXTENSIONS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_EXTENSIONS,
    "",
    JAVA_NULL},
    {"GL_MODULATE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_MODULATE,
    "",
    JAVA_NULL},
    {"GL_DECAL",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DECAL,
    "",
    JAVA_NULL},
    {"GL_ADD",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ADD,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_ENV_MODE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_MODE,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_ENV_COLOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_COLOR,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_ENV",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV,
    "",
    JAVA_NULL},
    {"GL_NEAREST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST,
    "",
    JAVA_NULL},
    {"GL_LINEAR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR,
    "",
    JAVA_NULL},
    {"GL_NEAREST_MIPMAP_NEAREST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_NEAREST,
    "",
    JAVA_NULL},
    {"GL_LINEAR_MIPMAP_NEAREST",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_NEAREST,
    "",
    JAVA_NULL},
    {"GL_NEAREST_MIPMAP_LINEAR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_LINEAR,
    "",
    JAVA_NULL},
    {"GL_LINEAR_MIPMAP_LINEAR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_LINEAR,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_MAG_FILTER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MAG_FILTER,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_MIN_FILTER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MIN_FILTER,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_WRAP_S",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_S,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_WRAP_T",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_T,
    "",
    JAVA_NULL},
    {"GL_GENERATE_MIPMAP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP,
    "",
    JAVA_NULL},
    {"GL_TEXTURE0",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE0,
    "",
    JAVA_NULL},
    {"GL_TEXTURE1",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE1,
    "",
    JAVA_NULL},
    {"GL_TEXTURE2",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE2,
    "",
    JAVA_NULL},
    {"GL_TEXTURE3",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE3,
    "",
    JAVA_NULL},
    {"GL_TEXTURE4",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE4,
    "",
    JAVA_NULL},
    {"GL_TEXTURE5",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE5,
    "",
    JAVA_NULL},
    {"GL_TEXTURE6",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE6,
    "",
    JAVA_NULL},
    {"GL_TEXTURE7",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE7,
    "",
    JAVA_NULL},
    {"GL_TEXTURE8",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE8,
    "",
    JAVA_NULL},
    {"GL_TEXTURE9",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE9,
    "",
    JAVA_NULL},
    {"GL_TEXTURE10",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE10,
    "",
    JAVA_NULL},
    {"GL_TEXTURE11",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE11,
    "",
    JAVA_NULL},
    {"GL_TEXTURE12",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE12,
    "",
    JAVA_NULL},
    {"GL_TEXTURE13",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE13,
    "",
    JAVA_NULL},
    {"GL_TEXTURE14",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE14,
    "",
    JAVA_NULL},
    {"GL_TEXTURE15",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE15,
    "",
    JAVA_NULL},
    {"GL_TEXTURE16",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE16,
    "",
    JAVA_NULL},
    {"GL_TEXTURE17",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE17,
    "",
    JAVA_NULL},
    {"GL_TEXTURE18",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE18,
    "",
    JAVA_NULL},
    {"GL_TEXTURE19",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE19,
    "",
    JAVA_NULL},
    {"GL_TEXTURE20",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE20,
    "",
    JAVA_NULL},
    {"GL_TEXTURE21",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE21,
    "",
    JAVA_NULL},
    {"GL_TEXTURE22",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE22,
    "",
    JAVA_NULL},
    {"GL_TEXTURE23",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE23,
    "",
    JAVA_NULL},
    {"GL_TEXTURE24",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE24,
    "",
    JAVA_NULL},
    {"GL_TEXTURE25",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE25,
    "",
    JAVA_NULL},
    {"GL_TEXTURE26",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE26,
    "",
    JAVA_NULL},
    {"GL_TEXTURE27",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE27,
    "",
    JAVA_NULL},
    {"GL_TEXTURE28",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE28,
    "",
    JAVA_NULL},
    {"GL_TEXTURE29",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE29,
    "",
    JAVA_NULL},
    {"GL_TEXTURE30",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE30,
    "",
    JAVA_NULL},
    {"GL_TEXTURE31",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE31,
    "",
    JAVA_NULL},
    {"GL_ACTIVE_TEXTURE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ACTIVE_TEXTURE,
    "",
    JAVA_NULL},
    {"GL_CLIENT_ACTIVE_TEXTURE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CLIENT_ACTIVE_TEXTURE,
    "",
    JAVA_NULL},
    {"GL_REPEAT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_REPEAT,
    "",
    JAVA_NULL},
    {"GL_CLAMP_TO_EDGE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CLAMP_TO_EDGE,
    "",
    JAVA_NULL},
    {"GL_LIGHT0",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT0,
    "",
    JAVA_NULL},
    {"GL_LIGHT1",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT1,
    "",
    JAVA_NULL},
    {"GL_LIGHT2",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT2,
    "",
    JAVA_NULL},
    {"GL_LIGHT3",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT3,
    "",
    JAVA_NULL},
    {"GL_LIGHT4",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT4,
    "",
    JAVA_NULL},
    {"GL_LIGHT5",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT5,
    "",
    JAVA_NULL},
    {"GL_LIGHT6",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT6,
    "",
    JAVA_NULL},
    {"GL_LIGHT7",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT7,
    "",
    JAVA_NULL},
    {"GL_ARRAY_BUFFER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER,
    "",
    JAVA_NULL},
    {"GL_ELEMENT_ARRAY_BUFFER",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER,
    "",
    JAVA_NULL},
    {"GL_ARRAY_BUFFER_BINDING",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER_BINDING,
    "",
    JAVA_NULL},
    {"GL_ELEMENT_ARRAY_BUFFER_BINDING",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER_BINDING,
    "",
    JAVA_NULL},
    {"GL_VERTEX_ARRAY_BUFFER_BINDING",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_BUFFER_BINDING,
    "",
    JAVA_NULL},
    {"GL_NORMAL_ARRAY_BUFFER_BINDING",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_BUFFER_BINDING,
    "",
    JAVA_NULL},
    {"GL_COLOR_ARRAY_BUFFER_BINDING",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_BUFFER_BINDING,
    "",
    JAVA_NULL},
    {"GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING,
    "",
    JAVA_NULL},
    {"GL_STATIC_DRAW",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_STATIC_DRAW,
    "",
    JAVA_NULL},
    {"GL_DYNAMIC_DRAW",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DYNAMIC_DRAW,
    "",
    JAVA_NULL},
    {"GL_BUFFER_SIZE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_SIZE,
    "",
    JAVA_NULL},
    {"GL_BUFFER_USAGE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_USAGE,
    "",
    JAVA_NULL},
    {"GL_SUBTRACT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SUBTRACT,
    "",
    JAVA_NULL},
    {"GL_COMBINE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE,
    "",
    JAVA_NULL},
    {"GL_COMBINE_RGB",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_RGB,
    "",
    JAVA_NULL},
    {"GL_COMBINE_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_ALPHA,
    "",
    JAVA_NULL},
    {"GL_RGB_SCALE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_RGB_SCALE,
    "",
    JAVA_NULL},
    {"GL_ADD_SIGNED",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ADD_SIGNED,
    "",
    JAVA_NULL},
    {"GL_INTERPOLATE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_INTERPOLATE,
    "",
    JAVA_NULL},
    {"GL_CONSTANT",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT,
    "",
    JAVA_NULL},
    {"GL_PRIMARY_COLOR",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_PRIMARY_COLOR,
    "",
    JAVA_NULL},
    {"GL_PREVIOUS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_PREVIOUS,
    "",
    JAVA_NULL},
    {"GL_OPERAND0_RGB",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_RGB,
    "",
    JAVA_NULL},
    {"GL_OPERAND1_RGB",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_RGB,
    "",
    JAVA_NULL},
    {"GL_OPERAND2_RGB",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_RGB,
    "",
    JAVA_NULL},
    {"GL_OPERAND0_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_ALPHA,
    "",
    JAVA_NULL},
    {"GL_OPERAND1_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_ALPHA,
    "",
    JAVA_NULL},
    {"GL_OPERAND2_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_ALPHA,
    "",
    JAVA_NULL},
    {"GL_ALPHA_SCALE",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_SCALE,
    "",
    JAVA_NULL},
    {"GL_SRC0_RGB",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_RGB,
    "",
    JAVA_NULL},
    {"GL_SRC1_RGB",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_RGB,
    "",
    JAVA_NULL},
    {"GL_SRC2_RGB",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_RGB,
    "",
    JAVA_NULL},
    {"GL_SRC0_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_ALPHA,
    "",
    JAVA_NULL},
    {"GL_SRC1_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_ALPHA,
    "",
    JAVA_NULL},
    {"GL_SRC2_ALPHA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_ALPHA,
    "",
    JAVA_NULL},
    {"GL_DOT3_RGB",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGB,
    "",
    JAVA_NULL},
    {"GL_DOT3_RGBA",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGBA,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_gl_GL();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_gl_GL___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_int,
    &__CLASS_org_xmlvm_runtime_RedTypeMarker,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_org_xmlvm_runtime_RedTypeMarker,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_org_xmlvm_runtime_RedTypeMarker,
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_org_xmlvm_runtime_RedTypeMarker,
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_org_xmlvm_runtime_RedTypeMarker,
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method20_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method22_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method23_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method24_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method25_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method26_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method27_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method28_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method29_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method30_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method31_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method32_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"glEnable",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glDisable",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glEnableClientState",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glDisableClientState",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glGenTextures",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glBindTexture",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glTexImage2D",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glTexParameteri",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glBlendFunc",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glTranslatef",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glRotatef",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glScalef",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glClear",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glVertexPointer",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glColorPointer",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glTexCoordPointer",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glDrawArrays",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glColor4f",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glLoadIdentity",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glViewport",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glMatrixMode",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glOrthof",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glClearColor",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glFrustumf",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glLineWidth",
    &__method24_arg_types[0],
    sizeof(__method24_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glGenRenderbuffersOES",
    &__method25_arg_types[0],
    sizeof(__method25_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glGenFramebuffersOES",
    &__method26_arg_types[0],
    sizeof(__method26_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glBindRenderbufferOES",
    &__method27_arg_types[0],
    sizeof(__method27_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glBindFramebufferOES",
    &__method28_arg_types[0],
    sizeof(__method28_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glFramebufferRenderbufferOES",
    &__method29_arg_types[0],
    sizeof(__method29_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glCheckFramebufferStatusOES",
    &__method30_arg_types[0],
    sizeof(__method30_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glDeleteFramebuffersOES",
    &__method31_arg_types[0],
    sizeof(__method31_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"glDeleteRenderbuffersOES",
    &__method32_arg_types[0],
    sizeof(__method32_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_gl_GL_glEnable___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_gl_GL_glDisable___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_gl_GL_glEnableClientState___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 3:
        org_xmlvm_iphone_gl_GL_glDisableClientState___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 4:
        org_xmlvm_iphone_gl_GL_glGenTextures___int_java_nio_IntBuffer(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, argsArray[1]);
        break;
    case 5:
        org_xmlvm_iphone_gl_GL_glBindTexture___int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 6:
        org_xmlvm_iphone_gl_GL_glTexImage2D___int_int_int_int_int_int_int_int_java_nio_ByteBuffer(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[4])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[5])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[6])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[7])->fields.java_lang_Integer.value_, argsArray[8]);
        break;
    case 7:
        org_xmlvm_iphone_gl_GL_glTexParameteri___int_int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_);
        break;
    case 8:
        org_xmlvm_iphone_gl_GL_glBlendFunc___int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 9:
        org_xmlvm_iphone_gl_GL_glTranslatef___float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_);
        break;
    case 10:
        org_xmlvm_iphone_gl_GL_glRotatef___float_float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_);
        break;
    case 11:
        org_xmlvm_iphone_gl_GL_glScalef___float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_);
        break;
    case 12:
        org_xmlvm_iphone_gl_GL_glClear___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 13:
        org_xmlvm_iphone_gl_GL_glVertexPointer___int_int_int_java_nio_FloatBuffer(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, argsArray[3]);
        break;
    case 14:
        org_xmlvm_iphone_gl_GL_glColorPointer___int_int_int_java_nio_FloatBuffer(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, argsArray[3]);
        break;
    case 15:
        org_xmlvm_iphone_gl_GL_glTexCoordPointer___int_int_int_java_nio_FloatBuffer(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, argsArray[3]);
        break;
    case 16:
        org_xmlvm_iphone_gl_GL_glDrawArrays___int_int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_);
        break;
    case 17:
        org_xmlvm_iphone_gl_GL_glColor4f___float_float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_);
        break;
    case 18:
        org_xmlvm_iphone_gl_GL_glLoadIdentity__();
        break;
    case 19:
        org_xmlvm_iphone_gl_GL_glViewport___int_int_int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    case 20:
        org_xmlvm_iphone_gl_GL_glMatrixMode___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 21:
        org_xmlvm_iphone_gl_GL_glOrthof___float_float_float_float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[4])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[5])->fields.java_lang_Float.value_);
        break;
    case 22:
        org_xmlvm_iphone_gl_GL_glClearColor___float_float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_);
        break;
    case 23:
        org_xmlvm_iphone_gl_GL_glFrustumf___float_float_float_float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[4])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[5])->fields.java_lang_Float.value_);
        break;
    case 24:
        org_xmlvm_iphone_gl_GL_glLineWidth___float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 25:
        org_xmlvm_iphone_gl_GL_glGenRenderbuffersOES___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 26:
        org_xmlvm_iphone_gl_GL_glGenFramebuffersOES___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 27:
        org_xmlvm_iphone_gl_GL_glBindRenderbufferOES___int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 28:
        org_xmlvm_iphone_gl_GL_glBindFramebufferOES___int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 29:
        org_xmlvm_iphone_gl_GL_glFramebufferRenderbufferOES___int_int_int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    case 30:
        org_xmlvm_iphone_gl_GL_glCheckFramebufferStatusOES___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 31:
        org_xmlvm_iphone_gl_GL_glDeleteFramebuffersOES___int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 32:
        org_xmlvm_iphone_gl_GL_glDeleteRenderbuffersOES___int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_gl_GL()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_gl_GL);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_gl_GL.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_gl_GL.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_gl_GL);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_gl_GL.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_gl_GL.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_gl_GL();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_gl_GL()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_gl_GL.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_gl_GL;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_gl_GL.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_gl_GL.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_gl_GL.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_COMPLETE_OES = 36053;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERBUFFER_OES = 36161;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_OES = 36160;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ATTACHMENT0_OES = 36064;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BUFFER_BIT = 256;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BUFFER_BIT = 1024;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_BUFFER_BIT = 16384;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FALSE = 0;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TRUE = 1;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINTS = 0;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINES = 1;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_LOOP = 2;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_STRIP = 3;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLES = 4;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_STRIP = 5;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_FAN = 6;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NEVER = 512;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LESS = 513;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EQUAL = 514;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LEQUAL = 515;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GREATER = 516;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NOTEQUAL = 517;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GEQUAL = 518;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALWAYS = 519;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ZERO = 0;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE = 1;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_COLOR = 768;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_COLOR = 769;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA = 770;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_ALPHA = 771;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DST_ALPHA = 772;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_ALPHA = 773;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DST_COLOR = 774;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_COLOR = 775;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA_SATURATE = 776;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE0 = 12288;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE1 = 12289;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE2 = 12290;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE3 = 12291;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE4 = 12292;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE5 = 12293;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT = 1028;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BACK = 1029;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_AND_BACK = 1032;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG = 2912;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHTING = 2896;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_2D = 3553;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE = 2884;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST = 3008;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND = 3042;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_LOGIC_OP = 3058;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DITHER = 3024;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_TEST = 2960;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_TEST = 2929;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH = 2832;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH = 2848;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_MATERIAL = 2903;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMALIZE = 2977;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RESCALE_NORMAL = 32826;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY = 32884;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY = 32885;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY = 32886;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY = 32888;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MULTISAMPLE = 32925;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_COVERAGE = 32926;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_ONE = 32927;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE = 32928;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NO_ERROR = 0;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_ENUM = 1280;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_VALUE = 1281;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_OPERATION = 1282;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_OVERFLOW = 1283;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_UNDERFLOW = 1284;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OUT_OF_MEMORY = 1285;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EXP = 2048;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EXP2 = 2049;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_DENSITY = 2914;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_START = 2915;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_END = 2916;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_MODE = 2917;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_COLOR = 2918;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CW = 2304;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CCW = 2305;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_COLOR = 2816;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_NORMAL = 2818;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_TEXTURE_COORDS = 2819;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE = 2833;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MIN = 33062;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MAX = 33063;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_FADE_THRESHOLD_SIZE = 33064;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_DISTANCE_ATTENUATION = 33065;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_POINT_SIZE_RANGE = 2834;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_WIDTH = 2849;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_LINE_WIDTH_RANGE = 2850;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_POINT_SIZE_RANGE = 33901;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_LINE_WIDTH_RANGE = 33902;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE_MODE = 2885;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_FACE = 2886;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SHADE_MODEL = 2900;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_RANGE = 2928;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_WRITEMASK = 2930;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_CLEAR_VALUE = 2931;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_FUNC = 2932;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_CLEAR_VALUE = 2961;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FUNC = 2962;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_VALUE_MASK = 2963;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FAIL = 2964;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_FAIL = 2965;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_PASS = 2966;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_REF = 2967;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_WRITEMASK = 2968;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MATRIX_MODE = 2976;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VIEWPORT = 2978;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_STACK_DEPTH = 2979;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_STACK_DEPTH = 2980;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_STACK_DEPTH = 2981;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_MATRIX = 2982;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_MATRIX = 2983;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MATRIX = 2984;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_FUNC = 3009;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_REF = 3010;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_DST = 3040;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_SRC = 3041;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LOGIC_OP_MODE = 3056;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_BOX = 3088;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_TEST = 3089;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_CLEAR_VALUE = 3106;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_WRITEMASK = 3107;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_LIGHTS = 3377;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_CLIP_PLANES = 3378;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_SIZE = 3379;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_MODELVIEW_STACK_DEPTH = 3382;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_PROJECTION_STACK_DEPTH = 3384;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_STACK_DEPTH = 3385;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_VIEWPORT_DIMS = 3386;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_UNITS = 34018;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SUBPIXEL_BITS = 3408;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RED_BITS = 3410;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GREEN_BITS = 3411;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BLUE_BITS = 3412;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_BITS = 3413;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BITS = 3414;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BITS = 3415;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_UNITS = 10752;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FILL = 32823;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FACTOR = 32824;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_BINDING_2D = 32873;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_SIZE = 32890;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_TYPE = 32891;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_STRIDE = 32892;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_TYPE = 32894;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_STRIDE = 32895;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_SIZE = 32897;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_TYPE = 32898;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_STRIDE = 32899;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_SIZE = 32904;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_TYPE = 32905;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_STRIDE = 32906;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_POINTER = 32910;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_POINTER = 32911;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_POINTER = 32912;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_POINTER = 32914;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_BUFFERS = 32936;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLES = 32937;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_VALUE = 32938;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_INVERT = 32939;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COMPRESSED_TEXTURE_FORMATS = 34467;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DONT_CARE = 4352;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FASTEST = 4353;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NICEST = 4354;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PERSPECTIVE_CORRECTION_HINT = 3152;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH_HINT = 3153;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH_HINT = 3154;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_HINT = 3156;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP_HINT = 33170;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_AMBIENT = 2899;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_TWO_SIDE = 2898;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT = 4608;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DIFFUSE = 4609;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SPECULAR = 4610;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POSITION = 4611;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_DIRECTION = 4612;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_EXPONENT = 4613;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_CUTOFF = 4614;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT_ATTENUATION = 4615;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_ATTENUATION = 4616;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_QUADRATIC_ATTENUATION = 4617;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BYTE = 5120;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_BYTE = 5121;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SHORT = 5122;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT = 5123;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FLOAT = 5126;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FIXED = 5132;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLEAR = 5376;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AND = 5377;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AND_REVERSE = 5378;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COPY = 5379;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AND_INVERTED = 5380;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NOOP = 5381;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_XOR = 5382;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OR = 5383;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NOR = 5384;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EQUIV = 5385;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INVERT = 5386;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OR_REVERSE = 5387;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COPY_INVERTED = 5388;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OR_INVERTED = 5389;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NAND = 5390;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SET = 5391;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EMISSION = 5632;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SHININESS = 5633;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT_AND_DIFFUSE = 5634;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW = 5888;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION = 5889;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE = 5890;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA = 6406;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RGB = 6407;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RGBA = 6408;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE = 6409;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE_ALPHA = 6410;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNPACK_ALIGNMENT = 3317;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PACK_ALIGNMENT = 3333;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_4_4_4_4 = 32819;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_5_5_1 = 32820;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_6_5 = 33635;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FLAT = 7424;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH = 7425;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_KEEP = 7680;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_REPLACE = 7681;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INCR = 7682;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DECR = 7683;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VENDOR = 7936;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERER = 7937;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERSION = 7938;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EXTENSIONS = 7939;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MODULATE = 8448;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DECAL = 8449;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ADD = 260;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_MODE = 8704;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_COLOR = 8705;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV = 8960;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST = 9728;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR = 9729;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_NEAREST = 9984;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_NEAREST = 9985;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_LINEAR = 9986;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_LINEAR = 9987;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MAG_FILTER = 10240;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MIN_FILTER = 10241;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_S = 10242;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_T = 10243;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP = 33169;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE0 = 33984;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE1 = 33985;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE2 = 33986;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE3 = 33987;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE4 = 33988;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE5 = 33989;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE6 = 33990;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE7 = 33991;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE8 = 33992;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE9 = 33993;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE10 = 33994;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE11 = 33995;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE12 = 33996;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE13 = 33997;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE14 = 33998;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE15 = 33999;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE16 = 34000;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE17 = 34001;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE18 = 34002;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE19 = 34003;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE20 = 34004;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE21 = 34005;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE22 = 34006;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE23 = 34007;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE24 = 34008;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE25 = 34009;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE26 = 34010;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE27 = 34011;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE28 = 34012;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE29 = 34013;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE30 = 34014;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE31 = 34015;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ACTIVE_TEXTURE = 34016;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIENT_ACTIVE_TEXTURE = 34017;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_REPEAT = 10497;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLAMP_TO_EDGE = 33071;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT0 = 16384;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT1 = 16385;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT2 = 16386;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT3 = 16387;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT4 = 16388;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT5 = 16389;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT6 = 16390;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT7 = 16391;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER = 34962;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER = 34963;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER_BINDING = 34964;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_BUFFER_BINDING = 34966;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_BUFFER_BINDING = 34967;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_BUFFER_BINDING = 34968;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STATIC_DRAW = 35044;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DYNAMIC_DRAW = 35048;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_SIZE = 34660;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_USAGE = 34661;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SUBTRACT = 34023;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE = 34160;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_RGB = 34161;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_ALPHA = 34162;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RGB_SCALE = 34163;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ADD_SIGNED = 34164;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INTERPOLATE = 34165;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT = 34166;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PRIMARY_COLOR = 34167;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PREVIOUS = 34168;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_RGB = 34192;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_RGB = 34193;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_RGB = 34194;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_ALPHA = 34200;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_ALPHA = 34201;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_ALPHA = 34202;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_SCALE = 3356;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_RGB = 34176;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_RGB = 34177;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_RGB = 34178;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_ALPHA = 34184;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_ALPHA = 34185;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_ALPHA = 34186;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGB = 34478;
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGBA = 34479;

    __TIB_org_xmlvm_iphone_gl_GL.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_GL.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_gl_GL.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_gl_GL.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_GL.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_gl_GL.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_gl_GL.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_GL.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_gl_GL = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_gl_GL);
    __TIB_org_xmlvm_iphone_gl_GL.clazz = __CLASS_org_xmlvm_iphone_gl_GL;
    __TIB_org_xmlvm_iphone_gl_GL.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_gl_GL_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_GL);
    __CLASS_org_xmlvm_iphone_gl_GL_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_GL_1ARRAY);
    __CLASS_org_xmlvm_iphone_gl_GL_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_GL_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_gl_GL]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_gl_GL.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_gl_GL(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_gl_GL]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_GL(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_gl_GL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    org_xmlvm_iphone_gl_GL* me = (org_xmlvm_iphone_gl_GL*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_gl_GL));
    me->tib = &__TIB_org_xmlvm_iphone_gl_GL;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_GL(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_gl_GL]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_gl_GL()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_gl_GL();
    org_xmlvm_iphone_gl_GL___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FRAMEBUFFER_COMPLETE_OES()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_COMPLETE_OES;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FRAMEBUFFER_COMPLETE_OES(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_COMPLETE_OES = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_RENDERBUFFER_OES()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERBUFFER_OES;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_RENDERBUFFER_OES(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERBUFFER_OES = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FRAMEBUFFER_OES()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_OES;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FRAMEBUFFER_OES(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRAMEBUFFER_OES = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_ATTACHMENT0_OES()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ATTACHMENT0_OES;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_ATTACHMENT0_OES(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ATTACHMENT0_OES = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DEPTH_BUFFER_BIT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BUFFER_BIT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DEPTH_BUFFER_BIT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BUFFER_BIT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_BUFFER_BIT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BUFFER_BIT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_BUFFER_BIT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BUFFER_BIT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_BUFFER_BIT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_BUFFER_BIT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_BUFFER_BIT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_BUFFER_BIT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FALSE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FALSE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FALSE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FALSE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TRUE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TRUE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TRUE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TRUE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POINTS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POINTS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POINTS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINTS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINES()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINES;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINES(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINES = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINE_LOOP()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_LOOP;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINE_LOOP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_LOOP = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINE_STRIP()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_STRIP;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINE_STRIP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_STRIP = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TRIANGLES()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLES;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TRIANGLES(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLES = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TRIANGLE_STRIP()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_STRIP;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TRIANGLE_STRIP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_STRIP = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TRIANGLE_FAN()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_FAN;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TRIANGLE_FAN(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TRIANGLE_FAN = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NEVER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NEVER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NEVER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NEVER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LESS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LESS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LESS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LESS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_EQUAL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_EQUAL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_EQUAL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EQUAL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LEQUAL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LEQUAL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LEQUAL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LEQUAL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_GREATER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_GREATER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_GREATER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GREATER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NOTEQUAL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NOTEQUAL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NOTEQUAL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NOTEQUAL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_GEQUAL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_GEQUAL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_GEQUAL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GEQUAL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ALWAYS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ALWAYS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ALWAYS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALWAYS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ZERO()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ZERO;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ZERO(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ZERO = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ONE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ONE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SRC_COLOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_COLOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SRC_COLOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_COLOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ONE_MINUS_SRC_COLOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_COLOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ONE_MINUS_SRC_COLOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_COLOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SRC_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SRC_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ONE_MINUS_SRC_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ONE_MINUS_SRC_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_SRC_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DST_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DST_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DST_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DST_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ONE_MINUS_DST_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ONE_MINUS_DST_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DST_COLOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DST_COLOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DST_COLOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DST_COLOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ONE_MINUS_DST_COLOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_COLOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ONE_MINUS_DST_COLOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ONE_MINUS_DST_COLOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SRC_ALPHA_SATURATE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA_SATURATE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SRC_ALPHA_SATURATE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC_ALPHA_SATURATE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CLIP_PLANE0()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE0;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CLIP_PLANE0(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE0 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CLIP_PLANE1()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE1;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CLIP_PLANE1(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE1 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CLIP_PLANE2()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE2;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CLIP_PLANE2(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE2 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CLIP_PLANE3()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE3;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CLIP_PLANE3(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE3 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CLIP_PLANE4()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE4;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CLIP_PLANE4(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE4 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CLIP_PLANE5()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE5;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CLIP_PLANE5(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIP_PLANE5 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FRONT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FRONT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_BACK()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_BACK;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_BACK(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BACK = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FRONT_AND_BACK()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_AND_BACK;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FRONT_AND_BACK(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_AND_BACK = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FOG()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FOG(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHTING()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHTING;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHTING(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHTING = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_2D()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_2D;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_2D(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_2D = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CULL_FACE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CULL_FACE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ALPHA_TEST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ALPHA_TEST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_BLEND()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_BLEND(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_LOGIC_OP()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_LOGIC_OP;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_LOGIC_OP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_LOGIC_OP = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DITHER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DITHER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DITHER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DITHER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_TEST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_TEST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_TEST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_TEST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DEPTH_TEST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_TEST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DEPTH_TEST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_TEST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POINT_SMOOTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POINT_SMOOTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINE_SMOOTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINE_SMOOTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_MATERIAL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_MATERIAL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_MATERIAL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_MATERIAL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NORMALIZE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMALIZE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NORMALIZE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMALIZE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_RESCALE_NORMAL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_RESCALE_NORMAL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_RESCALE_NORMAL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RESCALE_NORMAL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_VERTEX_ARRAY()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_VERTEX_ARRAY(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NORMAL_ARRAY()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NORMAL_ARRAY(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_ARRAY()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_ARRAY(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_COORD_ARRAY()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_COORD_ARRAY(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MULTISAMPLE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MULTISAMPLE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MULTISAMPLE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MULTISAMPLE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SAMPLE_ALPHA_TO_COVERAGE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_COVERAGE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SAMPLE_ALPHA_TO_COVERAGE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_COVERAGE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SAMPLE_ALPHA_TO_ONE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_ONE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SAMPLE_ALPHA_TO_ONE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_ALPHA_TO_ONE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SAMPLE_COVERAGE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SAMPLE_COVERAGE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NO_ERROR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NO_ERROR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NO_ERROR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NO_ERROR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_INVALID_ENUM()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_ENUM;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_INVALID_ENUM(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_ENUM = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_INVALID_VALUE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_VALUE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_INVALID_VALUE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_VALUE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_INVALID_OPERATION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_OPERATION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_INVALID_OPERATION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INVALID_OPERATION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STACK_OVERFLOW()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_OVERFLOW;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STACK_OVERFLOW(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_OVERFLOW = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STACK_UNDERFLOW()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_UNDERFLOW;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STACK_UNDERFLOW(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STACK_UNDERFLOW = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OUT_OF_MEMORY()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OUT_OF_MEMORY;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OUT_OF_MEMORY(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OUT_OF_MEMORY = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_EXP()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_EXP;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_EXP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EXP = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_EXP2()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_EXP2;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_EXP2(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EXP2 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FOG_DENSITY()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_DENSITY;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FOG_DENSITY(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_DENSITY = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FOG_START()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_START;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FOG_START(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_START = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FOG_END()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_END;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FOG_END(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_END = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FOG_MODE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_MODE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FOG_MODE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_MODE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FOG_COLOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_COLOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FOG_COLOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_COLOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CW()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CW;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CW(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CW = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CCW()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CCW;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CCW(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CCW = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CURRENT_COLOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_COLOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CURRENT_COLOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_COLOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CURRENT_NORMAL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_NORMAL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CURRENT_NORMAL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_NORMAL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CURRENT_TEXTURE_COORDS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_TEXTURE_COORDS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CURRENT_TEXTURE_COORDS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CURRENT_TEXTURE_COORDS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POINT_SIZE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POINT_SIZE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POINT_SIZE_MIN()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MIN;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POINT_SIZE_MIN(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MIN = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POINT_SIZE_MAX()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MAX;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POINT_SIZE_MAX(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SIZE_MAX = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POINT_FADE_THRESHOLD_SIZE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_FADE_THRESHOLD_SIZE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POINT_FADE_THRESHOLD_SIZE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_FADE_THRESHOLD_SIZE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POINT_DISTANCE_ATTENUATION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_DISTANCE_ATTENUATION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POINT_DISTANCE_ATTENUATION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_DISTANCE_ATTENUATION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SMOOTH_POINT_SIZE_RANGE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_POINT_SIZE_RANGE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SMOOTH_POINT_SIZE_RANGE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_POINT_SIZE_RANGE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINE_WIDTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_WIDTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINE_WIDTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_WIDTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SMOOTH_LINE_WIDTH_RANGE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_LINE_WIDTH_RANGE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SMOOTH_LINE_WIDTH_RANGE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH_LINE_WIDTH_RANGE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ALIASED_POINT_SIZE_RANGE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_POINT_SIZE_RANGE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ALIASED_POINT_SIZE_RANGE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_POINT_SIZE_RANGE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ALIASED_LINE_WIDTH_RANGE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_LINE_WIDTH_RANGE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ALIASED_LINE_WIDTH_RANGE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALIASED_LINE_WIDTH_RANGE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CULL_FACE_MODE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE_MODE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CULL_FACE_MODE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CULL_FACE_MODE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FRONT_FACE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_FACE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FRONT_FACE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FRONT_FACE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SHADE_MODEL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SHADE_MODEL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SHADE_MODEL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SHADE_MODEL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DEPTH_RANGE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_RANGE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DEPTH_RANGE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_RANGE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DEPTH_WRITEMASK()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_WRITEMASK;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DEPTH_WRITEMASK(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_WRITEMASK = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DEPTH_CLEAR_VALUE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_CLEAR_VALUE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DEPTH_CLEAR_VALUE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_CLEAR_VALUE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DEPTH_FUNC()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_FUNC;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DEPTH_FUNC(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_FUNC = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_CLEAR_VALUE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_CLEAR_VALUE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_CLEAR_VALUE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_CLEAR_VALUE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_FUNC()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FUNC;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_FUNC(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FUNC = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_VALUE_MASK()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_VALUE_MASK;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_VALUE_MASK(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_VALUE_MASK = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_FAIL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FAIL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_FAIL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_FAIL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_PASS_DEPTH_FAIL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_FAIL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_PASS_DEPTH_FAIL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_FAIL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_PASS_DEPTH_PASS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_PASS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_PASS_DEPTH_PASS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_PASS_DEPTH_PASS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_REF()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_REF;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_REF(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_REF = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_WRITEMASK()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_WRITEMASK;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_WRITEMASK(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_WRITEMASK = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MATRIX_MODE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MATRIX_MODE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MATRIX_MODE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MATRIX_MODE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_VIEWPORT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_VIEWPORT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_VIEWPORT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VIEWPORT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MODELVIEW_STACK_DEPTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_STACK_DEPTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MODELVIEW_STACK_DEPTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_STACK_DEPTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_PROJECTION_STACK_DEPTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_STACK_DEPTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_PROJECTION_STACK_DEPTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_STACK_DEPTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_STACK_DEPTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_STACK_DEPTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_STACK_DEPTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_STACK_DEPTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MODELVIEW_MATRIX()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_MATRIX;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MODELVIEW_MATRIX(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW_MATRIX = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_PROJECTION_MATRIX()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_MATRIX;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_PROJECTION_MATRIX(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION_MATRIX = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_MATRIX()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MATRIX;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_MATRIX(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MATRIX = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ALPHA_TEST_FUNC()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_FUNC;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ALPHA_TEST_FUNC(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_FUNC = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ALPHA_TEST_REF()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_REF;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ALPHA_TEST_REF(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_TEST_REF = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_BLEND_DST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_DST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_BLEND_DST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_DST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_BLEND_SRC()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_SRC;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_BLEND_SRC(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BLEND_SRC = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LOGIC_OP_MODE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LOGIC_OP_MODE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LOGIC_OP_MODE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LOGIC_OP_MODE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SCISSOR_BOX()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_BOX;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SCISSOR_BOX(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_BOX = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SCISSOR_TEST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_TEST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SCISSOR_TEST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SCISSOR_TEST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_CLEAR_VALUE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_CLEAR_VALUE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_CLEAR_VALUE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_CLEAR_VALUE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_WRITEMASK()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_WRITEMASK;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_WRITEMASK(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_WRITEMASK = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MAX_LIGHTS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_LIGHTS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MAX_LIGHTS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_LIGHTS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MAX_CLIP_PLANES()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_CLIP_PLANES;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MAX_CLIP_PLANES(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_CLIP_PLANES = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MAX_TEXTURE_SIZE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_SIZE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MAX_TEXTURE_SIZE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_SIZE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MAX_MODELVIEW_STACK_DEPTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_MODELVIEW_STACK_DEPTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MAX_MODELVIEW_STACK_DEPTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_MODELVIEW_STACK_DEPTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MAX_PROJECTION_STACK_DEPTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_PROJECTION_STACK_DEPTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MAX_PROJECTION_STACK_DEPTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_PROJECTION_STACK_DEPTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MAX_TEXTURE_STACK_DEPTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_STACK_DEPTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MAX_TEXTURE_STACK_DEPTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_STACK_DEPTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MAX_VIEWPORT_DIMS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_VIEWPORT_DIMS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MAX_VIEWPORT_DIMS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_VIEWPORT_DIMS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MAX_TEXTURE_UNITS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_UNITS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MAX_TEXTURE_UNITS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MAX_TEXTURE_UNITS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SUBPIXEL_BITS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SUBPIXEL_BITS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SUBPIXEL_BITS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SUBPIXEL_BITS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_RED_BITS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_RED_BITS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_RED_BITS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RED_BITS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_GREEN_BITS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_GREEN_BITS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_GREEN_BITS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GREEN_BITS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_BLUE_BITS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_BLUE_BITS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_BLUE_BITS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BLUE_BITS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ALPHA_BITS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_BITS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ALPHA_BITS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_BITS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DEPTH_BITS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BITS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DEPTH_BITS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DEPTH_BITS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STENCIL_BITS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BITS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STENCIL_BITS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STENCIL_BITS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POLYGON_OFFSET_UNITS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_UNITS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POLYGON_OFFSET_UNITS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_UNITS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POLYGON_OFFSET_FILL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FILL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POLYGON_OFFSET_FILL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FILL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POLYGON_OFFSET_FACTOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FACTOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POLYGON_OFFSET_FACTOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POLYGON_OFFSET_FACTOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_BINDING_2D()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_BINDING_2D;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_BINDING_2D(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_BINDING_2D = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_VERTEX_ARRAY_SIZE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_SIZE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_VERTEX_ARRAY_SIZE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_SIZE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_VERTEX_ARRAY_TYPE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_TYPE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_VERTEX_ARRAY_TYPE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_TYPE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_VERTEX_ARRAY_STRIDE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_STRIDE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_VERTEX_ARRAY_STRIDE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_STRIDE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NORMAL_ARRAY_TYPE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_TYPE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NORMAL_ARRAY_TYPE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_TYPE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NORMAL_ARRAY_STRIDE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_STRIDE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NORMAL_ARRAY_STRIDE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_STRIDE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_ARRAY_SIZE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_SIZE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_ARRAY_SIZE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_SIZE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_ARRAY_TYPE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_TYPE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_ARRAY_TYPE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_TYPE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_ARRAY_STRIDE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_STRIDE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_ARRAY_STRIDE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_STRIDE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_COORD_ARRAY_SIZE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_SIZE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_COORD_ARRAY_SIZE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_SIZE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_COORD_ARRAY_TYPE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_TYPE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_COORD_ARRAY_TYPE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_TYPE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_COORD_ARRAY_STRIDE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_STRIDE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_COORD_ARRAY_STRIDE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_STRIDE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_VERTEX_ARRAY_POINTER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_POINTER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_VERTEX_ARRAY_POINTER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_POINTER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NORMAL_ARRAY_POINTER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_POINTER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NORMAL_ARRAY_POINTER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_POINTER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_ARRAY_POINTER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_POINTER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_ARRAY_POINTER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_POINTER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_COORD_ARRAY_POINTER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_POINTER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_COORD_ARRAY_POINTER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_POINTER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SAMPLE_BUFFERS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_BUFFERS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SAMPLE_BUFFERS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_BUFFERS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SAMPLES()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLES;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SAMPLES(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLES = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SAMPLE_COVERAGE_VALUE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_VALUE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SAMPLE_COVERAGE_VALUE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_VALUE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SAMPLE_COVERAGE_INVERT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_INVERT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SAMPLE_COVERAGE_INVERT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SAMPLE_COVERAGE_INVERT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NUM_COMPRESSED_TEXTURE_FORMATS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NUM_COMPRESSED_TEXTURE_FORMATS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NUM_COMPRESSED_TEXTURE_FORMATS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NUM_COMPRESSED_TEXTURE_FORMATS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COMPRESSED_TEXTURE_FORMATS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COMPRESSED_TEXTURE_FORMATS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COMPRESSED_TEXTURE_FORMATS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COMPRESSED_TEXTURE_FORMATS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DONT_CARE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DONT_CARE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DONT_CARE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DONT_CARE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FASTEST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FASTEST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FASTEST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FASTEST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NICEST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NICEST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NICEST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NICEST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_PERSPECTIVE_CORRECTION_HINT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_PERSPECTIVE_CORRECTION_HINT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_PERSPECTIVE_CORRECTION_HINT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PERSPECTIVE_CORRECTION_HINT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POINT_SMOOTH_HINT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH_HINT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POINT_SMOOTH_HINT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POINT_SMOOTH_HINT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINE_SMOOTH_HINT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH_HINT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINE_SMOOTH_HINT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINE_SMOOTH_HINT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FOG_HINT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_HINT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FOG_HINT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FOG_HINT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_GENERATE_MIPMAP_HINT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP_HINT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_GENERATE_MIPMAP_HINT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP_HINT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT_MODEL_AMBIENT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_AMBIENT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT_MODEL_AMBIENT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_AMBIENT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT_MODEL_TWO_SIDE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_TWO_SIDE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT_MODEL_TWO_SIDE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT_MODEL_TWO_SIDE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_AMBIENT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_AMBIENT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DIFFUSE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DIFFUSE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DIFFUSE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DIFFUSE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SPECULAR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SPECULAR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SPECULAR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SPECULAR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_POSITION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_POSITION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_POSITION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_POSITION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SPOT_DIRECTION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_DIRECTION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SPOT_DIRECTION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_DIRECTION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SPOT_EXPONENT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_EXPONENT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SPOT_EXPONENT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_EXPONENT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SPOT_CUTOFF()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_CUTOFF;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SPOT_CUTOFF(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SPOT_CUTOFF = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CONSTANT_ATTENUATION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT_ATTENUATION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CONSTANT_ATTENUATION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT_ATTENUATION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINEAR_ATTENUATION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_ATTENUATION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINEAR_ATTENUATION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_ATTENUATION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_QUADRATIC_ATTENUATION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_QUADRATIC_ATTENUATION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_QUADRATIC_ATTENUATION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_QUADRATIC_ATTENUATION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_BYTE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_BYTE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_BYTE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BYTE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_UNSIGNED_BYTE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_BYTE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_UNSIGNED_BYTE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_BYTE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SHORT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SHORT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SHORT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SHORT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_UNSIGNED_SHORT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_UNSIGNED_SHORT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FLOAT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FLOAT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FLOAT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FLOAT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FIXED()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FIXED;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FIXED(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FIXED = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CLEAR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CLEAR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CLEAR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLEAR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_AND()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_AND;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_AND(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AND = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_AND_REVERSE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_AND_REVERSE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_AND_REVERSE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AND_REVERSE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COPY()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COPY;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COPY(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COPY = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_AND_INVERTED()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_AND_INVERTED;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_AND_INVERTED(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AND_INVERTED = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NOOP()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NOOP;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NOOP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NOOP = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_XOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_XOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_XOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_XOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_EQUIV()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_EQUIV;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_EQUIV(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EQUIV = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_INVERT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_INVERT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_INVERT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INVERT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OR_REVERSE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OR_REVERSE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OR_REVERSE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OR_REVERSE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COPY_INVERTED()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COPY_INVERTED;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COPY_INVERTED(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COPY_INVERTED = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OR_INVERTED()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OR_INVERTED;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OR_INVERTED(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OR_INVERTED = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NAND()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NAND;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NAND(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NAND = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SET()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SET;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SET(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SET = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_EMISSION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_EMISSION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_EMISSION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EMISSION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SHININESS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SHININESS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SHININESS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SHININESS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_AMBIENT_AND_DIFFUSE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT_AND_DIFFUSE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_AMBIENT_AND_DIFFUSE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_AMBIENT_AND_DIFFUSE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MODELVIEW()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MODELVIEW(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MODELVIEW = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_PROJECTION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_PROJECTION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PROJECTION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_RGB()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_RGB;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_RGB(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RGB = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_RGBA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_RGBA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_RGBA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RGBA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LUMINANCE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LUMINANCE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LUMINANCE_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LUMINANCE_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LUMINANCE_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_UNPACK_ALIGNMENT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_UNPACK_ALIGNMENT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_UNPACK_ALIGNMENT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNPACK_ALIGNMENT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_PACK_ALIGNMENT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_PACK_ALIGNMENT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_PACK_ALIGNMENT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PACK_ALIGNMENT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_UNSIGNED_SHORT_4_4_4_4()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_4_4_4_4;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_UNSIGNED_SHORT_4_4_4_4(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_4_4_4_4 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_UNSIGNED_SHORT_5_5_5_1()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_5_5_1;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_UNSIGNED_SHORT_5_5_5_1(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_5_5_1 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_UNSIGNED_SHORT_5_6_5()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_6_5;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_UNSIGNED_SHORT_5_6_5(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_UNSIGNED_SHORT_5_6_5 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_FLAT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_FLAT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_FLAT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_FLAT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SMOOTH()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SMOOTH(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SMOOTH = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_KEEP()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_KEEP;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_KEEP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_KEEP = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_REPLACE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_REPLACE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_REPLACE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_REPLACE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_INCR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_INCR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_INCR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INCR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DECR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DECR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DECR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DECR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_VENDOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_VENDOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_VENDOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VENDOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_RENDERER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_RENDERER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RENDERER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_VERSION()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_VERSION;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_VERSION(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERSION = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_EXTENSIONS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_EXTENSIONS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_EXTENSIONS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_EXTENSIONS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_MODULATE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_MODULATE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_MODULATE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_MODULATE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DECAL()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DECAL;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DECAL(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DECAL = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ADD()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ADD;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ADD(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ADD = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_ENV_MODE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_MODE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_ENV_MODE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_MODE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_ENV_COLOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_COLOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_ENV_COLOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV_COLOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_ENV()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_ENV(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_ENV = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NEAREST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NEAREST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINEAR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINEAR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NEAREST_MIPMAP_NEAREST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_NEAREST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NEAREST_MIPMAP_NEAREST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_NEAREST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINEAR_MIPMAP_NEAREST()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_NEAREST;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINEAR_MIPMAP_NEAREST(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_NEAREST = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NEAREST_MIPMAP_LINEAR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_LINEAR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NEAREST_MIPMAP_LINEAR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NEAREST_MIPMAP_LINEAR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LINEAR_MIPMAP_LINEAR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_LINEAR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LINEAR_MIPMAP_LINEAR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LINEAR_MIPMAP_LINEAR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_MAG_FILTER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MAG_FILTER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_MAG_FILTER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MAG_FILTER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_MIN_FILTER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MIN_FILTER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_MIN_FILTER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_MIN_FILTER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_WRAP_S()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_S;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_WRAP_S(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_S = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_WRAP_T()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_T;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_WRAP_T(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_WRAP_T = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_GENERATE_MIPMAP()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_GENERATE_MIPMAP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_GENERATE_MIPMAP = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE0()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE0;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE0(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE0 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE1()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE1;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE1(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE1 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE2()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE2;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE2(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE2 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE3()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE3;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE3(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE3 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE4()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE4;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE4(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE4 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE5()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE5;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE5(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE5 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE6()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE6;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE6(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE6 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE7()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE7;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE7(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE7 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE8()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE8;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE8(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE8 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE9()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE9;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE9(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE9 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE10()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE10;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE10(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE10 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE11()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE11;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE11(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE11 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE12()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE12;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE12(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE12 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE13()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE13;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE13(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE13 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE14()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE14;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE14(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE14 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE15()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE15;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE15(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE15 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE16()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE16;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE16(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE16 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE17()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE17;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE17(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE17 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE18()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE18;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE18(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE18 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE19()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE19;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE19(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE19 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE20()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE20;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE20(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE20 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE21()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE21;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE21(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE21 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE22()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE22;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE22(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE22 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE23()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE23;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE23(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE23 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE24()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE24;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE24(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE24 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE25()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE25;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE25(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE25 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE26()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE26;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE26(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE26 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE27()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE27;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE27(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE27 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE28()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE28;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE28(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE28 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE29()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE29;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE29(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE29 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE30()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE30;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE30(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE30 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE31()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE31;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE31(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE31 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ACTIVE_TEXTURE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ACTIVE_TEXTURE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ACTIVE_TEXTURE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ACTIVE_TEXTURE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CLIENT_ACTIVE_TEXTURE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIENT_ACTIVE_TEXTURE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CLIENT_ACTIVE_TEXTURE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLIENT_ACTIVE_TEXTURE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_REPEAT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_REPEAT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_REPEAT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_REPEAT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CLAMP_TO_EDGE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CLAMP_TO_EDGE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CLAMP_TO_EDGE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CLAMP_TO_EDGE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT0()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT0;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT0(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT0 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT1()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT1;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT1(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT1 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT2()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT2;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT2(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT2 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT3()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT3;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT3(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT3 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT4()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT4;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT4(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT4 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT5()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT5;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT5(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT5 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT6()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT6;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT6(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT6 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_LIGHT7()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT7;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_LIGHT7(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_LIGHT7 = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ARRAY_BUFFER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ARRAY_BUFFER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ELEMENT_ARRAY_BUFFER()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ELEMENT_ARRAY_BUFFER(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ARRAY_BUFFER_BINDING()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER_BINDING;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ARRAY_BUFFER_BINDING(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ARRAY_BUFFER_BINDING = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ELEMENT_ARRAY_BUFFER_BINDING()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER_BINDING;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ELEMENT_ARRAY_BUFFER_BINDING(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ELEMENT_ARRAY_BUFFER_BINDING = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_VERTEX_ARRAY_BUFFER_BINDING()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_BUFFER_BINDING;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_VERTEX_ARRAY_BUFFER_BINDING(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_VERTEX_ARRAY_BUFFER_BINDING = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_NORMAL_ARRAY_BUFFER_BINDING()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_BUFFER_BINDING;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_NORMAL_ARRAY_BUFFER_BINDING(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_NORMAL_ARRAY_BUFFER_BINDING = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COLOR_ARRAY_BUFFER_BINDING()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_BUFFER_BINDING;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COLOR_ARRAY_BUFFER_BINDING(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COLOR_ARRAY_BUFFER_BINDING = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_STATIC_DRAW()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_STATIC_DRAW;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_STATIC_DRAW(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_STATIC_DRAW = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DYNAMIC_DRAW()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DYNAMIC_DRAW;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DYNAMIC_DRAW(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DYNAMIC_DRAW = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_BUFFER_SIZE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_SIZE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_BUFFER_SIZE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_SIZE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_BUFFER_USAGE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_USAGE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_BUFFER_USAGE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_BUFFER_USAGE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SUBTRACT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SUBTRACT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SUBTRACT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SUBTRACT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COMBINE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COMBINE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COMBINE_RGB()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_RGB;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COMBINE_RGB(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_RGB = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_COMBINE_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_COMBINE_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_COMBINE_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_RGB_SCALE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_RGB_SCALE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_RGB_SCALE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_RGB_SCALE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ADD_SIGNED()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ADD_SIGNED;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ADD_SIGNED(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ADD_SIGNED = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_INTERPOLATE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_INTERPOLATE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_INTERPOLATE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_INTERPOLATE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_CONSTANT()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_CONSTANT(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_CONSTANT = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_PRIMARY_COLOR()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_PRIMARY_COLOR;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_PRIMARY_COLOR(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PRIMARY_COLOR = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_PREVIOUS()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_PREVIOUS;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_PREVIOUS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_PREVIOUS = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OPERAND0_RGB()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_RGB;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OPERAND0_RGB(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_RGB = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OPERAND1_RGB()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_RGB;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OPERAND1_RGB(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_RGB = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OPERAND2_RGB()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_RGB;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OPERAND2_RGB(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_RGB = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OPERAND0_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OPERAND0_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND0_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OPERAND1_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OPERAND1_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND1_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_OPERAND2_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_OPERAND2_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_OPERAND2_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_ALPHA_SCALE()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_SCALE;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_ALPHA_SCALE(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_ALPHA_SCALE = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SRC0_RGB()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_RGB;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SRC0_RGB(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_RGB = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SRC1_RGB()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_RGB;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SRC1_RGB(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_RGB = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SRC2_RGB()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_RGB;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SRC2_RGB(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_RGB = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SRC0_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SRC0_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC0_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SRC1_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SRC1_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC1_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_SRC2_ALPHA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_ALPHA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_SRC2_ALPHA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_SRC2_ALPHA = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DOT3_RGB()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGB;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DOT3_RGB(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGB = v;
}

JAVA_INT org_xmlvm_iphone_gl_GL_GET_GL_DOT3_RGBA()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    return _STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGBA;
}

void org_xmlvm_iphone_gl_GL_PUT_GL_DOT3_RGBA(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    _STATIC_org_xmlvm_iphone_gl_GL_GL_DOT3_RGBA = v;
}

void org_xmlvm_iphone_gl_GL___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glEnable___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glEnable___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glDisable___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glDisable___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glEnableClientState___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glEnableClientState___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glDisableClientState___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glDisableClientState___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glGenTextures___int_java_nio_IntBuffer(JAVA_INT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glGenTextures___int_java_nio_IntBuffer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glBindTexture___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glBindTexture___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glTexImage2D___int_int_int_int_int_int_int_int_java_nio_ByteBuffer(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4, JAVA_INT n5, JAVA_INT n6, JAVA_INT n7, JAVA_INT n8, JAVA_OBJECT n9)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glTexImage2D___int_int_int_int_int_int_int_int_java_nio_ByteBuffer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glTexParameteri___int_int_int(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glTexParameteri___int_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glBlendFunc___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glBlendFunc___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glTranslatef___float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glTranslatef___float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glRotatef___float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glRotatef___float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glScalef___float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glScalef___float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glClear___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glClear___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glVertexPointer___int_int_int_java_nio_FloatBuffer(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_OBJECT n4)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glVertexPointer___int_int_int_java_nio_FloatBuffer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glColorPointer___int_int_int_java_nio_FloatBuffer(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_OBJECT n4)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glColorPointer___int_int_int_java_nio_FloatBuffer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glTexCoordPointer___int_int_int_java_nio_FloatBuffer(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_OBJECT n4)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glTexCoordPointer___int_int_int_java_nio_FloatBuffer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glDrawArrays___int_int_int(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glDrawArrays___int_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glColor4f___float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glColor4f___float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glLoadIdentity__()
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glLoadIdentity__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glViewport___int_int_int_int(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glViewport___int_int_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glMatrixMode___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glMatrixMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glOrthof___float_float_float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4, JAVA_FLOAT n5, JAVA_FLOAT n6)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glOrthof___float_float_float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glClearColor___float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glClearColor___float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glFrustumf___float_float_float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4, JAVA_FLOAT n5, JAVA_FLOAT n6)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glFrustumf___float_float_float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glLineWidth___float(JAVA_FLOAT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glLineWidth___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_gl_GL_glGenRenderbuffersOES___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glGenRenderbuffersOES___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_gl_GL_glGenFramebuffersOES___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glGenFramebuffersOES___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glBindRenderbufferOES___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glBindRenderbufferOES___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glBindFramebufferOES___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glBindFramebufferOES___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glFramebufferRenderbufferOES___int_int_int_int(JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glFramebufferRenderbufferOES___int_int_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_gl_GL_glCheckFramebufferStatusOES___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glCheckFramebufferStatusOES___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glDeleteFramebuffersOES___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glDeleteFramebuffersOES___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_GL_glDeleteRenderbuffersOES___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_gl_GL.classInitialized) __INIT_org_xmlvm_iphone_gl_GL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_GL_glDeleteRenderbuffersOES___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

