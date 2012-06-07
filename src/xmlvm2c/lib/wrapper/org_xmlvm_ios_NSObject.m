
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject___INIT___]

    NSObject* var0 = [[NSObject alloc]init];

    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_attemptRecoveryFromError___org_xmlvm_ios_NSError_int_java_lang_Object_org_xmlvm_ios_SEL_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_attemptRecoveryFromError___org_xmlvm_ios_NSError_int]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  attemptRecoveryFromError:(NSError*) (((org_xmlvm_ios_NSError*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) optionIndex:n2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) willProcessPath:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldCopyItemAtPath:ObjCVar2 toPath:ObjCVar3];
    [ObjCVar2 release];

    [ObjCVar3 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSURL_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldCopyItemAtURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) toURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSError_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldProceedAfterError:(NSError*) (((org_xmlvm_ios_NSError*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) copyingItemAtPath:ObjCVar3 toPath:ObjCVar4];
    [ObjCVar3 release];

    [ObjCVar4 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSError_org_xmlvm_ios_NSURL_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldProceedAfterError:(NSError*) (((org_xmlvm_ios_NSError*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) copyingItemAtURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) toURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldMoveItemAtPath:ObjCVar2 toPath:ObjCVar3];
    [ObjCVar2 release];

    [ObjCVar3 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSURL_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldMoveItemAtURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) toURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSError_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldProceedAfterError:(NSError*) (((org_xmlvm_ios_NSError*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) movingItemAtPath:ObjCVar3 toPath:ObjCVar4];
    [ObjCVar3 release];

    [ObjCVar4 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSError_org_xmlvm_ios_NSURL_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldProceedAfterError:(NSError*) (((org_xmlvm_ios_NSError*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) movingItemAtURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) toURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldLinkItemAtPath:ObjCVar2 toPath:ObjCVar3];
    [ObjCVar2 release];

    [ObjCVar3 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSURL_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldLinkItemAtURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) toURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSError_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldProceedAfterError:(NSError*) (((org_xmlvm_ios_NSError*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) linkingItemAtPath:ObjCVar3 toPath:ObjCVar4];
    [ObjCVar3 release];

    [ObjCVar4 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSError_org_xmlvm_ios_NSURL_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldProceedAfterError:(NSError*) (((org_xmlvm_ios_NSError*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) linkingItemAtURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) toURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldRemoveItemAtPath:ObjCVar2];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldRemoveItemAtURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSError_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar3 = toNSString(n3);
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldProceedAfterError:(NSError*) (((org_xmlvm_ios_NSError*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) removingItemAtPath:ObjCVar3];
    [ObjCVar3 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_fileManager___org_xmlvm_ios_NSFileManager_org_xmlvm_ios_NSError_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  fileManager:(NSFileManager*) (((org_xmlvm_ios_NSFileManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) shouldProceedAfterError:(NSError*) (((org_xmlvm_ios_NSError*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) removingItemAtURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_classForKeyedArchiver__]

    XMLVM_VAR_THIZ;
    
    Class* var0 = [thiz classForKeyedArchiver];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_replacementObjectForKeyedArchiver___org_xmlvm_ios_NSKeyedArchiver]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  replacementObjectForKeyedArchiver:(NSKeyedArchiver*) (((org_xmlvm_ios_NSKeyedArchiver*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_classFallbacksForKeyedArchiver__]

    NSArray* var0 =  [NSObject classFallbacksForKeyedArchiver];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_classForKeyedUnarchiver__]

    Class* var0 =  [NSObject classForKeyedUnarchiver];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_accessInstanceVariablesDirectly__]

    BOOL var0 =  [NSObject accessInstanceVariablesDirectly];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_valueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  valueForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setValue___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  setValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_validateValue___Object_1ARRAY_java_lang_String_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  validateValue:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ forKey:ObjCVar2 error:&var3];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_mutableArrayValueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 = [thiz  mutableArrayValueForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_mutableSetValueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSSet* var0 = [thiz  mutableSetValueForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_valueForKeyPath___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  valueForKeyPath:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setValue___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  setValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKeyPath:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_validateValue___Object_1ARRAY_java_lang_String_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  validateValue:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ forKeyPath:ObjCVar2 error:&var3];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_mutableArrayValueForKeyPath___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 = [thiz  mutableArrayValueForKeyPath:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_mutableSetValueForKeyPath___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSSet* var0 = [thiz  mutableSetValueForKeyPath:ObjCVar1];
    [ObjCVar1 release];


    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_valueForUndefinedKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  valueForUndefinedKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setValue___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  setValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forUndefinedKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setNilValueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setNilValueForKey:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_dictionaryWithValuesForKeys___java_util_List]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setValuesForKeysWithDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_useStoredAccessor__]

    BOOL var0 =  [NSObject useStoredAccessor];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_storedValueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  storedValueForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_takeStoredValue___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  takeStoredValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_takeValue___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  takeValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_takeValue___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  takeValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKeyPath:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_handleQueryWithUnboundKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  handleQueryWithUnboundKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_handleTakeValue___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  handleTakeValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forUnboundKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_unableToSetNilForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  unableToSetNilForKey:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_valuesForKeys___java_util_List]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_takeValuesFromDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_observeValueForKeyPath___java_lang_String_java_lang_Object_java_util_Map_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_addObserver___org_xmlvm_ios_NSObject_java_lang_String_int_byte_1ARRAY]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    [thiz  addObserver:(NSObject*) (((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forKeyPath:ObjCVar2 options:n3 context:a4->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_removeObserver___org_xmlvm_ios_NSObject_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  removeObserver:(NSObject*) (((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forKeyPath:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_willChangeValueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  willChangeValueForKey:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_didChangeValueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  didChangeValueForKey:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_willChange___int_org_xmlvm_ios_NSIndexSet_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar3 = toNSString(n3);
    [thiz  willChange:n1 valuesAtIndexes:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) forKey:ObjCVar3];
    [ObjCVar3 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_didChange___int_org_xmlvm_ios_NSIndexSet_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar3 = toNSString(n3);
    [thiz  didChange:n1 valuesAtIndexes:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) forKey:ObjCVar3];
    [ObjCVar3 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_willChangeValueForKey___java_lang_String_int_java_util_Set]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSSet * ObjCVar3 = toNSSet(n3);
    [thiz  willChangeValueForKey:ObjCVar1 withSetMutation:n2 usingObjects:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar3 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_didChangeValueForKey___java_lang_String_int_java_util_Set]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSSet * ObjCVar3 = toNSSet(n3);
    [thiz  didChangeValueForKey:ObjCVar1 withSetMutation:n2 usingObjects:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar3 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_keyPathsForValuesAffectingValueForKey___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSSet* var0 =  [NSObject  keyPathsForValuesAffectingValueForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_automaticallyNotifiesObserversForKey___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 =  [NSObject  automaticallyNotifiesObserversForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setObservationInfo___byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  setObservationInfo:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_observationInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setKeys___java_util_List_java_lang_String]
NSArray * ObjCVar1 = toNSArray(n1);
    NSString * ObjCVar2 = toNSString(n2);
     [NSObject  setKeys:ObjCVar1 triggerChangeNotificationsForDependentKey:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_isEqual___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isEqual:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_hash__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz hash];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_superclass__]

    XMLVM_VAR_THIZ;
    
    Class* var0 = [thiz superclass];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_class__]

    XMLVM_VAR_THIZ;
    
    Class* var0 = [thiz class];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_self__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz self];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_zone__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelector___org_xmlvm_ios_SEL_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelector___org_xmlvm_ios_SEL_java_lang_Object_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_isProxy__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isProxy];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_isKindOfClass___org_xmlvm_ios_Class]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isKindOfClass:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_isMemberOfClass___org_xmlvm_ios_Class]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isMemberOfClass:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_conformsToProtocol___org_xmlvm_ios_Protocol]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_respondsToSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_retain__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz retain];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_release__]

    XMLVM_VAR_THIZ;
    [thiz release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_autorelease__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz autorelease];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_retainCount__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz retainCount];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_description__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz description];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_load__]
 [NSObject load];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_initialize__]
 [NSObject initialize];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_allocWithZone___org_xmlvm_ios_NSZone]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_alloc__]

    NSObject* var0 =  [NSObject alloc];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_dealloc__]

    XMLVM_VAR_THIZ;
    [thiz dealloc];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_finalize_org_xmlvm_ios_NSObject__]

                XMLVM_VAR_THIZ;
                [thiz removeExtraMembers];
                [thiz release];
            
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_copy__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz copy];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_mutableCopy__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz mutableCopy];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_copyWithZone___org_xmlvm_ios_NSZone]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_mutableCopyWithZone___org_xmlvm_ios_NSZone]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_superclass__]

    Class* var0 =  [NSObject superclass];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_class__]

    Class* var0 =  [NSObject class];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_instancesRespondToSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_conformsToProtocol___org_xmlvm_ios_Protocol]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_methodForSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_instanceMethodForSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_doesNotRecognizeSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_forwardingTargetForSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_forwardInvocation___org_xmlvm_ios_NSInvocation]

    XMLVM_VAR_THIZ;
    [thiz  forwardInvocation:(NSInvocation*) (((org_xmlvm_ios_NSInvocation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_methodSignatureForSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_instanceMethodSignatureForSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_description__]

    NSString* var0 =  [NSObject description];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_isSubclassOfClass___org_xmlvm_ios_Class]

    BOOL var0 =  [NSObject  isSubclassOfClass:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_resolveClassMethod___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_resolveInstanceMethod___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_version__]

    int var0 =  [NSObject version];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setVersion___int]
 [NSObject  setVersion:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_classForCoder__]

    XMLVM_VAR_THIZ;
    
    Class* var0 = [thiz classForCoder];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_replacementObjectForCoder___org_xmlvm_ios_NSCoder]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  replacementObjectForCoder:(NSCoder*) (((org_xmlvm_ios_NSCoder*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_awakeAfterUsingCoder___org_xmlvm_ios_NSCoder]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  awakeAfterUsingCoder:(NSCoder*) (((org_xmlvm_ios_NSCoder*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_poseAsClass___org_xmlvm_ios_Class]
 [NSObject  poseAsClass:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_autoContentAccessingProxy__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz autoContentAccessingProxy];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelector___org_xmlvm_ios_SEL_java_lang_Object_double_java_util_List]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelector___org_xmlvm_ios_SEL_java_lang_Object_double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_cancelPreviousPerformRequestsWithTarget___java_lang_Object_org_xmlvm_ios_SEL_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_cancelPreviousPerformRequestsWithTarget___java_lang_Object]
 [NSObject  cancelPreviousPerformRequestsWithTarget:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelectorOnMainThread___org_xmlvm_ios_SEL_java_lang_Object_boolean_java_util_List]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelectorOnMainThread___org_xmlvm_ios_SEL_java_lang_Object_boolean]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelector___org_xmlvm_ios_SEL_org_xmlvm_ios_NSThread_java_lang_Object_boolean_java_util_List]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelector___org_xmlvm_ios_SEL_org_xmlvm_ios_NSThread_java_lang_Object_boolean]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_performSelectorInBackground___org_xmlvm_ios_SEL_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_URL___org_xmlvm_ios_NSURL_org_xmlvm_ios_NSData]

    XMLVM_VAR_THIZ;
    [thiz  URL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) resourceDataDidBecomeAvailable:(NSData*) (((org_xmlvm_ios_NSData*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_URLResourceDidFinishLoading___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    [thiz  URLResourceDidFinishLoading:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_URLResourceDidCancelLoading___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    [thiz  URLResourceDidCancelLoading:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_URL___org_xmlvm_ios_NSURL_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  URL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) resourceDidFailLoadingWithReason:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_org_xmlvm_ios_NSURLRequest_org_xmlvm_ios_NSURLResponse]

    XMLVM_VAR_THIZ;
    
    NSURLRequest* var0 = [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) willSendRequest:(NSURLRequest*) (((org_xmlvm_ios_NSURLRequest*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) redirectResponse:(NSURLResponse*) (((org_xmlvm_ios_NSURLResponse*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_org_xmlvm_ios_NSURLRequest]

    XMLVM_VAR_THIZ;
    
    NSInputStream* var0 = [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) needNewBodyStream:(NSURLRequest*) (((org_xmlvm_ios_NSURLRequest*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_org_xmlvm_ios_NSURLProtectionSpace]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace*) (((org_xmlvm_ios_NSURLProtectionSpace*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_org_xmlvm_ios_NSURLAuthenticationChallenge]

    XMLVM_VAR_THIZ;
    [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge*) (((org_xmlvm_ios_NSURLAuthenticationChallenge*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_org_xmlvm_ios_NSURLAuthenticationChallenge]

    XMLVM_VAR_THIZ;
    [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) didCancelAuthenticationChallenge:(NSURLAuthenticationChallenge*) (((org_xmlvm_ios_NSURLAuthenticationChallenge*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connectionShouldUseCredentialStorage___org_xmlvm_ios_NSURLConnection]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  connectionShouldUseCredentialStorage:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_org_xmlvm_ios_NSURLResponse]

    XMLVM_VAR_THIZ;
    [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) didReceiveResponse:(NSURLResponse*) (((org_xmlvm_ios_NSURLResponse*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_org_xmlvm_ios_NSData]

    XMLVM_VAR_THIZ;
    [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) didReceiveData:(NSData*) (((org_xmlvm_ios_NSData*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_int_int_int]

    XMLVM_VAR_THIZ;
    [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) didSendBodyData:n2 totalBytesWritten:n3 totalBytesExpectedToWrite:n4];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connectionDidFinishLoading___org_xmlvm_ios_NSURLConnection]

    XMLVM_VAR_THIZ;
    [thiz  connectionDidFinishLoading:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_org_xmlvm_ios_NSError]

    XMLVM_VAR_THIZ;
    [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) didFailWithError:(NSError*) (((org_xmlvm_ios_NSError*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_connection___org_xmlvm_ios_NSURLConnection_org_xmlvm_ios_NSCachedURLResponse]

    XMLVM_VAR_THIZ;
    
    NSCachedURLResponse* var0 = [thiz  connection:(NSURLConnection*) (((org_xmlvm_ios_NSURLConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) willCacheResponse:(NSCachedURLResponse*) (((org_xmlvm_ios_NSCachedURLResponse*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_animationDidStart___org_xmlvm_ios_CAAnimation]

    XMLVM_VAR_THIZ;
    [thiz  animationDidStart:(CAAnimation*) (((org_xmlvm_ios_CAAnimation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_animationDidStop___org_xmlvm_ios_CAAnimation_boolean]

    XMLVM_VAR_THIZ;
    [thiz  animationDidStop:(CAAnimation*) (((org_xmlvm_ios_CAAnimation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) finished:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_displayLayer___org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    [thiz  displayLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_drawLayer___org_xmlvm_ios_CALayer_org_xmlvm_ios_CGContext]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGContext, var2, n2);
    [thiz  drawLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) inContext:var2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_layoutSublayersOfLayer___org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    [thiz  layoutSublayersOfLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_actionForLayer___org_xmlvm_ios_CALayer_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_getIsAccessibilityElement__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isAccessibilityElement];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setIsAccessibilityElement___boolean]

    XMLVM_VAR_THIZ;
    [thiz setIsAccessibilityElement:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_getAccessibilityLabel__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz accessibilityLabel];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setAccessibilityLabel___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setAccessibilityLabel:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_getAccessibilityHint__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz accessibilityHint];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setAccessibilityHint___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setAccessibilityHint:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_getAccessibilityValue__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz accessibilityValue];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setAccessibilityValue___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setAccessibilityValue:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_getAccessibilityTraits__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz accessibilityTraits];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setAccessibilityTraits___long]

    XMLVM_VAR_THIZ;
    [thiz setAccessibilityTraits:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_getAccessibilityFrame__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz accessibilityFrame];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setAccessibilityFrame___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz setAccessibilityFrame:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_getAccessibilityLanguage__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz accessibilityLanguage];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_setAccessibilityLanguage___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setAccessibilityLanguage:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_accessibilityElementCount__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz accessibilityElementCount];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_accessibilityElementAtIndex___int]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  accessibilityElementAtIndex:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_indexOfAccessibilityElement___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  indexOfAccessibilityElement:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_accessibilityElementDidBecomeFocused__]

    XMLVM_VAR_THIZ;
    [thiz accessibilityElementDidBecomeFocused];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_accessibilityElementDidLoseFocus__]

    XMLVM_VAR_THIZ;
    [thiz accessibilityElementDidLoseFocus];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_accessibilityElementIsFocused__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz accessibilityElementIsFocused];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_accessibilityIncrement__]

    XMLVM_VAR_THIZ;
    [thiz accessibilityIncrement];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_accessibilityDecrement__]

    XMLVM_VAR_THIZ;
    [thiz accessibilityDecrement];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_accessibilityScroll___int]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  accessibilityScroll:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_awakeFromNib__]

    XMLVM_VAR_THIZ;
    [thiz awakeFromNib];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_cut___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  cut:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_copy___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  copy:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_paste___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  paste:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_select___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  select:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_selectAll___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  selectAll:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSObject_delete___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  delete:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
