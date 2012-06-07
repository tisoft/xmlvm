
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKPolygonView (MKPolygonViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKPolygonView (MKPolygonViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKPolygonView.classInitialized)
        __INIT_org_xmlvm_ios_MKPolygonView();
}
@end

void org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKPolygonView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKPolygonView();
        org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKPolygonView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKPolygonView]
__DELETE_org_xmlvm_ios_MKOverlayPathView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView___INIT____org_xmlvm_ios_MKPolygon]

    MKPolygonView* var0 = [[MKPolygonView alloc] initWithPolygon:(MKPolygon*) (((org_xmlvm_ios_MKPolygon*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView___INIT___]
    MKPolygonView* var0 = [[MKPolygonView alloc ] init];
    org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView___INIT___]
    MKPolygonView* var0 = [[MKPolygonView alloc ] init];
    org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView___INIT____org_xmlvm_ios_MKOverlay]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView___INIT___]
    MKPolygonView* var0 = [[MKPolygonView alloc ] init];
    org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView___INIT____org_xmlvm_ios_CGRect]

    MKPolygonView* var0 = [[MKPolygonView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView___INIT___]
    MKPolygonView* var0 = [[MKPolygonView alloc ] init];
    org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView___INIT___]
    MKPolygonView* var0 = [[MKPolygonView alloc ] init];
    org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView___INIT___]

    MKPolygonView* var0 = [[MKPolygonView alloc]init];

    org_xmlvm_ios_MKPolygonView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygonView_getPolygon__]

    XMLVM_VAR_THIZ;
    MKPolygon* var0 = [thiz polygon];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
