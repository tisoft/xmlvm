#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_CGContext.h"

__TIB_DEFINITION_org_xmlvm_iphone_CGContext __TIB_org_xmlvm_iphone_CGContext = {
    0, // classInitialized
    "org.xmlvm.iphone.CGContext", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import <CoreGraphics/CoreGraphics.h>
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGContext_kCGTextFill;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"kCGTextInvisible",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible,
    "",
    JAVA_NULL},
    {"kCGTextFill",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGContext_kCGTextFill,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_CGContext()
{
    __TIB_org_xmlvm_iphone_CGContext.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CGContext.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGContext;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGContext.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CGContext.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setFillColor___float_ARRAYTYPE;
    __TIB_org_xmlvm_iphone_CGContext.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect;
    __TIB_org_xmlvm_iphone_CGContext.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect;
    __TIB_org_xmlvm_iphone_CGContext.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setStrokeColor___float_ARRAYTYPE;
    __TIB_org_xmlvm_iphone_CGContext.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_translate___float_float;
    __TIB_org_xmlvm_iphone_CGContext.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_rotate___float;
    __TIB_org_xmlvm_iphone_CGContext.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_scale___float_float;
    __TIB_org_xmlvm_iphone_CGContext.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect;
    __TIB_org_xmlvm_iphone_CGContext.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect;
    __TIB_org_xmlvm_iphone_CGContext.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setAlpha___float;
    __TIB_org_xmlvm_iphone_CGContext.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont;
    __TIB_org_xmlvm_iphone_CGContext.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setFontSize___float;
    __TIB_org_xmlvm_iphone_CGContext.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setShouldAntialias___boolean;
    __TIB_org_xmlvm_iphone_CGContext.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_ARRAYTYPE;
    __TIB_org_xmlvm_iphone_CGContext.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String;
    __TIB_org_xmlvm_iphone_CGContext.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_showText___java_lang_String;
    __TIB_org_xmlvm_iphone_CGContext.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_storeState__;
    __TIB_org_xmlvm_iphone_CGContext.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_restoreState__;
    __TIB_org_xmlvm_iphone_CGContext.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_getClip__;
    __TIB_org_xmlvm_iphone_CGContext.vtable[33] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_getTextPosition__;
    __TIB_org_xmlvm_iphone_CGContext.vtable[34] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setTextDrawingMode___int;
    __TIB_org_xmlvm_iphone_CGContext.vtable[35] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage;
    __TIB_org_xmlvm_iphone_CGContext.vtable[36] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_beginPath__;
    __TIB_org_xmlvm_iphone_CGContext.vtable[37] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_moveToPoint___float_float;
    __TIB_org_xmlvm_iphone_CGContext.vtable[38] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_addLineToPoint___float_float;
    __TIB_org_xmlvm_iphone_CGContext.vtable[39] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_drawPath___int;
    __TIB_org_xmlvm_iphone_CGContext.vtable[40] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setLineCap___int;
    __TIB_org_xmlvm_iphone_CGContext.vtable[41] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_strokePath__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGContext.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGContext.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible = 1;
    _STATIC_org_xmlvm_iphone_CGContext_kCGTextFill = 2;

    __TIB_org_xmlvm_iphone_CGContext.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGContext.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGContext = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_CGContext);
    __TIB_org_xmlvm_iphone_CGContext.clazz = __CLASS_org_xmlvm_iphone_CGContext;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGContext]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGContext(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGContext]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGContext()
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    org_xmlvm_iphone_CGContext* me = (org_xmlvm_iphone_CGContext*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGContext));
    me->tib = &__TIB_org_xmlvm_iphone_CGContext;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGContext]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGContext()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_CGContext_GET_kCGTextInvisible()
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    return _STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible;
}

void org_xmlvm_iphone_CGContext_PUT_kCGTextInvisible(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    _STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible = v;
}

JAVA_INT org_xmlvm_iphone_CGContext_GET_kCGTextFill()
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    return _STATIC_org_xmlvm_iphone_CGContext_kCGTextFill;
}

void org_xmlvm_iphone_CGContext_PUT_kCGTextFill(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    _STATIC_org_xmlvm_iphone_CGContext_kCGTextFill = v;
}

void org_xmlvm_iphone_CGContext_setFillColor___float_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setFillColor___float_ARRAYTYPE]
	org_xmlvm_iphone_CGContext *thiz = me;
	CGContextRef *c = thiz->fields.org_xmlvm_iphone_CGContext.ocContext;
	XMLVMArray *a = n1;
	CGContextSetFillColor(c, a->array.f);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect]
	org_xmlvm_iphone_CGContext *thiz = me;
	CGContextRef *c = thiz->fields.org_xmlvm_iphone_CGContext.ocContext;
	CGContextFillRect(c, toCGRect(n1));
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setStrokeColor___float_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setStrokeColor___float_ARRAYTYPE]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_translate___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_translate___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_rotate___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_rotate___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_scale___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_scale___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setAlpha___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setFontSize___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setFontSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setShouldAntialias___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setShouldAntialias___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_ARRAYTYPE(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_ARRAYTYPE]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_showText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_showText___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_storeState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_storeState__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_restoreState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_restoreState__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGContext_getClip__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_getClip__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGContext_getTextPosition__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_getTextPosition__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setTextDrawingMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setTextDrawingMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_beginPath__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_beginPath__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_moveToPoint___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_moveToPoint___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_addLineToPoint___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_addLineToPoint___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_drawPath___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_drawPath___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setLineCap___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setLineCap___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_strokePath__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_strokePath__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

