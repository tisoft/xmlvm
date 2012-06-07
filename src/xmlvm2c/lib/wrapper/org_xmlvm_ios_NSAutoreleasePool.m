
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSAutoreleasePool (NSAutoreleasePoolWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSAutoreleasePool (NSAutoreleasePoolWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSAutoreleasePool.classInitialized)
        __INIT_org_xmlvm_ios_NSAutoreleasePool();
}
@end

void org_xmlvm_ios_NSAutoreleasePool_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSAutoreleasePool class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSAutoreleasePool();
        org_xmlvm_ios_NSAutoreleasePool_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSAutoreleasePool]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSAutoreleasePool]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAutoreleasePool___INIT___]
    NSAutoreleasePool* var0 = [[NSAutoreleasePool alloc ] init];
    org_xmlvm_ios_NSAutoreleasePool_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAutoreleasePool___INIT___]

    NSAutoreleasePool* var0 = [[NSAutoreleasePool alloc]init];

    org_xmlvm_ios_NSAutoreleasePool_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAutoreleasePool_addObject___java_lang_Object]
 [NSAutoreleasePool  addObjectStatic:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAutoreleasePool_addObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  addObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAutoreleasePool_drain__]

    XMLVM_VAR_THIZ;
    [thiz drain];

    
//XMLVM_END_WRAPPER
