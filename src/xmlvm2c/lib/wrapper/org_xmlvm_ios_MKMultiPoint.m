
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKMultiPoint (MKMultiPointWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKMultiPoint (MKMultiPointWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKMultiPoint.classInitialized)
        __INIT_org_xmlvm_ios_MKMultiPoint();
}
@end

void org_xmlvm_ios_MKMultiPoint_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKShape_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKMultiPoint class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKMultiPoint();
        org_xmlvm_ios_MKMultiPoint_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKMultiPoint]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKMultiPoint]
__DELETE_org_xmlvm_ios_MKShape(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMultiPoint___INIT___]
    MKMultiPoint* var0 = [[MKMultiPoint alloc ] init];
    org_xmlvm_ios_MKMultiPoint_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMultiPoint___INIT___]
    MKMultiPoint* var0 = [[MKMultiPoint alloc ] init];
    org_xmlvm_ios_MKMultiPoint_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMultiPoint___INIT___]

    MKMultiPoint* var0 = [[MKMultiPoint alloc]init];

    org_xmlvm_ios_MKMultiPoint_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMultiPoint_getPoints__]

    XMLVM_VAR_THIZ;
    Reference<MKMapPoint>* var0 = [thiz points];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMultiPoint_getPointCount__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz pointCount];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMultiPoint_getCoordinates___org_xmlvm_ios_Reference_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CLLocationCoordinate2D var1= toCLLocationCoordinate2D(jObject1);
    [thiz  getCoordinates:&var1 range:toNSRange(n2)];

    
//XMLVM_END_WRAPPER
