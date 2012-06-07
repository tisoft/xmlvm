
//XMLVM_BEGIN_IMPLEMENTATION
@interface CAReplicatorLayer (CAReplicatorLayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CAReplicatorLayer (CAReplicatorLayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CAReplicatorLayer.classInitialized)
        __INIT_org_xmlvm_ios_CAReplicatorLayer();
}
@end

void org_xmlvm_ios_CAReplicatorLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CAReplicatorLayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CAReplicatorLayer();
        org_xmlvm_ios_CAReplicatorLayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CAReplicatorLayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CAReplicatorLayer]
__DELETE_org_xmlvm_ios_CALayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer___INIT___]
    CAReplicatorLayer* var0 = [[CAReplicatorLayer alloc ] init];
    org_xmlvm_ios_CAReplicatorLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer___INIT___]

    CAReplicatorLayer* var0 = [[CAReplicatorLayer alloc]init];

    org_xmlvm_ios_CAReplicatorLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer___INIT____java_lang_Object]

    CAReplicatorLayer* var0 = [[CAReplicatorLayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_CAReplicatorLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer___INIT___]
    CAReplicatorLayer* var0 = [[CAReplicatorLayer alloc ] init];
    org_xmlvm_ios_CAReplicatorLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_getInstanceCount__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz instanceCount];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_setInstanceCount___int]

    XMLVM_VAR_THIZ;
    [thiz setInstanceCount:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_getPreservesDepth__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz preservesDepth];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_setPreservesDepth___boolean]

    XMLVM_VAR_THIZ;
    [thiz setPreservesDepth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_getInstanceDelay__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz instanceDelay];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_setInstanceDelay___double]

    XMLVM_VAR_THIZ;
    [thiz setInstanceDelay:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_getInstanceTransform__]

    XMLVM_VAR_THIZ;
    CATransform3D var0 = [thiz instanceTransform];
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_setInstanceTransform___org_xmlvm_ios_CATransform3D]

    XMLVM_VAR_THIZ;
    [thiz setInstanceTransform:toCATransform3D(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_getInstanceColor__]

    XMLVM_VAR_THIZ;
    CGColorRef var0 = [thiz instanceColor];
    XMLVM_VAR_INIT_REF(CGColor, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_setInstanceColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    [thiz setInstanceColor:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_getInstanceGreenOffset__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz instanceGreenOffset];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_setInstanceGreenOffset___float]

    XMLVM_VAR_THIZ;
    [thiz setInstanceGreenOffset:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_getInstanceRedOffset__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz instanceRedOffset];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_setInstanceRedOffset___float]

    XMLVM_VAR_THIZ;
    [thiz setInstanceRedOffset:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_getInstanceAlphaOffset__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz instanceAlphaOffset];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_setInstanceAlphaOffset___float]

    XMLVM_VAR_THIZ;
    [thiz setInstanceAlphaOffset:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_getInstanceBlueOffset__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz instanceBlueOffset];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAReplicatorLayer_setInstanceBlueOffset___float]

    XMLVM_VAR_THIZ;
    [thiz setInstanceBlueOffset:n1];

    
//XMLVM_END_WRAPPER
