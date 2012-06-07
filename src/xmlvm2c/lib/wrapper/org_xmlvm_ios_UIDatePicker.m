
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIDatePicker (UIDatePickerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIDatePicker (UIDatePickerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIDatePicker.classInitialized)
        __INIT_org_xmlvm_ios_UIDatePicker();
}
@end

void org_xmlvm_ios_UIDatePicker_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIDatePicker class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIDatePicker();
        org_xmlvm_ios_UIDatePicker_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIDatePicker]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIDatePicker]
__DELETE_org_xmlvm_ios_UIControl(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker___INIT___]
    UIDatePicker* var0 = [[UIDatePicker alloc ] init];
    org_xmlvm_ios_UIDatePicker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker___INIT___]
    UIDatePicker* var0 = [[UIDatePicker alloc ] init];
    org_xmlvm_ios_UIDatePicker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker___INIT____org_xmlvm_ios_CGRect]

    UIDatePicker* var0 = [[UIDatePicker alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIDatePicker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker___INIT___]
    UIDatePicker* var0 = [[UIDatePicker alloc ] init];
    org_xmlvm_ios_UIDatePicker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker___INIT___]
    UIDatePicker* var0 = [[UIDatePicker alloc ] init];
    org_xmlvm_ios_UIDatePicker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker___INIT___]

    UIDatePicker* var0 = [[UIDatePicker alloc]init];

    org_xmlvm_ios_UIDatePicker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_getDatePickerMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz datePickerMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setDatePickerMode___int]

    XMLVM_VAR_THIZ;
    [thiz setDatePickerMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_getLocale__]

    XMLVM_VAR_THIZ;
    NSLocale* var0 = [thiz locale];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setLocale___org_xmlvm_ios_NSLocale]

    XMLVM_VAR_THIZ;
    [thiz setLocale:(NSLocale*) (((org_xmlvm_ios_NSLocale*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_getTimeZone__]

    XMLVM_VAR_THIZ;
    NSTimeZone* var0 = [thiz timeZone];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setTimeZone___org_xmlvm_ios_NSTimeZone]

    XMLVM_VAR_THIZ;
    [thiz setTimeZone:(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_getCalendar__]

    XMLVM_VAR_THIZ;
    NSCalendar* var0 = [thiz calendar];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setCalendar___org_xmlvm_ios_NSCalendar]

    XMLVM_VAR_THIZ;
    [thiz setCalendar:(NSCalendar*) (((org_xmlvm_ios_NSCalendar*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_getDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz date];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    [thiz setDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_getMinimumDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz minimumDate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setMinimumDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    [thiz setMinimumDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_getMaximumDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz maximumDate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setMaximumDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    [thiz setMaximumDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_getCountDownDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz countDownDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setCountDownDuration___double]

    XMLVM_VAR_THIZ;
    [thiz setCountDownDuration:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_getMinuteInterval__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz minuteInterval];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setMinuteInterval___int]

    XMLVM_VAR_THIZ;
    [thiz setMinuteInterval:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDatePicker_setDate___org_xmlvm_ios_NSDate_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n2];

    
//XMLVM_END_WRAPPER
