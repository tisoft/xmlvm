
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSNumberFormatter (NSNumberFormatterWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSNumberFormatter (NSNumberFormatterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSNumberFormatter.classInitialized)
        __INIT_org_xmlvm_ios_NSNumberFormatter();
}
@end

void org_xmlvm_ios_NSNumberFormatter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSFormatter_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSNumberFormatter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSNumberFormatter();
        org_xmlvm_ios_NSNumberFormatter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSNumberFormatter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSNumberFormatter]
__DELETE_org_xmlvm_ios_NSFormatter(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter___INIT___]
    NSNumberFormatter* var0 = [[NSNumberFormatter alloc ] init];
    org_xmlvm_ios_NSNumberFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter___INIT___]
    NSNumberFormatter* var0 = [[NSNumberFormatter alloc ] init];
    org_xmlvm_ios_NSNumberFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter___INIT___]

    NSNumberFormatter* var0 = [[NSNumberFormatter alloc]init];

    org_xmlvm_ios_NSNumberFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_getObjectValue___Object_1ARRAY_java_lang_String_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    NSRange var3= toNSRange(jObject3);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    BOOL var0 = [thiz  getObjectValue:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ forString:ObjCVar2 range:&var3 error:&var4];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_stringFromNumber___org_xmlvm_ios_NSNumber]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  stringFromNumber:(NSNumber*) (((org_xmlvm_ios_NSNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_numberFromString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSNumber* var0 = [thiz  numberFromString:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_localizedStringFromNumber___org_xmlvm_ios_NSNumber_int]

    NSString* var0 =  [NSNumberFormatter  localizedStringFromNumber:(NSNumber*) (((org_xmlvm_ios_NSNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) numberStyle:n2];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_numberStyle__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz numberStyle];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setNumberStyle___int]

    XMLVM_VAR_THIZ;
    [thiz  setNumberStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_locale__]

    XMLVM_VAR_THIZ;
    
    NSLocale* var0 = [thiz locale];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setLocale___org_xmlvm_ios_NSLocale]

    XMLVM_VAR_THIZ;
    [thiz  setLocale:(NSLocale*) (((org_xmlvm_ios_NSLocale*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_generatesDecimalNumbers__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz generatesDecimalNumbers];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setGeneratesDecimalNumbers___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setGeneratesDecimalNumbers:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_formatterBehavior__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz formatterBehavior];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setFormatterBehavior___int]

    XMLVM_VAR_THIZ;
    [thiz  setFormatterBehavior:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_defaultFormatterBehavior__]

    int var0 =  [NSNumberFormatter defaultFormatterBehavior];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setDefaultFormatterBehavior___int]
 [NSNumberFormatter  setDefaultFormatterBehavior:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_negativeFormat__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz negativeFormat];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setNegativeFormat___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setNegativeFormat:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_textAttributesForNegativeValues__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setTextAttributesForNegativeValues___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_positiveFormat__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz positiveFormat];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPositiveFormat___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPositiveFormat:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_textAttributesForPositiveValues__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setTextAttributesForPositiveValues___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_allowsFloats__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz allowsFloats];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setAllowsFloats___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setAllowsFloats:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_decimalSeparator__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz decimalSeparator];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setDecimalSeparator___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setDecimalSeparator:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_alwaysShowsDecimalSeparator__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz alwaysShowsDecimalSeparator];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setAlwaysShowsDecimalSeparator___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setAlwaysShowsDecimalSeparator:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_currencyDecimalSeparator__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz currencyDecimalSeparator];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setCurrencyDecimalSeparator___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setCurrencyDecimalSeparator:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_usesGroupingSeparator__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz usesGroupingSeparator];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setUsesGroupingSeparator___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setUsesGroupingSeparator:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_groupingSeparator__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz groupingSeparator];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setGroupingSeparator___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setGroupingSeparator:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_zeroSymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz zeroSymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setZeroSymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setZeroSymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_textAttributesForZero__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setTextAttributesForZero___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_nilSymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz nilSymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setNilSymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setNilSymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_textAttributesForNil__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setTextAttributesForNil___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_notANumberSymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz notANumberSymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setNotANumberSymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setNotANumberSymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_textAttributesForNotANumber__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setTextAttributesForNotANumber___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_positiveInfinitySymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz positiveInfinitySymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPositiveInfinitySymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPositiveInfinitySymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_textAttributesForPositiveInfinity__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setTextAttributesForPositiveInfinity___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_negativeInfinitySymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz negativeInfinitySymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setNegativeInfinitySymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setNegativeInfinitySymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_textAttributesForNegativeInfinity__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setTextAttributesForNegativeInfinity___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_positivePrefix__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz positivePrefix];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPositivePrefix___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPositivePrefix:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_positiveSuffix__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz positiveSuffix];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPositiveSuffix___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPositiveSuffix:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_negativePrefix__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz negativePrefix];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setNegativePrefix___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setNegativePrefix:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_negativeSuffix__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz negativeSuffix];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setNegativeSuffix___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setNegativeSuffix:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_currencyCode__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz currencyCode];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setCurrencyCode___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setCurrencyCode:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_currencySymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz currencySymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setCurrencySymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setCurrencySymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_internationalCurrencySymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz internationalCurrencySymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setInternationalCurrencySymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setInternationalCurrencySymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_percentSymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz percentSymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPercentSymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPercentSymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_perMillSymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz perMillSymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPerMillSymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPerMillSymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_minusSign__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz minusSign];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMinusSign___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setMinusSign:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_plusSign__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz plusSign];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPlusSign___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPlusSign:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_exponentSymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz exponentSymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setExponentSymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setExponentSymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_groupingSize__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz groupingSize];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setGroupingSize___int]

    XMLVM_VAR_THIZ;
    [thiz  setGroupingSize:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_secondaryGroupingSize__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz secondaryGroupingSize];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setSecondaryGroupingSize___int]

    XMLVM_VAR_THIZ;
    [thiz  setSecondaryGroupingSize:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_multiplier__]

    XMLVM_VAR_THIZ;
    
    NSNumber* var0 = [thiz multiplier];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMultiplier___org_xmlvm_ios_NSNumber]

    XMLVM_VAR_THIZ;
    [thiz  setMultiplier:(NSNumber*) (((org_xmlvm_ios_NSNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_formatWidth__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz formatWidth];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setFormatWidth___int]

    XMLVM_VAR_THIZ;
    [thiz  setFormatWidth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_paddingCharacter__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz paddingCharacter];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPaddingCharacter___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPaddingCharacter:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_paddingPosition__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz paddingPosition];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPaddingPosition___int]

    XMLVM_VAR_THIZ;
    [thiz  setPaddingPosition:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_roundingMode__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz roundingMode];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setRoundingMode___int]

    XMLVM_VAR_THIZ;
    [thiz  setRoundingMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_roundingIncrement__]

    XMLVM_VAR_THIZ;
    
    NSNumber* var0 = [thiz roundingIncrement];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setRoundingIncrement___org_xmlvm_ios_NSNumber]

    XMLVM_VAR_THIZ;
    [thiz  setRoundingIncrement:(NSNumber*) (((org_xmlvm_ios_NSNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_minimumIntegerDigits__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz minimumIntegerDigits];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMinimumIntegerDigits___int]

    XMLVM_VAR_THIZ;
    [thiz  setMinimumIntegerDigits:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_maximumIntegerDigits__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz maximumIntegerDigits];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMaximumIntegerDigits___int]

    XMLVM_VAR_THIZ;
    [thiz  setMaximumIntegerDigits:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_minimumFractionDigits__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz minimumFractionDigits];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMinimumFractionDigits___int]

    XMLVM_VAR_THIZ;
    [thiz  setMinimumFractionDigits:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_maximumFractionDigits__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz maximumFractionDigits];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMaximumFractionDigits___int]

    XMLVM_VAR_THIZ;
    [thiz  setMaximumFractionDigits:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_minimum__]

    XMLVM_VAR_THIZ;
    
    NSNumber* var0 = [thiz minimum];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMinimum___org_xmlvm_ios_NSNumber]

    XMLVM_VAR_THIZ;
    [thiz  setMinimum:(NSNumber*) (((org_xmlvm_ios_NSNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_maximum__]

    XMLVM_VAR_THIZ;
    
    NSNumber* var0 = [thiz maximum];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMaximum___org_xmlvm_ios_NSNumber]

    XMLVM_VAR_THIZ;
    [thiz  setMaximum:(NSNumber*) (((org_xmlvm_ios_NSNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_currencyGroupingSeparator__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz currencyGroupingSeparator];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setCurrencyGroupingSeparator___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setCurrencyGroupingSeparator:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_isLenient__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isLenient];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setLenient___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setLenient:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_usesSignificantDigits__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz usesSignificantDigits];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setUsesSignificantDigits___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setUsesSignificantDigits:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_minimumSignificantDigits__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz minimumSignificantDigits];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMinimumSignificantDigits___int]

    XMLVM_VAR_THIZ;
    [thiz  setMinimumSignificantDigits:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_maximumSignificantDigits__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz maximumSignificantDigits];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMaximumSignificantDigits___int]

    XMLVM_VAR_THIZ;
    [thiz  setMaximumSignificantDigits:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_isPartialStringValidationEnabled__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isPartialStringValidationEnabled];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setPartialStringValidationEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setPartialStringValidationEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_hasThousandSeparators__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz hasThousandSeparators];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setHasThousandSeparators___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setHasThousandSeparators:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_thousandSeparator__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz thousandSeparator];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setThousandSeparator___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setThousandSeparator:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_localizesFormat__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz localizesFormat];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setLocalizesFormat___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setLocalizesFormat:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_format__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz format];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setFormat___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setFormat:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_attributedStringForZero__]

    XMLVM_VAR_THIZ;
    
    NSAttributedString* var0 = [thiz attributedStringForZero];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setAttributedStringForZero___org_xmlvm_ios_NSAttributedString]

    XMLVM_VAR_THIZ;
    [thiz  setAttributedStringForZero:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_attributedStringForNil__]

    XMLVM_VAR_THIZ;
    
    NSAttributedString* var0 = [thiz attributedStringForNil];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setAttributedStringForNil___org_xmlvm_ios_NSAttributedString]

    XMLVM_VAR_THIZ;
    [thiz  setAttributedStringForNil:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_attributedStringForNotANumber__]

    XMLVM_VAR_THIZ;
    
    NSAttributedString* var0 = [thiz attributedStringForNotANumber];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setAttributedStringForNotANumber___org_xmlvm_ios_NSAttributedString]

    XMLVM_VAR_THIZ;
    [thiz  setAttributedStringForNotANumber:(NSAttributedString*) (((org_xmlvm_ios_NSAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_roundingBehavior__]

    XMLVM_VAR_THIZ;
    
    NSDecimalNumberHandler* var0 = [thiz roundingBehavior];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setRoundingBehavior___org_xmlvm_ios_NSDecimalNumberHandler]

    XMLVM_VAR_THIZ;
    [thiz  setRoundingBehavior:(NSDecimalNumberHandler*) (((org_xmlvm_ios_NSDecimalNumberHandler*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMinimum___org_xmlvm_ios_NSDecimalNumber]

    XMLVM_VAR_THIZ;
    [thiz  setMinimum:(NSDecimalNumber*) (((org_xmlvm_ios_NSDecimalNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNumberFormatter_setMaximum___org_xmlvm_ios_NSDecimalNumber]

    XMLVM_VAR_THIZ;
    [thiz  setMaximum:(NSDecimalNumber*) (((org_xmlvm_ios_NSDecimalNumber*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
