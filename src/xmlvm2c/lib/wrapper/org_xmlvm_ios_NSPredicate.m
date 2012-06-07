
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSPredicate (NSPredicateWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSPredicate (NSPredicateWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSPredicate.classInitialized)
        __INIT_org_xmlvm_ios_NSPredicate();
}
@end

void org_xmlvm_ios_NSPredicate_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSPredicate class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSPredicate();
        org_xmlvm_ios_NSPredicate_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSPredicate]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSPredicate]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate___INIT___]
    NSPredicate* var0 = [[NSPredicate alloc ] init];
    org_xmlvm_ios_NSPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate___INIT___]

    NSPredicate* var0 = [[NSPredicate alloc]init];

    org_xmlvm_ios_NSPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate_predicateWithFormat___java_lang_String_java_util_List]
NSString * ObjCVar1 = toNSString(n1);
    NSArray * ObjCVar2 = toNSArray(n2);
    
    NSPredicate* var0 =  [NSPredicate  predicateWithFormat:ObjCVar1 argumentArray:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate_predicateWithFormat___org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate_predicateWithFormat___java_lang_String_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSPredicate* var0 =  [NSPredicate  predicateWithFormat:ObjCVar1 arguments:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate_predicateWithValue___boolean]

    NSPredicate* var0 =  [NSPredicate  predicateWithValue:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate_predicateWithBlock___java_lang_Object]

    NSPredicate* var0 =  [NSPredicate  predicateWithBlock:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate_predicateFormat__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz predicateFormat];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate_predicateWithSubstitutionVariables___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate_evaluateWithObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  evaluateWithObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPredicate_evaluateWithObject___java_lang_Object_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
