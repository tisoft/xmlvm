
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSDateFormatter (NSDateFormatterWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSDateFormatter (NSDateFormatterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSDateFormatter.classInitialized)
        __INIT_org_xmlvm_ios_NSDateFormatter();
}
@end

void org_xmlvm_ios_NSDateFormatter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSFormatter_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSDateFormatter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSDateFormatter();
        org_xmlvm_ios_NSDateFormatter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSDateFormatter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSDateFormatter]
__DELETE_org_xmlvm_ios_NSFormatter(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter___INIT____java_lang_String_boolean]
NSString * ObjCVar1 = toNSString(n1);
    
    NSDateFormatter* var0 = [[NSDateFormatter alloc] initWithDateFormat:ObjCVar1 allowNaturalLanguage:n2];
    [ObjCVar1 release];

    org_xmlvm_ios_NSDateFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter___INIT___]
    NSDateFormatter* var0 = [[NSDateFormatter alloc ] init];
    org_xmlvm_ios_NSDateFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter___INIT___]
    NSDateFormatter* var0 = [[NSDateFormatter alloc ] init];
    org_xmlvm_ios_NSDateFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter___INIT___]

    NSDateFormatter* var0 = [[NSDateFormatter alloc]init];

    org_xmlvm_ios_NSDateFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_getObjectValue___Object_1ARRAY_java_lang_String_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

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

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_stringFromDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  stringFromDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_dateFromString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSDate* var0 = [thiz  dateFromString:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_localizedStringFromDate___org_xmlvm_ios_NSDate_int_int]

    NSString* var0 =  [NSDateFormatter  localizedStringFromDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) dateStyle:n2 timeStyle:n3];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_dateFormatFromTemplate___java_lang_String_int_org_xmlvm_ios_NSLocale]
NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 =  [NSDateFormatter  dateFormatFromTemplate:ObjCVar1 options:n2 locale:(NSLocale*) (((org_xmlvm_ios_NSLocale*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_dateFormat__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz dateFormat];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_dateStyle__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz dateStyle];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setDateStyle___int]

    XMLVM_VAR_THIZ;
    [thiz  setDateStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_timeStyle__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz timeStyle];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setTimeStyle___int]

    XMLVM_VAR_THIZ;
    [thiz  setTimeStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_locale__]

    XMLVM_VAR_THIZ;
    
    NSLocale* var0 = [thiz locale];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setLocale___org_xmlvm_ios_NSLocale]

    XMLVM_VAR_THIZ;
    [thiz  setLocale:(NSLocale*) (((org_xmlvm_ios_NSLocale*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_generatesCalendarDates__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz generatesCalendarDates];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setGeneratesCalendarDates___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setGeneratesCalendarDates:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_formatterBehavior__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz formatterBehavior];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setFormatterBehavior___int]

    XMLVM_VAR_THIZ;
    [thiz  setFormatterBehavior:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_defaultFormatterBehavior__]

    int var0 =  [NSDateFormatter defaultFormatterBehavior];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setDefaultFormatterBehavior___int]
 [NSDateFormatter  setDefaultFormatterBehavior:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setDateFormat___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setDateFormat:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_timeZone__]

    XMLVM_VAR_THIZ;
    
    NSTimeZone* var0 = [thiz timeZone];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setTimeZone___org_xmlvm_ios_NSTimeZone]

    XMLVM_VAR_THIZ;
    [thiz  setTimeZone:(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_calendar__]

    XMLVM_VAR_THIZ;
    
    NSCalendar* var0 = [thiz calendar];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setCalendar___org_xmlvm_ios_NSCalendar]

    XMLVM_VAR_THIZ;
    [thiz  setCalendar:(NSCalendar*) (((org_xmlvm_ios_NSCalendar*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_isLenient__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isLenient];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setLenient___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setLenient:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_twoDigitStartDate__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz twoDigitStartDate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setTwoDigitStartDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    [thiz  setTwoDigitStartDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_defaultDate__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz defaultDate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setDefaultDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    [thiz  setDefaultDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_eraSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz eraSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setEraSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setEraSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_monthSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz monthSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setMonthSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setMonthSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_shortMonthSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz shortMonthSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setShortMonthSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setShortMonthSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_weekdaySymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz weekdaySymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setWeekdaySymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setWeekdaySymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_shortWeekdaySymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz shortWeekdaySymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setShortWeekdaySymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setShortWeekdaySymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_AMSymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz AMSymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setAMSymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setAMSymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_PMSymbol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz PMSymbol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setPMSymbol___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPMSymbol:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_longEraSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz longEraSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setLongEraSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setLongEraSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_veryShortMonthSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz veryShortMonthSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setVeryShortMonthSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setVeryShortMonthSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_standaloneMonthSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz standaloneMonthSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setStandaloneMonthSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setStandaloneMonthSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_shortStandaloneMonthSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz shortStandaloneMonthSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setShortStandaloneMonthSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setShortStandaloneMonthSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_veryShortStandaloneMonthSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz veryShortStandaloneMonthSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setVeryShortStandaloneMonthSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setVeryShortStandaloneMonthSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_veryShortWeekdaySymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz veryShortWeekdaySymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setVeryShortWeekdaySymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setVeryShortWeekdaySymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_standaloneWeekdaySymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz standaloneWeekdaySymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setStandaloneWeekdaySymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setStandaloneWeekdaySymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_shortStandaloneWeekdaySymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz shortStandaloneWeekdaySymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setShortStandaloneWeekdaySymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setShortStandaloneWeekdaySymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_veryShortStandaloneWeekdaySymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz veryShortStandaloneWeekdaySymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setVeryShortStandaloneWeekdaySymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setVeryShortStandaloneWeekdaySymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_quarterSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz quarterSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setQuarterSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setQuarterSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_shortQuarterSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz shortQuarterSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setShortQuarterSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setShortQuarterSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_standaloneQuarterSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz standaloneQuarterSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setStandaloneQuarterSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setStandaloneQuarterSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_shortStandaloneQuarterSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz shortStandaloneQuarterSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setShortStandaloneQuarterSymbols___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setShortStandaloneQuarterSymbols:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_gregorianStartDate__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz gregorianStartDate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setGregorianStartDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    [thiz  setGregorianStartDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_doesRelativeDateFormatting__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz doesRelativeDateFormatting];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_setDoesRelativeDateFormatting___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setDoesRelativeDateFormatting:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateFormatter_allowsNaturalLanguage__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz allowsNaturalLanguage];

    return var0;
//XMLVM_END_WRAPPER
