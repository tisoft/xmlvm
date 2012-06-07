
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSCoder (NSCoderWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSCoder (NSCoderWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSCoder.classInitialized)
        __INIT_org_xmlvm_ios_NSCoder();
}
@end

void org_xmlvm_ios_NSCoder_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSCoder class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSCoder();
        org_xmlvm_ios_NSCoder_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSCoder]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSCoder]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder___INIT___]
    NSCoder* var0 = [[NSCoder alloc ] init];
    org_xmlvm_ios_NSCoder_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder___INIT___]

    NSCoder* var0 = [[NSCoder alloc]init];

    org_xmlvm_ios_NSCoder_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeCMTime___org_xmlvm_ios_CMTime_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeCMTime:toCMTime(n1) forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeCMTimeForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    CMTime var0 = [thiz  decodeCMTimeForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeCMTimeRange___org_xmlvm_ios_CMTimeRange_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeCMTimeRange:toCMTimeRange(n1) forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeCMTimeRangeForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    CMTimeRange var0 = [thiz  decodeCMTimeRangeForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromCMTimeRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeCMTimeMapping___org_xmlvm_ios_CMTimeMapping_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeCMTimeMapping:toCMTimeMapping(n1) forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeCMTimeMappingForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    CMTimeMapping var0 = [thiz  decodeCMTimeMappingForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromCMTimeMapping(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeValueOfObjCType___byte_1ARRAY_byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    [thiz  encodeValueOfObjCType:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ at:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeDataObject___org_xmlvm_ios_NSData]

    XMLVM_VAR_THIZ;
    [thiz  encodeDataObject:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeValueOfObjCType___byte_1ARRAY_byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    [thiz  decodeValueOfObjCType:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ at:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeDataObject__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz decodeDataObject];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_versionForClassName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  versionForClassName:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  encodeObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeRootObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  encodeRootObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeBycopyObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  encodeBycopyObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeByrefObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  encodeByrefObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeConditionalObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  encodeConditionalObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeValuesOfObjCTypes__null]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeArrayOfObjCType___byte_1ARRAY_int_byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    [thiz  encodeArrayOfObjCType:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ count:n2 at:a3->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeBytes___byte_1ARRAY_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  encodeBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeObject__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz decodeObject];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeValuesOfObjCTypes__null]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeArrayOfObjCType___byte_1ARRAY_int_byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    [thiz  decodeArrayOfObjCType:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ count:n2 at:a3->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeBytesWithReturnedLength___int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodePropertyList___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  encodePropertyList:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodePropertyList__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz decodePropertyList];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_setObjectZone___org_xmlvm_ios_NSZone]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_objectZone__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_systemVersion__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz systemVersion];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_allowsKeyedCoding__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz allowsKeyedCoding];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeObject___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeConditionalObject___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeConditionalObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeBool___boolean_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeBool:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeInt___int_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeInt:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeInt32___int_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeInt32:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeInt64___long_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeInt64:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeFloat___float_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeFloat:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeDouble___double_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeDouble:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeBytes___byte_1ARRAY_int_java_lang_String]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    NSString * ObjCVar3 = toNSString(n3);
    [thiz  encodeBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 forKey:ObjCVar3];
    [ObjCVar3 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_containsValueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  containsValueForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeObjectForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  decodeObjectForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeBoolForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  decodeBoolForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeIntForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  decodeIntForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeInt32ForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  decodeInt32ForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeInt64ForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    long var0 = [thiz  decodeInt64ForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeFloatForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    float var0 = [thiz  decodeFloatForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeDoubleForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    double var0 = [thiz  decodeDoubleForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeBytesForKey___java_lang_String_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeInteger___int_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeInteger:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeIntegerForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  decodeIntegerForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeNXObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  encodeNXObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeNXObject__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz decodeNXObject];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeCGPoint___org_xmlvm_ios_CGPoint_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeCGPoint:toCGPoint(n1) forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeCGSize___org_xmlvm_ios_CGSize_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeCGSize:toCGSize(n1) forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeCGRect___org_xmlvm_ios_CGRect_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeCGRect:toCGRect(n1) forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeCGAffineTransform___org_xmlvm_ios_CGAffineTransform_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeCGAffineTransform:toCGAffineTransform(n1) forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_encodeUIEdgeInsets___org_xmlvm_ios_UIEdgeInsets_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeUIEdgeInsets:toUIEdgeInsets(n1) forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeCGPointForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    CGPoint var0 = [thiz  decodeCGPointForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeCGSizeForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    CGSize var0 = [thiz  decodeCGSizeForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeCGRectForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    CGRect var0 = [thiz  decodeCGRectForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeCGAffineTransformForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    CGAffineTransform var0 = [thiz  decodeCGAffineTransformForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCoder_decodeUIEdgeInsetsForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    UIEdgeInsets var0 = [thiz  decodeUIEdgeInsetsForKey:ObjCVar1];
    [ObjCVar1 release];


    return fromUIEdgeInsets(var0);
//XMLVM_END_WRAPPER
