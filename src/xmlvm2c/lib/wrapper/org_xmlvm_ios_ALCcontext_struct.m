
//XMLVM_BEGIN_IMPLEMENTATION
@interface ALCcontext_struct (ALCcontext_structWrapperCategory)
+ (void) initialize_class;
@end

@implementation ALCcontext_struct (ALCcontext_structWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ALCcontext_struct.classInitialized)
        __INIT_org_xmlvm_ios_ALCcontext_struct();
}
@end

void org_xmlvm_ios_ALCcontext_struct_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ALCcontext_struct class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ALCcontext_struct();
        org_xmlvm_ios_ALCcontext_struct_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ALCcontext_struct]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ALCcontext_struct]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALCcontext_struct___INIT___]
    ALCcontext_struct* var0 = [[ALCcontext_struct alloc ] init];
    org_xmlvm_ios_ALCcontext_struct_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
