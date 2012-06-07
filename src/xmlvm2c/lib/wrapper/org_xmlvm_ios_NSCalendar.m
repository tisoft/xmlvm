
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSCalendar (NSCalendarWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSCalendar (NSCalendarWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSCalendar.classInitialized)
        __INIT_org_xmlvm_ios_NSCalendar();
}
@end

void org_xmlvm_ios_NSCalendar_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSCalendar class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSCalendar();
        org_xmlvm_ios_NSCalendar_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSCalendar]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSCalendar]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSCalendar* var0 = [[NSCalendar alloc] initWithCalendarIdentifier:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSCalendar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar___INIT___]
    NSCalendar* var0 = [[NSCalendar alloc ] init];
    org_xmlvm_ios_NSCalendar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar___INIT___]

    NSCalendar* var0 = [[NSCalendar alloc]init];

    org_xmlvm_ios_NSCalendar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_currentCalendar__]

    NSObject* var0 =  [NSCalendar currentCalendar];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_autoupdatingCurrentCalendar__]

    NSObject* var0 =  [NSCalendar autoupdatingCurrentCalendar];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_calendarIdentifier__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz calendarIdentifier];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_setLocale___org_xmlvm_ios_NSLocale]

    XMLVM_VAR_THIZ;
    [thiz  setLocale:(NSLocale*) (((org_xmlvm_ios_NSLocale*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_locale__]

    XMLVM_VAR_THIZ;
    
    NSLocale* var0 = [thiz locale];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_setTimeZone___org_xmlvm_ios_NSTimeZone]

    XMLVM_VAR_THIZ;
    [thiz  setTimeZone:(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_timeZone__]

    XMLVM_VAR_THIZ;
    
    NSTimeZone* var0 = [thiz timeZone];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_setFirstWeekday___int]

    XMLVM_VAR_THIZ;
    [thiz  setFirstWeekday:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_firstWeekday__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz firstWeekday];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_setMinimumDaysInFirstWeek___int]

    XMLVM_VAR_THIZ;
    [thiz  setMinimumDaysInFirstWeek:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_minimumDaysInFirstWeek__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz minimumDaysInFirstWeek];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_minimumRangeOfUnit___int]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  minimumRangeOfUnit:n1];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_maximumRangeOfUnit___int]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  maximumRangeOfUnit:n1];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_rangeOfUnit___int_int_org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  rangeOfUnit:n1 inUnit:n2 forDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_ordinalityOfUnit___int_int_org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  ordinalityOfUnit:n1 inUnit:n2 forDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_rangeOfUnit___int_org_xmlvm_ios_Reference_double_1ARRAY_org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSDate, var2, jObject2);
    XMLVM_VAR_DOUBLE_ARRAY(a3, n3); 
    
    BOOL var0 = [thiz  rangeOfUnit:n1 startDate:&var2 interval:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ forDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_dateFromComponents___org_xmlvm_ios_NSDateComponents]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz  dateFromComponents:(NSDateComponents*) (((org_xmlvm_ios_NSDateComponents*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_components___int_org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    NSDateComponents* var0 = [thiz  components:n1 fromDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_dateByAddingComponents___org_xmlvm_ios_NSDateComponents_org_xmlvm_ios_NSDate_int]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz  dateByAddingComponents:(NSDateComponents*) (((org_xmlvm_ios_NSDateComponents*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) toDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n3];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCalendar_components___int_org_xmlvm_ios_NSDate_org_xmlvm_ios_NSDate_int]

    XMLVM_VAR_THIZ;
    
    NSDateComponents* var0 = [thiz  components:n1 fromDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) toDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n4];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
