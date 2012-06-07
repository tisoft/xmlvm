
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonSetImageData___org_xmlvm_ios_ABRecord_org_xmlvm_ios_CFData_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonCopyLocalizedPropertyName___int]

    NSString* var0 = ABPersonCopyLocalizedPropertyName(n1);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonCreate__]

    ABRecord* var0 = ABPersonCreate();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABGroupCopyArrayOfAllMembers___org_xmlvm_ios_ABRecord]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonCreateInSource___org_xmlvm_ios_ABRecord]

    ABRecord* var0 = ABPersonCreateInSource((ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABGroupRemoveMember___org_xmlvm_ios_ABRecord_org_xmlvm_ios_ABRecord_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS_REF(CFError, var3, jObject3);
    
    BOOL var0 = ABGroupRemoveMember((ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(ABRecord*) (((org_xmlvm_ios_ABRecord*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),&var3);
    XMLVM_VAR_INIT_REF(CFError,refVar3, var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, refVar3);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonHasImageData___org_xmlvm_ios_ABRecord]

    BOOL var0 = ABPersonHasImageData((ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonGetCompositeNameFormat__]

    int var0 = ABPersonGetCompositeNameFormat();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonGetSortOrdering__]

    int var0 = ABPersonGetSortOrdering();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonGetTypeOfProperty___int]

    int var0 = ABPersonGetTypeOfProperty(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABGroupCopyArrayOfAllMembersWithSortOrdering___org_xmlvm_ios_ABRecord_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonRemoveImageData___org_xmlvm_ios_ABRecord_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS_REF(CFError, var2, jObject2);
    
    BOOL var0 = ABPersonRemoveImageData((ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),&var2);
    XMLVM_VAR_INIT_REF(CFError,refVar2, var2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, refVar2);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonCopyImageDataWithFormat___org_xmlvm_ios_ABRecord_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABGroupCreateInSource___org_xmlvm_ios_ABRecord]

    ABRecord* var0 = ABGroupCreateInSource((ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABGroupCreate__]

    ABRecord* var0 = ABGroupCreate();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonCopyArrayOfAllLinkedPeople___org_xmlvm_ios_ABRecord]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABGroupAddMember___org_xmlvm_ios_ABRecord_org_xmlvm_ios_ABRecord_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS_REF(CFError, var3, jObject3);
    
    BOOL var0 = ABGroupAddMember((ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(ABRecord*) (((org_xmlvm_ios_ABRecord*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),&var3);
    XMLVM_VAR_INIT_REF(CFError,refVar3, var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, refVar3);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonCopySource___org_xmlvm_ios_ABRecord]

    ABRecord* var0 = ABPersonCopySource((ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonComparePeopleByName___org_xmlvm_ios_ABRecord_org_xmlvm_ios_ABRecord_int]

    long var0 = ABPersonComparePeopleByName((ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(ABRecord*) (((org_xmlvm_ios_ABRecord*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABGroupCopySource___org_xmlvm_ios_ABRecord]

    ABRecord* var0 = ABGroupCopySource((ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AddressBook_ABPersonCopyImageData___org_xmlvm_ios_ABRecord]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
