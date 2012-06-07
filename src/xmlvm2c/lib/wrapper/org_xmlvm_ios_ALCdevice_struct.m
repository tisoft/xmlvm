
//XMLVM_BEGIN_IMPLEMENTATION
@interface ALCdevice_struct (ALCdevice_structWrapperCategory)
+ (void) initialize_class;
@end

@implementation ALCdevice_struct (ALCdevice_structWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ALCdevice_struct.classInitialized)
        __INIT_org_xmlvm_ios_ALCdevice_struct();
}
@end

void org_xmlvm_ios_ALCdevice_struct_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ALCdevice_struct class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ALCdevice_struct();
        org_xmlvm_ios_ALCdevice_struct_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ALCdevice_struct]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ALCdevice_struct]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALCdevice_struct___INIT___]
    ALCdevice_struct* var0 = [[ALCdevice_struct alloc ] init];
    org_xmlvm_ios_ALCdevice_struct_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
