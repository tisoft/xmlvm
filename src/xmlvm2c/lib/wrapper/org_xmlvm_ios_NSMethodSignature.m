
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMethodSignature (NSMethodSignatureWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMethodSignature (NSMethodSignatureWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMethodSignature.classInitialized)
        __INIT_org_xmlvm_ios_NSMethodSignature();
}
@end

void org_xmlvm_ios_NSMethodSignature_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMethodSignature class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMethodSignature();
        org_xmlvm_ios_NSMethodSignature_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMethodSignature]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMethodSignature]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMethodSignature___INIT___]
    NSMethodSignature* var0 = [[NSMethodSignature alloc ] init];
    org_xmlvm_ios_NSMethodSignature_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMethodSignature___INIT___]

    NSMethodSignature* var0 = [[NSMethodSignature alloc]init];

    org_xmlvm_ios_NSMethodSignature_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMethodSignature_signatureWithObjCTypes___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMethodSignature* var0 =  [NSMethodSignature  signatureWithObjCTypes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMethodSignature_numberOfArguments__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz numberOfArguments];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMethodSignature_getArgumentTypeAtIndex___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMethodSignature_frameLength__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz frameLength];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMethodSignature_isOneway__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isOneway];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMethodSignature_methodReturnType__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMethodSignature_methodReturnLength__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz methodReturnLength];

    return var0;
//XMLVM_END_WRAPPER
