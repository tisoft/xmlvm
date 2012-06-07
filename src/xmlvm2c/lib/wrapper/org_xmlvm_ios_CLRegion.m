
//XMLVM_BEGIN_IMPLEMENTATION
@interface CLRegion (CLRegionWrapperCategory)
+ (void) initialize_class;
@end

@implementation CLRegion (CLRegionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CLRegion.classInitialized)
        __INIT_org_xmlvm_ios_CLRegion();
}
@end

void org_xmlvm_ios_CLRegion_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CLRegion class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CLRegion();
        org_xmlvm_ios_CLRegion_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CLRegion]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CLRegion]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLRegion___INIT____org_xmlvm_ios_CLLocationCoordinate2D_double_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    
    CLRegion* var0 = [[CLRegion alloc] initCircularRegionWithCenter:toCLLocationCoordinate2D(n1) radius:n2 identifier:ObjCVar3];
    [ObjCVar3 release];

    org_xmlvm_ios_CLRegion_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLRegion___INIT___]
    CLRegion* var0 = [[CLRegion alloc ] init];
    org_xmlvm_ios_CLRegion_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLRegion___INIT___]

    CLRegion* var0 = [[CLRegion alloc]init];

    org_xmlvm_ios_CLRegion_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLRegion_getCenter__]

    XMLVM_VAR_THIZ;
    CLLocationCoordinate2D var0 = [thiz center];
    
    return fromCLLocationCoordinate2D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLRegion_getRadius__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz radius];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLRegion_getIdentifier__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz identifier];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLRegion_containsCoordinate___org_xmlvm_ios_CLLocationCoordinate2D]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  containsCoordinate:toCLLocationCoordinate2D(n1)];

    return var0;
//XMLVM_END_WRAPPER
