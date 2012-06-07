
//XMLVM_BEGIN_IMPLEMENTATION
@interface AudioQueueTimeline (AudioQueueTimelineWrapperCategory)
+ (void) initialize_class;
@end

@implementation AudioQueueTimeline (AudioQueueTimelineWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AudioQueueTimeline.classInitialized)
        __INIT_org_xmlvm_ios_AudioQueueTimeline();
}
@end

void org_xmlvm_ios_AudioQueueTimeline_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AudioQueueTimeline class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AudioQueueTimeline();
        org_xmlvm_ios_AudioQueueTimeline_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AudioQueueTimeline]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AudioQueueTimeline]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueueTimeline___INIT___]
    AudioQueueTimeline* var0 = [[AudioQueueTimeline alloc ] init];
    org_xmlvm_ios_AudioQueueTimeline_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
