
//XMLVM_BEGIN_IMPLEMENTATION
@interface EKRecurrenceRule (EKRecurrenceRuleWrapperCategory)
+ (void) initialize_class;
@end

@implementation EKRecurrenceRule (EKRecurrenceRuleWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_EKRecurrenceRule.classInitialized)
        __INIT_org_xmlvm_ios_EKRecurrenceRule();
}
@end

void org_xmlvm_ios_EKRecurrenceRule_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [EKRecurrenceRule class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_EKRecurrenceRule();
        org_xmlvm_ios_EKRecurrenceRule_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_EKRecurrenceRule]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_EKRecurrenceRule]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule___INIT____int_int_org_xmlvm_ios_EKRecurrenceEnd]

    EKRecurrenceRule* var0 = [[EKRecurrenceRule alloc] initRecurrenceWithFrequency:n1 interval:n2 end:(EKRecurrenceEnd*) (((org_xmlvm_ios_EKRecurrenceEnd*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_EKRecurrenceRule_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule___INIT____int_int_java_util_List_java_util_List_java_util_List_java_util_List_java_util_List_java_util_List_org_xmlvm_ios_EKRecurrenceEnd]
NSArray * ObjCVar3 = toNSArray(n3);
    NSArray * ObjCVar4 = toNSArray(n4);
    NSArray * ObjCVar5 = toNSArray(n5);
    NSArray * ObjCVar6 = toNSArray(n6);
    NSArray * ObjCVar7 = toNSArray(n7);
    NSArray * ObjCVar8 = toNSArray(n8);
    
    EKRecurrenceRule* var0 = [[EKRecurrenceRule alloc] initRecurrenceWithFrequency:n1 interval:n2 daysOfTheWeek:ObjCVar3 daysOfTheMonth:ObjCVar4 monthsOfTheYear:ObjCVar5 weeksOfTheYear:ObjCVar6 daysOfTheYear:ObjCVar7 setPositions:ObjCVar8 end:(EKRecurrenceEnd*) (((org_xmlvm_ios_EKRecurrenceEnd*) n9)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar3 release];

    [ObjCVar4 release];

    [ObjCVar5 release];

    [ObjCVar6 release];

    [ObjCVar7 release];

    [ObjCVar8 release];

    org_xmlvm_ios_EKRecurrenceRule_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule___INIT___]
    EKRecurrenceRule* var0 = [[EKRecurrenceRule alloc ] init];
    org_xmlvm_ios_EKRecurrenceRule_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule___INIT___]

    EKRecurrenceRule* var0 = [[EKRecurrenceRule alloc]init];

    org_xmlvm_ios_EKRecurrenceRule_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getCalendarIdentifier__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz calendarIdentifier];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getRecurrenceEnd__]

    XMLVM_VAR_THIZ;
    EKRecurrenceEnd* var0 = [thiz recurrenceEnd];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_setRecurrenceEnd___org_xmlvm_ios_EKRecurrenceEnd]

    XMLVM_VAR_THIZ;
    [thiz setRecurrenceEnd:(EKRecurrenceEnd*) (((org_xmlvm_ios_EKRecurrenceEnd*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getFrequency__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz frequency];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getInterval__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz interval];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getFirstDayOfTheWeek__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz firstDayOfTheWeek];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getDaysOfTheWeek__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz daysOfTheWeek];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getDaysOfTheMonth__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz daysOfTheMonth];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getDaysOfTheYear__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz daysOfTheYear];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getWeeksOfTheYear__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz weeksOfTheYear];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getMonthsOfTheYear__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz monthsOfTheYear];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceRule_getSetPositions__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz setPositions];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
