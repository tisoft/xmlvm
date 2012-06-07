
//XMLVM_BEGIN_IMPLEMENTATION
@interface CAGradientLayer (CAGradientLayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CAGradientLayer (CAGradientLayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CAGradientLayer.classInitialized)
        __INIT_org_xmlvm_ios_CAGradientLayer();
}
@end

void org_xmlvm_ios_CAGradientLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CAGradientLayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CAGradientLayer();
        org_xmlvm_ios_CAGradientLayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CAGradientLayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CAGradientLayer]
__DELETE_org_xmlvm_ios_CALayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer___INIT___]
    CAGradientLayer* var0 = [[CAGradientLayer alloc ] init];
    org_xmlvm_ios_CAGradientLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer___INIT___]

    CAGradientLayer* var0 = [[CAGradientLayer alloc]init];

    org_xmlvm_ios_CAGradientLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer___INIT____java_lang_Object]

    CAGradientLayer* var0 = [[CAGradientLayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_CAGradientLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer___INIT___]
    CAGradientLayer* var0 = [[CAGradientLayer alloc ] init];
    org_xmlvm_ios_CAGradientLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_getColors__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz colors];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_setColors___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setColors:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_getLocations__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz locations];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_setLocations___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setLocations:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_getEndPoint__]

    XMLVM_VAR_THIZ;
    CGPoint var0 = [thiz endPoint];
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_setEndPoint___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    [thiz setEndPoint:toCGPoint(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_getStartPoint__]

    XMLVM_VAR_THIZ;
    CGPoint var0 = [thiz startPoint];
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_setStartPoint___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    [thiz setStartPoint:toCGPoint(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_getType__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz type];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAGradientLayer_setType___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setType:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
