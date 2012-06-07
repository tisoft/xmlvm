
//XMLVM_BEGIN_IMPLEMENTATION
@interface CAShapeLayer (CAShapeLayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CAShapeLayer (CAShapeLayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CAShapeLayer.classInitialized)
        __INIT_org_xmlvm_ios_CAShapeLayer();
}
@end

void org_xmlvm_ios_CAShapeLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CAShapeLayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CAShapeLayer();
        org_xmlvm_ios_CAShapeLayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CAShapeLayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CAShapeLayer]
__DELETE_org_xmlvm_ios_CALayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer___INIT___]
    CAShapeLayer* var0 = [[CAShapeLayer alloc ] init];
    org_xmlvm_ios_CAShapeLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer___INIT___]

    CAShapeLayer* var0 = [[CAShapeLayer alloc]init];

    org_xmlvm_ios_CAShapeLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer___INIT____java_lang_Object]

    CAShapeLayer* var0 = [[CAShapeLayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_CAShapeLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer___INIT___]
    CAShapeLayer* var0 = [[CAShapeLayer alloc ] init];
    org_xmlvm_ios_CAShapeLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getPath__]

    XMLVM_VAR_THIZ;
    CGPathRef var0 = [thiz path];
    XMLVM_VAR_INIT_REF(CGPath, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setPath___org_xmlvm_ios_CGPath]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    [thiz setPath:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getFillColor__]

    XMLVM_VAR_THIZ;
    CGColorRef var0 = [thiz fillColor];
    XMLVM_VAR_INIT_REF(CGColor, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setFillColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    [thiz setFillColor:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getFillRule__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz fillRule];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setFillRule___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setFillRule:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getStrokeColor__]

    XMLVM_VAR_THIZ;
    CGColorRef var0 = [thiz strokeColor];
    XMLVM_VAR_INIT_REF(CGColor, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setStrokeColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    [thiz setStrokeColor:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getStrokeEnd__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz strokeEnd];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setStrokeEnd___float]

    XMLVM_VAR_THIZ;
    [thiz setStrokeEnd:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getStrokeStart__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz strokeStart];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setStrokeStart___float]

    XMLVM_VAR_THIZ;
    [thiz setStrokeStart:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getLineWidth__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz lineWidth];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setLineWidth___float]

    XMLVM_VAR_THIZ;
    [thiz setLineWidth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getMiterLimit__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz miterLimit];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setMiterLimit___float]

    XMLVM_VAR_THIZ;
    [thiz setMiterLimit:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getLineCap__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz lineCap];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setLineCap___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setLineCap:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getLineJoin__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz lineJoin];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setLineJoin___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setLineJoin:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getLineDashPhase__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz lineDashPhase];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setLineDashPhase___float]

    XMLVM_VAR_THIZ;
    [thiz setLineDashPhase:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_getLineDashPattern__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz lineDashPattern];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAShapeLayer_setLineDashPattern___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setLineDashPattern:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
