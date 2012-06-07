
//XMLVM_BEGIN_IMPLEMENTATION
@interface AudioFileID (AudioFileIDWrapperCategory)
+ (void) initialize_class;
@end

@implementation AudioFileID (AudioFileIDWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AudioFileID.classInitialized)
        __INIT_org_xmlvm_ios_AudioFileID();
}
@end

void org_xmlvm_ios_AudioFileID_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AudioFileID class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AudioFileID();
        org_xmlvm_ios_AudioFileID_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AudioFileID]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AudioFileID]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFileID___INIT___]
    AudioFileID* var0 = [[AudioFileID alloc ] init];
    org_xmlvm_ios_AudioFileID_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
