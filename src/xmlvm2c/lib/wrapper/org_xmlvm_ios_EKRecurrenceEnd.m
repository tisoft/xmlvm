
//XMLVM_BEGIN_IMPLEMENTATION
@interface EKRecurrenceEnd (EKRecurrenceEndWrapperCategory)
+ (void) initialize_class;
@end

@implementation EKRecurrenceEnd (EKRecurrenceEndWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_EKRecurrenceEnd.classInitialized)
        __INIT_org_xmlvm_ios_EKRecurrenceEnd();
}
@end

void org_xmlvm_ios_EKRecurrenceEnd_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [EKRecurrenceEnd class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_EKRecurrenceEnd();
        org_xmlvm_ios_EKRecurrenceEnd_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_EKRecurrenceEnd]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_EKRecurrenceEnd]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceEnd___INIT___]
    EKRecurrenceEnd* var0 = [[EKRecurrenceEnd alloc ] init];
    org_xmlvm_ios_EKRecurrenceEnd_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceEnd___INIT___]

    EKRecurrenceEnd* var0 = [[EKRecurrenceEnd alloc]init];

    org_xmlvm_ios_EKRecurrenceEnd_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceEnd_recurrenceEndWithEndDate___org_xmlvm_ios_NSDate]

    EKRecurrenceEnd* var0 =  [EKRecurrenceEnd  recurrenceEndWithEndDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceEnd_recurrenceEndWithOccurrenceCount___int]

    EKRecurrenceEnd* var0 =  [EKRecurrenceEnd  recurrenceEndWithOccurrenceCount:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceEnd_getEndDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz endDate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKRecurrenceEnd_getOccurrenceCount__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz occurrenceCount];
    
    return var0;
//XMLVM_END_WRAPPER
