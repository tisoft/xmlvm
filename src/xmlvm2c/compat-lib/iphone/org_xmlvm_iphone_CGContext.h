#ifndef __ORG_XMLVM_IPHONE_CGCONTEXT__
#define __ORG_XMLVM_IPHONE_CGCONTEXT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGImage)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGFont
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGFont
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGFont)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.CGContext
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGContext, 42)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGContext void *ocContext;
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGContext \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGContext \
    } org_xmlvm_iphone_CGContext

struct org_xmlvm_iphone_CGContext {
    __TIB_DEFINITION_org_xmlvm_iphone_CGContext* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGContext;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
typedef struct org_xmlvm_iphone_CGContext org_xmlvm_iphone_CGContext;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGContext 42
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setFillColor___float_ARRAYTYPE 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setStrokeColor___float_ARRAYTYPE 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_translate___float_float 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_rotate___float 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_scale___float_float 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setAlpha___float 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setFontSize___float 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setShouldAntialias___boolean 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_ARRAYTYPE 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_showText___java_lang_String 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_storeState__ 30
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_restoreState__ 31
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_getClip__ 32
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_getTextPosition__ 33
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setTextDrawingMode___int 34
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage 35
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_beginPath__ 36
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_moveToPoint___float_float 37
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_addLineToPoint___float_float 38
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_drawPath___int 39
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setLineCap___int 40
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_strokePath__ 41

void __INIT_org_xmlvm_iphone_CGContext();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGContext();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGContext();
JAVA_INT org_xmlvm_iphone_CGContext_GET_kCGTextInvisible();
void org_xmlvm_iphone_CGContext_PUT_kCGTextInvisible(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGContext_GET_kCGTextFill();
void org_xmlvm_iphone_CGContext_PUT_kCGTextFill(JAVA_INT v);
// Vtable index: 14
void org_xmlvm_iphone_CGContext_setFillColor___float_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
void org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 16
void org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 17
void org_xmlvm_iphone_CGContext_setStrokeColor___float_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 18
void org_xmlvm_iphone_CGContext_translate___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 19
void org_xmlvm_iphone_CGContext_rotate___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 20
void org_xmlvm_iphone_CGContext_scale___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 21
void org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 22
void org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 23
void org_xmlvm_iphone_CGContext_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 24
void org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 25
void org_xmlvm_iphone_CGContext_setFontSize___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 26
void org_xmlvm_iphone_CGContext_setShouldAntialias___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 27
void org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_ARRAYTYPE(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_OBJECT n4);
// Vtable index: 28
void org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_OBJECT n3);
// Vtable index: 29
void org_xmlvm_iphone_CGContext_showText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 30
void org_xmlvm_iphone_CGContext_storeState__(JAVA_OBJECT me);
// Vtable index: 31
void org_xmlvm_iphone_CGContext_restoreState__(JAVA_OBJECT me);
// Vtable index: 32
JAVA_OBJECT org_xmlvm_iphone_CGContext_getClip__(JAVA_OBJECT me);
// Vtable index: 33
JAVA_OBJECT org_xmlvm_iphone_CGContext_getTextPosition__(JAVA_OBJECT me);
// Vtable index: 34
void org_xmlvm_iphone_CGContext_setTextDrawingMode___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 35
void org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 36
void org_xmlvm_iphone_CGContext_beginPath__(JAVA_OBJECT me);
// Vtable index: 37
void org_xmlvm_iphone_CGContext_moveToPoint___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 38
void org_xmlvm_iphone_CGContext_addLineToPoint___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 39
void org_xmlvm_iphone_CGContext_drawPath___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 40
void org_xmlvm_iphone_CGContext_setLineCap___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 41
void org_xmlvm_iphone_CGContext_strokePath__(JAVA_OBJECT me);

#endif
