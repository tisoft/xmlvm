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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGContext, 37, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGContext)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext_3ARRAY;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGContext 37
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setFillColor___float_1ARRAY 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setStrokeColor___float_1ARRAY 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_translate___float_float 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_rotate___float 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_scale___float_float 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setAlpha___float 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setFontSize___float 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setShouldAntialias___boolean 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_1ARRAY 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_showText___java_lang_String 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_storeState__ 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_restoreState__ 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_getClip__ 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_getTextPosition__ 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setTextDrawingMode___int 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage 30
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_beginPath__ 31
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_moveToPoint___float_float 32
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_addLineToPoint___float_float 33
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_drawPath___int 34
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_setLineCap___int 35
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGContext_strokePath__ 36

void __INIT_org_xmlvm_iphone_CGContext();
void __INIT_IMPL_org_xmlvm_iphone_CGContext();
void __DELETE_org_xmlvm_iphone_CGContext(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGContext(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGContext();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGContext();
JAVA_INT org_xmlvm_iphone_CGContext_GET_kCGTextInvisible();
void org_xmlvm_iphone_CGContext_PUT_kCGTextInvisible(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGContext_GET_kCGTextFill();
void org_xmlvm_iphone_CGContext_PUT_kCGTextFill(JAVA_INT v);
// Vtable index: 9
void org_xmlvm_iphone_CGContext_setFillColor___float_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 10
void org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 11
void org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 12
void org_xmlvm_iphone_CGContext_setStrokeColor___float_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 13
void org_xmlvm_iphone_CGContext_translate___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 14
void org_xmlvm_iphone_CGContext_rotate___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 15
void org_xmlvm_iphone_CGContext_scale___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 16
void org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 17
void org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 18
void org_xmlvm_iphone_CGContext_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 19
void org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 20
void org_xmlvm_iphone_CGContext_setFontSize___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 21
void org_xmlvm_iphone_CGContext_setShouldAntialias___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 22
void org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_1ARRAY(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_OBJECT n4);
// Vtable index: 23
void org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_OBJECT n3);
// Vtable index: 24
void org_xmlvm_iphone_CGContext_showText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 25
void org_xmlvm_iphone_CGContext_storeState__(JAVA_OBJECT me);
// Vtable index: 26
void org_xmlvm_iphone_CGContext_restoreState__(JAVA_OBJECT me);
// Vtable index: 27
JAVA_OBJECT org_xmlvm_iphone_CGContext_getClip__(JAVA_OBJECT me);
// Vtable index: 28
JAVA_OBJECT org_xmlvm_iphone_CGContext_getTextPosition__(JAVA_OBJECT me);
// Vtable index: 29
void org_xmlvm_iphone_CGContext_setTextDrawingMode___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 30
void org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 31
void org_xmlvm_iphone_CGContext_beginPath__(JAVA_OBJECT me);
// Vtable index: 32
void org_xmlvm_iphone_CGContext_moveToPoint___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 33
void org_xmlvm_iphone_CGContext_addLineToPoint___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 34
void org_xmlvm_iphone_CGContext_drawPath___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 35
void org_xmlvm_iphone_CGContext_setLineCap___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 36
void org_xmlvm_iphone_CGContext_strokePath__(JAVA_OBJECT me);

#endif
