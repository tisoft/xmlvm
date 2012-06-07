
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVPlayerLayer (AVPlayerLayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVPlayerLayer (AVPlayerLayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVPlayerLayer.classInitialized)
        __INIT_org_xmlvm_ios_AVPlayerLayer();
}
@end

void org_xmlvm_ios_AVPlayerLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVPlayerLayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVPlayerLayer();
        org_xmlvm_ios_AVPlayerLayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVPlayerLayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVPlayerLayer]
__DELETE_org_xmlvm_ios_CALayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer___INIT___]
    AVPlayerLayer* var0 = [[AVPlayerLayer alloc ] init];
    org_xmlvm_ios_AVPlayerLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer___INIT___]

    AVPlayerLayer* var0 = [[AVPlayerLayer alloc]init];

    org_xmlvm_ios_AVPlayerLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer___INIT____java_lang_Object]

    AVPlayerLayer* var0 = [[AVPlayerLayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_AVPlayerLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer___INIT___]
    AVPlayerLayer* var0 = [[AVPlayerLayer alloc ] init];
    org_xmlvm_ios_AVPlayerLayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer_playerLayerWithPlayer___org_xmlvm_ios_AVPlayer]

    AVPlayerLayer* var0 =  [AVPlayerLayer  playerLayerWithPlayer:(AVPlayer*) (((org_xmlvm_ios_AVPlayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer_getPlayer__]

    XMLVM_VAR_THIZ;
    AVPlayer* var0 = [thiz player];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer_setPlayer___org_xmlvm_ios_AVPlayer]

    XMLVM_VAR_THIZ;
    [thiz setPlayer:(AVPlayer*) (((org_xmlvm_ios_AVPlayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer_getVideoGravity__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz videoGravity];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer_setVideoGravity___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setVideoGravity:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerLayer_isReadyForDisplay__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isReadyForDisplay];
    
    return var0;
//XMLVM_END_WRAPPER
