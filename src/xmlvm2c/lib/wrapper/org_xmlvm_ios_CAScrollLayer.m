
//XMLVM_BEGIN_IMPLEMENTATION
@interface CAScrollLayer (CAScrollLayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CAScrollLayer (CAScrollLayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CAScrollLayer.classInitialized)
        __INIT_org_xmlvm_ios_CAScrollLayer();
}
@end

void org_xmlvm_ios_CAScrollLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CAScrollLayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CAScrollLayer();
        org_xmlvm_ios_CAScrollLayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CAScrollLayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CAScrollLayer]
__DELETE_org_xmlvm_ios_CALayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAScrollLayer___INIT___]
    CAScrollLayer* var0 = [[CAScrollLayer alloc ] init];
    org_xmlvm_ios_CAScrollLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAScrollLayer___INIT___]

    CAScrollLayer* var0 = [[CAScrollLayer alloc]init];

    org_xmlvm_ios_CAScrollLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAScrollLayer___INIT____java_lang_Object]

    CAScrollLayer* var0 = [[CAScrollLayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_CAScrollLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAScrollLayer___INIT___]
    CAScrollLayer* var0 = [[CAScrollLayer alloc ] init];
    org_xmlvm_ios_CAScrollLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAScrollLayer_scrollToPoint___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    [thiz  scrollToPoint:toCGPoint(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAScrollLayer_scrollToRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  scrollToRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAScrollLayer_getScrollMode__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz scrollMode];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAScrollLayer_setScrollMode___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setScrollMode:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
