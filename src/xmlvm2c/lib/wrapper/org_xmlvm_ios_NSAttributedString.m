
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSAttributedString (NSAttributedStringWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSAttributedString (NSAttributedStringWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSAttributedString.classInitialized)
        __INIT_org_xmlvm_ios_NSAttributedString();
}
@end

void org_xmlvm_ios_NSAttributedString_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSAttributedString class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSAttributedString();
        org_xmlvm_ios_NSAttributedString_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSAttributedString]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSAttributedString]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSAttributedString* var0 = [[NSAttributedString alloc] initWithString:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString___INIT____java_lang_String_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString___INIT____org_xmlvm_ios_NSAttributedString]

    NSAttributedString* var0 = [[NSAttributedString alloc] initWithAttributedString:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString___INIT___]
    NSAttributedString* var0 = [[NSAttributedString alloc ] init];
    org_xmlvm_ios_NSAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString___INIT___]

    NSAttributedString* var0 = [[NSAttributedString alloc]init];

    org_xmlvm_ios_NSAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_string__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz string];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_attributesAtIndex___int_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_length__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz length];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_attribute___java_lang_String_int_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    NSRange var3= toNSRange(jObject3);
    
    NSObject* var0 = [thiz  attribute:ObjCVar1 atIndex:n2 effectiveRange:&var3];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_attributedSubstringFromRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    
    NSAttributedString* var0 = [thiz  attributedSubstringFromRange:toNSRange(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_attributesAtIndex___int_org_xmlvm_ios_Reference_org_xmlvm_ios_NSRange]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_attribute___java_lang_String_int_org_xmlvm_ios_Reference_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    NSRange var3= toNSRange(jObject3);
    
    NSObject* var0 = [thiz  attribute:ObjCVar1 atIndex:n2 longestEffectiveRange:&var3 inRange:toNSRange(n4)];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_isEqualToAttributedString___org_xmlvm_ios_NSAttributedString]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isEqualToAttributedString:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_enumerateAttributesInRange___org_xmlvm_ios_NSRange_int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateAttributesInRange:toNSRange(n1) options:n2 usingBlock:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributedString_enumerateAttribute___java_lang_String_org_xmlvm_ios_NSRange_int_java_lang_Object]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  enumerateAttribute:ObjCVar1 inRange:toNSRange(n2) options:n3 usingBlock:((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
