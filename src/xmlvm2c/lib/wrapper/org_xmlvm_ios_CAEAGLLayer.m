
//XMLVM_BEGIN_IMPLEMENTATION
@interface CAEAGLLayer (CAEAGLLayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CAEAGLLayer (CAEAGLLayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CAEAGLLayer.classInitialized)
        __INIT_org_xmlvm_ios_CAEAGLLayer();
}
@end

void org_xmlvm_ios_CAEAGLLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CAEAGLLayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CAEAGLLayer();
        org_xmlvm_ios_CAEAGLLayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CAEAGLLayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CAEAGLLayer]
__DELETE_org_xmlvm_ios_CALayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAEAGLLayer___INIT___]
    CAEAGLLayer* var0 = [[CAEAGLLayer alloc ] init];
    org_xmlvm_ios_CAEAGLLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAEAGLLayer___INIT___]

    CAEAGLLayer* var0 = [[CAEAGLLayer alloc]init];

    org_xmlvm_ios_CAEAGLLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAEAGLLayer___INIT____java_lang_Object]

    CAEAGLLayer* var0 = [[CAEAGLLayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_CAEAGLLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAEAGLLayer___INIT___]
    CAEAGLLayer* var0 = [[CAEAGLLayer alloc ] init];
    org_xmlvm_ios_CAEAGLLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAEAGLLayer_getDrawableProperties__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAEAGLLayer_setDrawableProperties___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
