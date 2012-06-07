
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVQueuePlayer (AVQueuePlayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVQueuePlayer (AVQueuePlayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVQueuePlayer.classInitialized)
        __INIT_org_xmlvm_ios_AVQueuePlayer();
}
@end

void org_xmlvm_ios_AVQueuePlayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVPlayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVQueuePlayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVQueuePlayer();
        org_xmlvm_ios_AVQueuePlayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVQueuePlayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVQueuePlayer]
__DELETE_org_xmlvm_ios_AVPlayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer___INIT____java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    AVQueuePlayer* var0 = [[AVQueuePlayer alloc] initWithItems:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_AVQueuePlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer___INIT___]
    AVQueuePlayer* var0 = [[AVQueuePlayer alloc ] init];
    org_xmlvm_ios_AVQueuePlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer___INIT____org_xmlvm_ios_NSURL]

    AVQueuePlayer* var0 = [[AVQueuePlayer alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_AVQueuePlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer___INIT____org_xmlvm_ios_AVPlayerItem]

    AVQueuePlayer* var0 = [[AVQueuePlayer alloc] initWithPlayerItem:(AVPlayerItem*) (((org_xmlvm_ios_AVPlayerItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_AVQueuePlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer___INIT___]
    AVQueuePlayer* var0 = [[AVQueuePlayer alloc ] init];
    org_xmlvm_ios_AVQueuePlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer___INIT___]

    AVQueuePlayer* var0 = [[AVQueuePlayer alloc]init];

    org_xmlvm_ios_AVQueuePlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer_queuePlayerWithItems___java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    AVQueuePlayer* var0 =  [AVQueuePlayer  queuePlayerWithItems:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer_items__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz items];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer_advanceToNextItem__]

    XMLVM_VAR_THIZ;
    [thiz advanceToNextItem];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer_canInsertItem___org_xmlvm_ios_AVPlayerItem_org_xmlvm_ios_AVPlayerItem]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  canInsertItem:(AVPlayerItem*) (((org_xmlvm_ios_AVPlayerItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) afterItem:(AVPlayerItem*) (((org_xmlvm_ios_AVPlayerItem*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer_insertItem___org_xmlvm_ios_AVPlayerItem_org_xmlvm_ios_AVPlayerItem]

    XMLVM_VAR_THIZ;
    [thiz  insertItem:(AVPlayerItem*) (((org_xmlvm_ios_AVPlayerItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) afterItem:(AVPlayerItem*) (((org_xmlvm_ios_AVPlayerItem*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer_removeItem___org_xmlvm_ios_AVPlayerItem]

    XMLVM_VAR_THIZ;
    [thiz  removeItem:(AVPlayerItem*) (((org_xmlvm_ios_AVPlayerItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVQueuePlayer_removeAllItems__]

    XMLVM_VAR_THIZ;
    [thiz removeAllItems];

    
//XMLVM_END_WRAPPER
