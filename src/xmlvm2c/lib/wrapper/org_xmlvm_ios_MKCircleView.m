
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKCircleView (MKCircleViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKCircleView (MKCircleViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKCircleView.classInitialized)
        __INIT_org_xmlvm_ios_MKCircleView();
}
@end

void org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKCircleView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKCircleView();
        org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKCircleView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKCircleView]
__DELETE_org_xmlvm_ios_MKOverlayPathView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView___INIT____org_xmlvm_ios_MKCircle]

    MKCircleView* var0 = [[MKCircleView alloc] initWithCircle:(MKCircle*) (((org_xmlvm_ios_MKCircle*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView___INIT___]
    MKCircleView* var0 = [[MKCircleView alloc ] init];
    org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView___INIT___]
    MKCircleView* var0 = [[MKCircleView alloc ] init];
    org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView___INIT____org_xmlvm_ios_MKOverlay]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView___INIT___]
    MKCircleView* var0 = [[MKCircleView alloc ] init];
    org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView___INIT____org_xmlvm_ios_CGRect]

    MKCircleView* var0 = [[MKCircleView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView___INIT___]
    MKCircleView* var0 = [[MKCircleView alloc ] init];
    org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView___INIT___]
    MKCircleView* var0 = [[MKCircleView alloc ] init];
    org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView___INIT___]

    MKCircleView* var0 = [[MKCircleView alloc]init];

    org_xmlvm_ios_MKCircleView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircleView_getCircle__]

    XMLVM_VAR_THIZ;
    MKCircle* var0 = [thiz circle];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
