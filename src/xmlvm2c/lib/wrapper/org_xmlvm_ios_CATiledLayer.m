
//XMLVM_BEGIN_IMPLEMENTATION
@interface CATiledLayer (CATiledLayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CATiledLayer (CATiledLayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CATiledLayer.classInitialized)
        __INIT_org_xmlvm_ios_CATiledLayer();
}
@end

void org_xmlvm_ios_CATiledLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CATiledLayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CATiledLayer();
        org_xmlvm_ios_CATiledLayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CATiledLayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CATiledLayer]
__DELETE_org_xmlvm_ios_CALayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer___INIT___]
    CATiledLayer* var0 = [[CATiledLayer alloc ] init];
    org_xmlvm_ios_CATiledLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer___INIT___]

    CATiledLayer* var0 = [[CATiledLayer alloc]init];

    org_xmlvm_ios_CATiledLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer___INIT____java_lang_Object]

    CATiledLayer* var0 = [[CATiledLayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_CATiledLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer___INIT___]
    CATiledLayer* var0 = [[CATiledLayer alloc ] init];
    org_xmlvm_ios_CATiledLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer_fadeDuration__]

    double var0 =  [CATiledLayer fadeDuration];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer_getLevelsOfDetail__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz levelsOfDetail];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer_setLevelsOfDetail___int]

    XMLVM_VAR_THIZ;
    [thiz setLevelsOfDetail:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer_getLevelsOfDetailBias__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz levelsOfDetailBias];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer_setLevelsOfDetailBias___int]

    XMLVM_VAR_THIZ;
    [thiz setLevelsOfDetailBias:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer_getTileSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz tileSize];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATiledLayer_setTileSize___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    [thiz setTileSize:toCGSize(n1)];

    
//XMLVM_END_WRAPPER
