
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKPointAnnotation (MKPointAnnotationWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKPointAnnotation (MKPointAnnotationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKPointAnnotation.classInitialized)
        __INIT_org_xmlvm_ios_MKPointAnnotation();
}
@end

void org_xmlvm_ios_MKPointAnnotation_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKShape_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKPointAnnotation class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKPointAnnotation();
        org_xmlvm_ios_MKPointAnnotation_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKPointAnnotation]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKPointAnnotation]
__DELETE_org_xmlvm_ios_MKShape(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPointAnnotation___INIT___]
    MKPointAnnotation* var0 = [[MKPointAnnotation alloc ] init];
    org_xmlvm_ios_MKPointAnnotation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPointAnnotation___INIT___]
    MKPointAnnotation* var0 = [[MKPointAnnotation alloc ] init];
    org_xmlvm_ios_MKPointAnnotation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPointAnnotation___INIT___]

    MKPointAnnotation* var0 = [[MKPointAnnotation alloc]init];

    org_xmlvm_ios_MKPointAnnotation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPointAnnotation_getCoordinate__]

    XMLVM_VAR_THIZ;
    CLLocationCoordinate2D var0 = [thiz coordinate];
    
    return fromCLLocationCoordinate2D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPointAnnotation_setCoordinate___org_xmlvm_ios_CLLocationCoordinate2D]

    XMLVM_VAR_THIZ;
    [thiz setCoordinate:toCLLocationCoordinate2D(n1)];

    
//XMLVM_END_WRAPPER
