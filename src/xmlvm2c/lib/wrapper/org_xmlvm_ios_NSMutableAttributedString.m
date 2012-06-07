
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMutableAttributedString (NSMutableAttributedStringWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMutableAttributedString (NSMutableAttributedStringWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMutableAttributedString.classInitialized)
        __INIT_org_xmlvm_ios_NSMutableAttributedString();
}
@end

void org_xmlvm_ios_NSMutableAttributedString_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSAttributedString_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMutableAttributedString class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMutableAttributedString();
        org_xmlvm_ios_NSMutableAttributedString_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMutableAttributedString]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMutableAttributedString]
__DELETE_org_xmlvm_ios_NSAttributedString(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString___INIT___]
    NSMutableAttributedString* var0 = [[NSMutableAttributedString alloc ] init];
    org_xmlvm_ios_NSMutableAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSMutableAttributedString* var0 = [[NSMutableAttributedString alloc] initWithString:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString___INIT____java_lang_String_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString___INIT____org_xmlvm_ios_NSAttributedString]

    NSMutableAttributedString* var0 = [[NSMutableAttributedString alloc] initWithAttributedString:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMutableAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString___INIT___]
    NSMutableAttributedString* var0 = [[NSMutableAttributedString alloc ] init];
    org_xmlvm_ios_NSMutableAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString___INIT___]

    NSMutableAttributedString* var0 = [[NSMutableAttributedString alloc]init];

    org_xmlvm_ios_NSMutableAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_replaceCharactersInRange___org_xmlvm_ios_NSRange_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  replaceCharactersInRange:toNSRange(n1) withString:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_setAttributes___java_util_Map_org_xmlvm_ios_NSRange]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_mutableString__]

    XMLVM_VAR_THIZ;
    
    NSMutableString* var0 = [thiz mutableString];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_addAttribute___java_lang_String_java_lang_Object_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  addAttribute:ObjCVar1 value:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj range:toNSRange(n3)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_addAttributes___java_util_Map_org_xmlvm_ios_NSRange]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_removeAttribute___java_lang_String_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  removeAttribute:ObjCVar1 range:toNSRange(n2)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_replaceCharactersInRange___org_xmlvm_ios_NSRange_org_xmlvm_ios_NSAttributedString]

    XMLVM_VAR_THIZ;
    [thiz  replaceCharactersInRange:toNSRange(n1) withAttributedString:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_insertAttributedString___org_xmlvm_ios_NSAttributedString_int]

    XMLVM_VAR_THIZ;
    [thiz  insertAttributedString:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) atIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_appendAttributedString___org_xmlvm_ios_NSAttributedString]

    XMLVM_VAR_THIZ;
    [thiz  appendAttributedString:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_deleteCharactersInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  deleteCharactersInRange:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_setAttributedString___org_xmlvm_ios_NSAttributedString]

    XMLVM_VAR_THIZ;
    [thiz  setAttributedString:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_beginEditing__]

    XMLVM_VAR_THIZ;
    [thiz beginEditing];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableAttributedString_endEditing__]

    XMLVM_VAR_THIZ;
    [thiz endEditing];

    
//XMLVM_END_WRAPPER
