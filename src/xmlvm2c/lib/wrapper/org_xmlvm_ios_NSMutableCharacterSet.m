
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMutableCharacterSet (NSMutableCharacterSetWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMutableCharacterSet (NSMutableCharacterSetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMutableCharacterSet.classInitialized)
        __INIT_org_xmlvm_ios_NSMutableCharacterSet();
}
@end

void org_xmlvm_ios_NSMutableCharacterSet_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSCharacterSet_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMutableCharacterSet class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMutableCharacterSet();
        org_xmlvm_ios_NSMutableCharacterSet_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMutableCharacterSet]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMutableCharacterSet]
__DELETE_org_xmlvm_ios_NSCharacterSet(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet___INIT___]
    NSMutableCharacterSet* var0 = [[NSMutableCharacterSet alloc ] init];
    org_xmlvm_ios_NSMutableCharacterSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet___INIT___]
    NSMutableCharacterSet* var0 = [[NSMutableCharacterSet alloc ] init];
    org_xmlvm_ios_NSMutableCharacterSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet___INIT___]

    NSMutableCharacterSet* var0 = [[NSMutableCharacterSet alloc]init];

    org_xmlvm_ios_NSMutableCharacterSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet_addCharactersInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  addCharactersInRange:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet_removeCharactersInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  removeCharactersInRange:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet_addCharactersInString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  addCharactersInString:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet_removeCharactersInString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  removeCharactersInString:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet_formUnionWithCharacterSet___org_xmlvm_ios_NSCharacterSet]

    XMLVM_VAR_THIZ;
    [thiz  formUnionWithCharacterSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet_formIntersectionWithCharacterSet___org_xmlvm_ios_NSCharacterSet]

    XMLVM_VAR_THIZ;
    [thiz  formIntersectionWithCharacterSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableCharacterSet_invert__]

    XMLVM_VAR_THIZ;
    [thiz invert];

    
//XMLVM_END_WRAPPER
