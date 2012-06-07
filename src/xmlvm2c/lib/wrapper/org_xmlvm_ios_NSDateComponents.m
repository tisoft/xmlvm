
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSDateComponents (NSDateComponentsWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSDateComponents (NSDateComponentsWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSDateComponents.classInitialized)
        __INIT_org_xmlvm_ios_NSDateComponents();
}
@end

void org_xmlvm_ios_NSDateComponents_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSDateComponents class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSDateComponents();
        org_xmlvm_ios_NSDateComponents_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSDateComponents]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSDateComponents]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents___INIT___]
    NSDateComponents* var0 = [[NSDateComponents alloc ] init];
    org_xmlvm_ios_NSDateComponents_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents___INIT___]

    NSDateComponents* var0 = [[NSDateComponents alloc]init];

    org_xmlvm_ios_NSDateComponents_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_calendar__]

    XMLVM_VAR_THIZ;
    
    NSCalendar* var0 = [thiz calendar];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_timeZone__]

    XMLVM_VAR_THIZ;
    
    NSTimeZone* var0 = [thiz timeZone];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_era__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz era];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_year__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz year];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_month__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz month];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_day__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz day];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_hour__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz hour];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_minute__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz minute];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_second__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz second];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_week__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz week];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_weekday__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz weekday];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_weekdayOrdinal__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz weekdayOrdinal];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_quarter__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz quarter];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setCalendar___org_xmlvm_ios_NSCalendar]

    XMLVM_VAR_THIZ;
    [thiz  setCalendar:(NSCalendar*) (((org_xmlvm_ios_NSCalendar*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setTimeZone___org_xmlvm_ios_NSTimeZone]

    XMLVM_VAR_THIZ;
    [thiz  setTimeZone:(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setEra___int]

    XMLVM_VAR_THIZ;
    [thiz  setEra:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setYear___int]

    XMLVM_VAR_THIZ;
    [thiz  setYear:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setMonth___int]

    XMLVM_VAR_THIZ;
    [thiz  setMonth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setDay___int]

    XMLVM_VAR_THIZ;
    [thiz  setDay:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setHour___int]

    XMLVM_VAR_THIZ;
    [thiz  setHour:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setMinute___int]

    XMLVM_VAR_THIZ;
    [thiz  setMinute:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setSecond___int]

    XMLVM_VAR_THIZ;
    [thiz  setSecond:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setWeek___int]

    XMLVM_VAR_THIZ;
    [thiz  setWeek:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setWeekday___int]

    XMLVM_VAR_THIZ;
    [thiz  setWeekday:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setWeekdayOrdinal___int]

    XMLVM_VAR_THIZ;
    [thiz  setWeekdayOrdinal:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_setQuarter___int]

    XMLVM_VAR_THIZ;
    [thiz  setQuarter:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDateComponents_date__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz date];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
