
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFAttributedString (CFAttributedStringWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFAttributedString (CFAttributedStringWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFAttributedString.classInitialized)
        __INIT_org_xmlvm_ios_CFAttributedString();
}
@end

void org_xmlvm_ios_CFAttributedString_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFAttributedString class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFAttributedString();
        org_xmlvm_ios_CFAttributedString_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFAttributedString]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFAttributedString]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString___INIT____org_xmlvm_ios_CFAllocator_java_lang_String_org_xmlvm_ios_CFDictionary]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    CFAttributedString* var0 = [[CFAttributedString alloc] create:var1];
    org_xmlvm_ios_CFAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString___INIT___]
    CFAttributedString* var0 = [[CFAttributedString alloc ] init];
    org_xmlvm_ios_CFAttributedString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_createWithSubstring___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFAttributedString_org_xmlvm_ios_CFRange]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFAttributedString* var0 = CFAttributedStringCreateWithSubstring(var1,(CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n3));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_createCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFAttributedString]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFAttributedString* var0 = CFHostCreateCopy(var1,(CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_getString__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_getLength__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_getAttributes___long_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_getAttribute___long_java_lang_String_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_getAttributesAndLongestEffectiveRange___long_org_xmlvm_ios_CFRange_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_getAttributeAndLongestEffectiveRange___long_java_lang_String_org_xmlvm_ios_CFRange_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_createMutableCopy___org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_CFAttributedString]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFAttributedString* var0 = ABMultiValueCreateMutableCopy(var1,n2,(CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_createMutable___org_xmlvm_ios_CFAllocator_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFAttributedString* var0 = ABMultiValueCreateMutable(var1,n2);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_replaceString___org_xmlvm_ios_CFAttributedString_org_xmlvm_ios_CFRange_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    CFAttributedStringReplaceString((CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2),ObjCVar3);
    
    [ObjCVar3 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_getMutableString___org_xmlvm_ios_CFAttributedString]

    CFString* var0 = CFAttributedStringGetMutableString((CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_setAttributes___org_xmlvm_ios_CFAttributedString_org_xmlvm_ios_CFRange_org_xmlvm_ios_CFDictionary_byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_setAttribute___org_xmlvm_ios_CFAttributedString_org_xmlvm_ios_CFRange_java_lang_String_byte_1ARRAY]
NSString * ObjCVar3 = toNSString(n3);
    XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    CFAttributedStringSetAttribute((CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2),ObjCVar3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    [ObjCVar3 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_removeAttribute___org_xmlvm_ios_CFAttributedString_org_xmlvm_ios_CFRange_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    CFAttributedStringRemoveAttribute((CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2),ObjCVar3);
    
    [ObjCVar3 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_replaceAttributedString___org_xmlvm_ios_CFAttributedString_org_xmlvm_ios_CFRange_org_xmlvm_ios_CFAttributedString]
CFAttributedStringReplaceAttributedString((CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2),(CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_beginEditing___org_xmlvm_ios_CFAttributedString]
CFAttributedStringBeginEditing((CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAttributedString_endEditing___org_xmlvm_ios_CFAttributedString]
CFAttributedStringEndEditing((CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER
