
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSDirectoryEnumerator (NSDirectoryEnumeratorWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSDirectoryEnumerator (NSDirectoryEnumeratorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSDirectoryEnumerator.classInitialized)
        __INIT_org_xmlvm_ios_NSDirectoryEnumerator();
}
@end

void org_xmlvm_ios_NSDirectoryEnumerator_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSEnumerator_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSDirectoryEnumerator class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSDirectoryEnumerator();
        org_xmlvm_ios_NSDirectoryEnumerator_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSDirectoryEnumerator]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSDirectoryEnumerator]
__DELETE_org_xmlvm_ios_NSEnumerator(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDirectoryEnumerator___INIT___]
    NSDirectoryEnumerator* var0 = [[NSDirectoryEnumerator alloc ] init];
    org_xmlvm_ios_NSDirectoryEnumerator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDirectoryEnumerator___INIT___]
    NSDirectoryEnumerator* var0 = [[NSDirectoryEnumerator alloc ] init];
    org_xmlvm_ios_NSDirectoryEnumerator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDirectoryEnumerator___INIT___]

    NSDirectoryEnumerator* var0 = [[NSDirectoryEnumerator alloc]init];

    org_xmlvm_ios_NSDirectoryEnumerator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDirectoryEnumerator_fileAttributes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDirectoryEnumerator_directoryAttributes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDirectoryEnumerator_skipDescendents__]

    XMLVM_VAR_THIZ;
    [thiz skipDescendents];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDirectoryEnumerator_level__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz level];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDirectoryEnumerator_skipDescendants__]

    XMLVM_VAR_THIZ;
    [thiz skipDescendants];

    
//XMLVM_END_WRAPPER
