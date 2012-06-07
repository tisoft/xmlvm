
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKPolylineView (MKPolylineViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKPolylineView (MKPolylineViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKPolylineView.classInitialized)
        __INIT_org_xmlvm_ios_MKPolylineView();
}
@end

void org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKOverlayPathView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKPolylineView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKPolylineView();
        org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKPolylineView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKPolylineView]
__DELETE_org_xmlvm_ios_MKOverlayPathView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView___INIT____org_xmlvm_ios_MKPolyline]

    MKPolylineView* var0 = [[MKPolylineView alloc] initWithPolyline:(MKPolyline*) (((org_xmlvm_ios_MKPolyline*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView___INIT___]
    MKPolylineView* var0 = [[MKPolylineView alloc ] init];
    org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView___INIT___]
    MKPolylineView* var0 = [[MKPolylineView alloc ] init];
    org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView___INIT____org_xmlvm_ios_MKOverlay]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView___INIT___]
    MKPolylineView* var0 = [[MKPolylineView alloc ] init];
    org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView___INIT____org_xmlvm_ios_CGRect]

    MKPolylineView* var0 = [[MKPolylineView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView___INIT___]
    MKPolylineView* var0 = [[MKPolylineView alloc ] init];
    org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView___INIT___]
    MKPolylineView* var0 = [[MKPolylineView alloc ] init];
    org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView___INIT___]

    MKPolylineView* var0 = [[MKPolylineView alloc]init];

    org_xmlvm_ios_MKPolylineView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolylineView_getPolyline__]

    XMLVM_VAR_THIZ;
    MKPolyline* var0 = [thiz polyline];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
