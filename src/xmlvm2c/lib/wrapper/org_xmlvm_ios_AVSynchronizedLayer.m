
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVSynchronizedLayer (AVSynchronizedLayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVSynchronizedLayer (AVSynchronizedLayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVSynchronizedLayer.classInitialized)
        __INIT_org_xmlvm_ios_AVSynchronizedLayer();
}
@end

void org_xmlvm_ios_AVSynchronizedLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVSynchronizedLayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVSynchronizedLayer();
        org_xmlvm_ios_AVSynchronizedLayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVSynchronizedLayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVSynchronizedLayer]
__DELETE_org_xmlvm_ios_CALayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVSynchronizedLayer___INIT___]
    AVSynchronizedLayer* var0 = [[AVSynchronizedLayer alloc ] init];
    org_xmlvm_ios_AVSynchronizedLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVSynchronizedLayer___INIT___]

    AVSynchronizedLayer* var0 = [[AVSynchronizedLayer alloc]init];

    org_xmlvm_ios_AVSynchronizedLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVSynchronizedLayer___INIT____java_lang_Object]

    AVSynchronizedLayer* var0 = [[AVSynchronizedLayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_AVSynchronizedLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVSynchronizedLayer___INIT___]
    AVSynchronizedLayer* var0 = [[AVSynchronizedLayer alloc ] init];
    org_xmlvm_ios_AVSynchronizedLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVSynchronizedLayer_synchronizedLayerWithPlayerItem___org_xmlvm_ios_AVPlayerItem]

    AVSynchronizedLayer* var0 =  [AVSynchronizedLayer  synchronizedLayerWithPlayerItem:(AVPlayerItem*) (((org_xmlvm_ios_AVPlayerItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVSynchronizedLayer_getPlayerItem__]

    XMLVM_VAR_THIZ;
    AVPlayerItem* var0 = [thiz playerItem];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVSynchronizedLayer_setPlayerItem___org_xmlvm_ios_AVPlayerItem]

    XMLVM_VAR_THIZ;
    [thiz setPlayerItem:(AVPlayerItem*) (((org_xmlvm_ios_AVPlayerItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
