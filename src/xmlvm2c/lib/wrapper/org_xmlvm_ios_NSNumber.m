
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSNumber (NSNumberWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSNumber (NSNumberWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSNumber.classInitialized)
        __INIT_org_xmlvm_ios_NSNumber();
}
@end

void org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSValue_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSNumber class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSNumber();
        org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSNumber]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSNumber]
__DELETE_org_xmlvm_ios_NSValue(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT____byte]

    NSNumber* var0 = [[NSNumber alloc] initWithChar:n1];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT____short]

    NSNumber* var0 = [[NSNumber alloc] initWithShort:n1];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT____int]

    NSNumber* var0 = [[NSNumber alloc] initWithInt:n1];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT____long]

    NSNumber* var0 = [[NSNumber alloc] initWithLong:n1];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT____float]

    NSNumber* var0 = [[NSNumber alloc] initWithFloat:n1];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT____double]

    NSNumber* var0 = [[NSNumber alloc] initWithDouble:n1];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT____boolean]

    NSNumber* var0 = [[NSNumber alloc] initWithBool:n1];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT___]
    NSNumber* var0 = [[NSNumber alloc ] init];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT____byte_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSNumber* var0 = [[NSNumber alloc] initWithBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ objCType:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT___]
    NSNumber* var0 = [[NSNumber alloc ] init];
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber___INIT___]

    NSNumber* var0 = [[NSNumber alloc]init];

    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_decimalValue__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_charValue__]

    XMLVM_VAR_THIZ;
    
    Byte var0 = [thiz charValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_unsignedCharValue__]

    XMLVM_VAR_THIZ;
    
    Byte var0 = [thiz unsignedCharValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_shortValue__]

    XMLVM_VAR_THIZ;
    
    short var0 = [thiz shortValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_unsignedShortValue__]

    XMLVM_VAR_THIZ;
    
    short var0 = [thiz unsignedShortValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_intValue__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz intValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_unsignedIntValue__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz unsignedIntValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_longValue__]

    XMLVM_VAR_THIZ;
    
    long var0 = [thiz longValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_unsignedLongValue__]

    XMLVM_VAR_THIZ;
    
    long var0 = [thiz unsignedLongValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_longLongValue__]

    XMLVM_VAR_THIZ;
    
    long var0 = [thiz longLongValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_unsignedLongLongValue__]

    XMLVM_VAR_THIZ;
    
    long var0 = [thiz unsignedLongLongValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_floatValue__]

    XMLVM_VAR_THIZ;
    
    float var0 = [thiz floatValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_doubleValue__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz doubleValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_boolValue__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz boolValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_integerValue__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz integerValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_unsignedIntegerValue__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz unsignedIntegerValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_stringValue__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz stringValue];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_compare___org_xmlvm_ios_NSNumber]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  compare:(NSNumber*) (((org_xmlvm_ios_NSNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_isEqualToNumber___org_xmlvm_ios_NSNumber]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isEqualToNumber:(NSNumber*) (((org_xmlvm_ios_NSNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_descriptionWithLocale___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  descriptionWithLocale:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithChar___byte]

    NSNumber* var0 =  [NSNumber  numberWithChar:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithUnsignedChar___byte]

    NSNumber* var0 =  [NSNumber  numberWithUnsignedChar:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithShort___short]

    NSNumber* var0 =  [NSNumber  numberWithShort:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithUnsignedShort___short]

    NSNumber* var0 =  [NSNumber  numberWithUnsignedShort:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithInt___int]

    NSNumber* var0 =  [NSNumber  numberWithInt:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithUnsignedInt___int]

    NSNumber* var0 =  [NSNumber  numberWithUnsignedInt:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithLong___long]

    NSNumber* var0 =  [NSNumber  numberWithLong:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithUnsignedLong___long]

    NSNumber* var0 =  [NSNumber  numberWithUnsignedLong:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithLongLong___long]

    NSNumber* var0 =  [NSNumber  numberWithLongLong:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithUnsignedLongLong___long]

    NSNumber* var0 =  [NSNumber  numberWithUnsignedLongLong:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithFloat___float]

    NSNumber* var0 =  [NSNumber  numberWithFloat:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithDouble___double]

    NSNumber* var0 =  [NSNumber  numberWithDouble:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithBool___boolean]

    NSNumber* var0 =  [NSNumber  numberWithBool:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithInteger___int]

    NSNumber* var0 =  [NSNumber  numberWithInteger:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumber_numberWithUnsignedInteger___int]

    NSNumber* var0 =  [NSNumber  numberWithUnsignedInteger:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
