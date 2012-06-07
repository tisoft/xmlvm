
//XMLVM_BEGIN_IMPLEMENTATION
@interface CATransformLayer (CATransformLayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CATransformLayer (CATransformLayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CATransformLayer.classInitialized)
        __INIT_org_xmlvm_ios_CATransformLayer();
}
@end

void org_xmlvm_ios_CATransformLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CATransformLayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CATransformLayer();
        org_xmlvm_ios_CATransformLayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CATransformLayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CATransformLayer]
__DELETE_org_xmlvm_ios_CALayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransformLayer___INIT___]
    CATransformLayer* var0 = [[CATransformLayer alloc ] init];
    org_xmlvm_ios_CATransformLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransformLayer___INIT___]

    CATransformLayer* var0 = [[CATransformLayer alloc]init];

    org_xmlvm_ios_CATransformLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransformLayer___INIT____java_lang_Object]

    CATransformLayer* var0 = [[CATransformLayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_CATransformLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransformLayer___INIT___]
    CATransformLayer* var0 = [[CATransformLayer alloc ] init];
    org_xmlvm_ios_CATransformLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
