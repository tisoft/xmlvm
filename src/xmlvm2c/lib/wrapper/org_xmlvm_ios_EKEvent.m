
//XMLVM_BEGIN_IMPLEMENTATION
@interface EKEvent (EKEventWrapperCategory)
+ (void) initialize_class;
@end

@implementation EKEvent (EKEventWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_EKEvent.classInitialized)
        __INIT_org_xmlvm_ios_EKEvent();
}
@end

void org_xmlvm_ios_EKEvent_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [EKEvent class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_EKEvent();
        org_xmlvm_ios_EKEvent_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_EKEvent]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_EKEvent]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent___INIT___]
    EKEvent* var0 = [[EKEvent alloc ] init];
    org_xmlvm_ios_EKEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent___INIT___]

    EKEvent* var0 = [[EKEvent alloc]init];

    org_xmlvm_ios_EKEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_eventWithEventStore___org_xmlvm_ios_EKEventStore]

    EKEvent* var0 =  [EKEvent  eventWithEventStore:(EKEventStore*) (((org_xmlvm_ios_EKEventStore*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getEventIdentifier__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz eventIdentifier];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getTitle__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz title];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setTitle___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setTitle:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getLocation__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz location];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setLocation___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setLocation:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getCalendar__]

    XMLVM_VAR_THIZ;
    EKCalendar* var0 = [thiz calendar];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setCalendar___org_xmlvm_ios_EKCalendar]

    XMLVM_VAR_THIZ;
    [thiz setCalendar:(EKCalendar*) (((org_xmlvm_ios_EKCalendar*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getNotes__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz notes];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setNotes___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setNotes:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getLastModifiedDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz lastModifiedDate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getAlarms__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz alarms];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setAlarms___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setAlarms:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_addAlarm___org_xmlvm_ios_EKAlarm]

    XMLVM_VAR_THIZ;
    [thiz  addAlarm:(EKAlarm*) (((org_xmlvm_ios_EKAlarm*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_removeAlarm___org_xmlvm_ios_EKAlarm]

    XMLVM_VAR_THIZ;
    [thiz  removeAlarm:(EKAlarm*) (((org_xmlvm_ios_EKAlarm*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_isAllDay__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isAllDay];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setAllDay___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllDay:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getStartDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz startDate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setStartDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    [thiz setStartDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getEndDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz endDate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setEndDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    [thiz setEndDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_compareStartDateWithEvent___org_xmlvm_ios_EKEvent]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  compareStartDateWithEvent:(EKEvent*) (((org_xmlvm_ios_EKEvent*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getAttendees__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz attendees];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getOrganizer__]

    XMLVM_VAR_THIZ;
    EKParticipant* var0 = [thiz organizer];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getRecurrenceRule__]

    XMLVM_VAR_THIZ;
    EKRecurrenceRule* var0 = [thiz recurrenceRule];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setRecurrenceRule___org_xmlvm_ios_EKRecurrenceRule]

    XMLVM_VAR_THIZ;
    [thiz setRecurrenceRule:(EKRecurrenceRule*) (((org_xmlvm_ios_EKRecurrenceRule*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getAvailability__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz availability];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_setAvailability___int]

    XMLVM_VAR_THIZ;
    [thiz setAvailability:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getStatus__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz status];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_getIsDetached__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isDetached];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEvent_refresh__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz refresh];

    return var0;
//XMLVM_END_WRAPPER
