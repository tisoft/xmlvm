
//XMLVM_BEGIN_IMPLEMENTATION
@interface ABMultiValue (ABMultiValueWrapperCategory)
+ (void) initialize_class;
@end

@implementation ABMultiValue (ABMultiValueWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ABMultiValue.classInitialized)
        __INIT_org_xmlvm_ios_ABMultiValue();
}
@end

void org_xmlvm_ios_ABMultiValue_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ABMultiValue class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ABMultiValue();
        org_xmlvm_ios_ABMultiValue_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ABMultiValue]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ABMultiValue]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue___INIT___]
    ABMultiValue* var0 = [[ABMultiValue alloc ] init];
    org_xmlvm_ios_ABMultiValue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue___INIT___]
    ABMultiValue* var0 = [[ABMultiValue alloc ] init];
    org_xmlvm_ios_ABMultiValue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_getPropertyType__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_getCount__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_copyValueAtIndex___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_copyArrayOfAllValues__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_copyLabelAtIndex___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_getIndexForIdentifier___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_getIdentifierAtIndex___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_getFirstIndexOfValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_createMutable___int]

    ABMutableMultiValue* var0 = ABMultiValueCreateMutable(n1);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_createMutableCopy__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_addValueAndLabel___org_xmlvm_ios_ABMutableMultiValue_byte_1ARRAY_java_lang_String_int_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    NSString * ObjCVar3 = toNSString(n3);
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    
    BOOL var0 = ABMultiValueAddValueAndLabel((ABMutableMultiValue*) (((org_xmlvm_ios_ABMutableMultiValue*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,ObjCVar3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_insertValueAndLabelAtIndex___org_xmlvm_ios_ABMutableMultiValue_byte_1ARRAY_java_lang_String_long_int_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    NSString * ObjCVar3 = toNSString(n3);
    XMLVM_VAR_INT_ARRAY(a5, n5); 
    
    BOOL var0 = ABMultiValueInsertValueAndLabelAtIndex((ABMutableMultiValue*) (((org_xmlvm_ios_ABMutableMultiValue*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,ObjCVar3,n4,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_removeValueAndLabelAtIndex___org_xmlvm_ios_ABMutableMultiValue_long]

    BOOL var0 = ABMultiValueRemoveValueAndLabelAtIndex((ABMutableMultiValue*) (((org_xmlvm_ios_ABMutableMultiValue*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_replaceValueAtIndex___org_xmlvm_ios_ABMutableMultiValue_byte_1ARRAY_long]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    BOOL var0 = ABMultiValueReplaceValueAtIndex((ABMutableMultiValue*) (((org_xmlvm_ios_ABMutableMultiValue*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMultiValue_replaceLabelAtIndex___org_xmlvm_ios_ABMutableMultiValue_java_lang_String_long]
NSString * ObjCVar2 = toNSString(n2);
    
    BOOL var0 = ABMultiValueReplaceLabelAtIndex((ABMutableMultiValue*) (((org_xmlvm_ios_ABMutableMultiValue*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2,n3);
    
    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER
