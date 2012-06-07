
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKPinAnnotationView (MKPinAnnotationViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKPinAnnotationView (MKPinAnnotationViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKPinAnnotationView.classInitialized)
        __INIT_org_xmlvm_ios_MKPinAnnotationView();
}
@end

void org_xmlvm_ios_MKPinAnnotationView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKAnnotationView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKPinAnnotationView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKPinAnnotationView();
        org_xmlvm_ios_MKPinAnnotationView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKPinAnnotationView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKPinAnnotationView]
__DELETE_org_xmlvm_ios_MKAnnotationView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView___INIT___]
    MKPinAnnotationView* var0 = [[MKPinAnnotationView alloc ] init];
    org_xmlvm_ios_MKPinAnnotationView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView___INIT____org_xmlvm_ios_MKAnnotation_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView___INIT___]
    MKPinAnnotationView* var0 = [[MKPinAnnotationView alloc ] init];
    org_xmlvm_ios_MKPinAnnotationView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView___INIT____org_xmlvm_ios_CGRect]

    MKPinAnnotationView* var0 = [[MKPinAnnotationView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_MKPinAnnotationView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView___INIT___]
    MKPinAnnotationView* var0 = [[MKPinAnnotationView alloc ] init];
    org_xmlvm_ios_MKPinAnnotationView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView___INIT___]
    MKPinAnnotationView* var0 = [[MKPinAnnotationView alloc ] init];
    org_xmlvm_ios_MKPinAnnotationView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView___INIT___]

    MKPinAnnotationView* var0 = [[MKPinAnnotationView alloc]init];

    org_xmlvm_ios_MKPinAnnotationView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView_getPinColor__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz pinColor];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView_setPinColor___int]

    XMLVM_VAR_THIZ;
    [thiz setPinColor:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView_getAnimatesDrop__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz animatesDrop];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPinAnnotationView_setAnimatesDrop___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAnimatesDrop:n1];

    
//XMLVM_END_WRAPPER
