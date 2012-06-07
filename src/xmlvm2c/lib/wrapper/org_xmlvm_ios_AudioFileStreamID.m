
//XMLVM_BEGIN_IMPLEMENTATION
@interface AudioFileStreamID (AudioFileStreamIDWrapperCategory)
+ (void) initialize_class;
@end

@implementation AudioFileStreamID (AudioFileStreamIDWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AudioFileStreamID.classInitialized)
        __INIT_org_xmlvm_ios_AudioFileStreamID();
}
@end

void org_xmlvm_ios_AudioFileStreamID_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AudioFileStreamID class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AudioFileStreamID();
        org_xmlvm_ios_AudioFileStreamID_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AudioFileStreamID]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AudioFileStreamID]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFileStreamID___INIT___]
    AudioFileStreamID* var0 = [[AudioFileStreamID alloc ] init];
    org_xmlvm_ios_AudioFileStreamID_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
