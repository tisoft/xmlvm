
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSDecimalNumber (NSDecimalNumberWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSDecimalNumber (NSDecimalNumberWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSDecimalNumber.classInitialized)
        __INIT_org_xmlvm_ios_NSDecimalNumber();
}
@end

void org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSNumber_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSDecimalNumber class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSDecimalNumber();
        org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSDecimalNumber]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSDecimalNumber]
__DELETE_org_xmlvm_ios_NSNumber(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____long_short_boolean]

    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithMantissa:n1 exponent:n2 isNegative:n3];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____org_xmlvm_ios_NSDecimal]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithString:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____java_lang_String_java_lang_Object]
NSString * ObjCVar1 = toNSString(n1);
    
    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithString:ObjCVar1 locale:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];

    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT___]
    NSDecimalNumber* var0 = [[NSDecimalNumber alloc ] init];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____byte]

    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithChar:n1];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____short]

    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithShort:n1];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____int]

    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithInt:n1];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____long]

    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithLong:n1];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____float]

    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithFloat:n1];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____double]

    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithDouble:n1];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____boolean]

    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithBool:n1];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT___]
    NSDecimalNumber* var0 = [[NSDecimalNumber alloc ] init];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT____byte_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSDecimalNumber* var0 = [[NSDecimalNumber alloc] initWithBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ objCType:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT___]
    NSDecimalNumber* var0 = [[NSDecimalNumber alloc ] init];
    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber___INIT___]

    NSDecimalNumber* var0 = [[NSDecimalNumber alloc]init];

    org_xmlvm_ios_NSDecimalNumber_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_descriptionWithLocale___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  descriptionWithLocale:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalValue__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberWithMantissa___long_short_boolean]

    NSDecimalNumber* var0 =  [NSDecimalNumber  decimalNumberWithMantissa:n1 exponent:n2 isNegative:n3];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberWithDecimal___org_xmlvm_ios_NSDecimal]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberWithString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSDecimalNumber* var0 =  [NSDecimalNumber  decimalNumberWithString:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberWithString___java_lang_String_java_lang_Object]
NSString * ObjCVar1 = toNSString(n1);
    
    NSDecimalNumber* var0 =  [NSDecimalNumber  decimalNumberWithString:ObjCVar1 locale:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_zero__]

    NSDecimalNumber* var0 =  [NSDecimalNumber zero];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_one__]

    NSDecimalNumber* var0 =  [NSDecimalNumber one];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_minimumDecimalNumber__]

    NSDecimalNumber* var0 =  [NSDecimalNumber minimumDecimalNumber];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_maximumDecimalNumber__]

    NSDecimalNumber* var0 =  [NSDecimalNumber maximumDecimalNumber];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_notANumber__]

    NSDecimalNumber* var0 =  [NSDecimalNumber notANumber];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByAdding___org_xmlvm_ios_NSDecimalNumber]

    XMLVM_VAR_THIZ;
    
    NSDecimalNumber* var0 = [thiz  decimalNumberByAdding:(NSDecimalNumber*) (((org_xmlvm_ios_NSDecimalNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByAdding___org_xmlvm_ios_NSDecimalNumber_org_xmlvm_ios_NSDecimalNumberBehaviors]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberBySubtracting___org_xmlvm_ios_NSDecimalNumber]

    XMLVM_VAR_THIZ;
    
    NSDecimalNumber* var0 = [thiz  decimalNumberBySubtracting:(NSDecimalNumber*) (((org_xmlvm_ios_NSDecimalNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberBySubtracting___org_xmlvm_ios_NSDecimalNumber_org_xmlvm_ios_NSDecimalNumberBehaviors]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByMultiplyingBy___org_xmlvm_ios_NSDecimalNumber]

    XMLVM_VAR_THIZ;
    
    NSDecimalNumber* var0 = [thiz  decimalNumberByMultiplyingBy:(NSDecimalNumber*) (((org_xmlvm_ios_NSDecimalNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByMultiplyingBy___org_xmlvm_ios_NSDecimalNumber_org_xmlvm_ios_NSDecimalNumberBehaviors]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByDividingBy___org_xmlvm_ios_NSDecimalNumber]

    XMLVM_VAR_THIZ;
    
    NSDecimalNumber* var0 = [thiz  decimalNumberByDividingBy:(NSDecimalNumber*) (((org_xmlvm_ios_NSDecimalNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByDividingBy___org_xmlvm_ios_NSDecimalNumber_org_xmlvm_ios_NSDecimalNumberBehaviors]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByRaisingToPower___int]

    XMLVM_VAR_THIZ;
    
    NSDecimalNumber* var0 = [thiz  decimalNumberByRaisingToPower:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByRaisingToPower___int_org_xmlvm_ios_NSDecimalNumberBehaviors]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByMultiplyingByPowerOf10___short]

    XMLVM_VAR_THIZ;
    
    NSDecimalNumber* var0 = [thiz  decimalNumberByMultiplyingByPowerOf10:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByMultiplyingByPowerOf10___short_org_xmlvm_ios_NSDecimalNumberBehaviors]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_decimalNumberByRoundingAccordingToBehavior___org_xmlvm_ios_NSDecimalNumberBehaviors]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_compare___org_xmlvm_ios_NSNumber]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  compare:(NSNumber*) (((org_xmlvm_ios_NSNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_setDefaultBehavior___org_xmlvm_ios_NSDecimalNumberBehaviors]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_defaultBehavior__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_objCType__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumber_doubleValue__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz doubleValue];

    return var0;
//XMLVM_END_WRAPPER
