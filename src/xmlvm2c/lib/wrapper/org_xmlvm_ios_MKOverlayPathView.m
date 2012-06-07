
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKOverlayPathView (MKOverlayPathViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKOverlayPathView (MKOverlayPathViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKOverlayPathView.classInitialized)
        __INIT_org_xmlvm_ios_MKOverlayPathView();
}
@end

void org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKOverlayView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKOverlayPathView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKOverlayPathView();
        org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKOverlayPathView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKOverlayPathView]
__DELETE_org_xmlvm_ios_MKOverlayView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView___INIT___]
    MKOverlayPathView* var0 = [[MKOverlayPathView alloc ] init];
    org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView___INIT____org_xmlvm_ios_MKOverlay]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView___INIT___]
    MKOverlayPathView* var0 = [[MKOverlayPathView alloc ] init];
    org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView___INIT____org_xmlvm_ios_CGRect]

    MKOverlayPathView* var0 = [[MKOverlayPathView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView___INIT___]
    MKOverlayPathView* var0 = [[MKOverlayPathView alloc ] init];
    org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView___INIT___]
    MKOverlayPathView* var0 = [[MKOverlayPathView alloc ] init];
    org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView___INIT___]

    MKOverlayPathView* var0 = [[MKOverlayPathView alloc]init];

    org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_getFillColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz fillColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_setFillColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setFillColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_getStrokeColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz strokeColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_setStrokeColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setStrokeColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_getLineWidth__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz lineWidth];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_setLineWidth___float]

    XMLVM_VAR_THIZ;
    [thiz setLineWidth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_getLineJoin__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz lineJoin];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_setLineJoin___int]

    XMLVM_VAR_THIZ;
    [thiz setLineJoin:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_getLineCap__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz lineCap];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_setLineCap___int]

    XMLVM_VAR_THIZ;
    [thiz setLineCap:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_getMiterLimit__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz miterLimit];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_setMiterLimit___float]

    XMLVM_VAR_THIZ;
    [thiz setMiterLimit:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_getLineDashPhase__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz lineDashPhase];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_setLineDashPhase___float]

    XMLVM_VAR_THIZ;
    [thiz setLineDashPhase:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_getLineDashPattern__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz lineDashPattern];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_setLineDashPattern___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setLineDashPattern:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_createPath__]

    XMLVM_VAR_THIZ;
    [thiz createPath];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_getPath__]

    XMLVM_VAR_THIZ;
    CGPathRef var0 = [thiz path];
    XMLVM_VAR_INIT_REF(CGPath, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_setPath___org_xmlvm_ios_CGPath]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    [thiz setPath:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_invalidatePath__]

    XMLVM_VAR_THIZ;
    [thiz invalidatePath];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_applyStrokePropertiesToContext___org_xmlvm_ios_CGContext_float]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    [thiz  applyStrokePropertiesToContext:var1 atZoomScale:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_applyFillPropertiesToContext___org_xmlvm_ios_CGContext_float]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    [thiz  applyFillPropertiesToContext:var1 atZoomScale:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_strokePath___org_xmlvm_ios_CGPath_org_xmlvm_ios_CGContext]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    XMLVM_VAR_IOS_REF(CGContext, var2, n2);
    [thiz  strokePath:var1 inContext:var2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayPathView_fillPath___org_xmlvm_ios_CGPath_org_xmlvm_ios_CGContext]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    XMLVM_VAR_IOS_REF(CGContext, var2, n2);
    [thiz  fillPath:var1 inContext:var2];

    
//XMLVM_END_WRAPPER
