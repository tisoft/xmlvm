
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSDate (NSDateWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSDate (NSDateWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSDate.classInitialized)
        __INIT_org_xmlvm_ios_NSDate();
}
@end

void org_xmlvm_ios_NSDate_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSDate class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSDate();
        org_xmlvm_ios_NSDate_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSDate]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSDate]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate___INIT___]

    NSDate* var0 = [[NSDate alloc]init];

    org_xmlvm_ios_NSDate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate___INIT____double_org_xmlvm_ios_NSDate_ReferenceDate]

    if((org_xmlvm_ios_NSDate_ReferenceDate*) n2 == org_xmlvm_ios_NSDate_ReferenceDate_GET_Since1970())
    {
    NSDate* var0 = [[NSDate alloc] initWithTimeIntervalSince1970:n1];
    org_xmlvm_ios_NSDate_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSDate_ReferenceDate*) n2 == org_xmlvm_ios_NSDate_ReferenceDate_GET_SinceDate())
    {
    NSDate* var0 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:n1];
    org_xmlvm_ios_NSDate_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSDate_ReferenceDate*) n2 == org_xmlvm_ios_NSDate_ReferenceDate_GET_SinceNow())
    {
    NSDate* var0 = [[NSDate alloc] initWithTimeIntervalSinceNow:n1];
    org_xmlvm_ios_NSDate_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate___INIT____double_org_xmlvm_ios_NSDate]

    NSDate* var0 = [[NSDate alloc] initWithTimeInterval:n1 sinceDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSDate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate___INIT___]
    NSDate* var0 = [[NSDate alloc ] init];
    org_xmlvm_ios_NSDate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_timeIntervalSinceReferenceDate__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz timeIntervalSinceReferenceDate];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_timeIntervalSinceDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz  timeIntervalSinceDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_timeIntervalSinceNow__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz timeIntervalSinceNow];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_timeIntervalSince1970__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz timeIntervalSince1970];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_addTimeInterval___double]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  addTimeInterval:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_dateByAddingTimeInterval___double]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  dateByAddingTimeInterval:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_earlierDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz  earlierDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_laterDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz  laterDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_compare___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  compare:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_isEqualToDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isEqualToDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_description__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz description];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_descriptionWithLocale___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  descriptionWithLocale:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_timeIntervalSinceReferenceDate__]

    double var0 =  [NSDate timeIntervalSinceReferenceDate];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_date__]

    NSDate* var0 =  [NSDate date];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_dateWithTimeIntervalSinceNow___double]

    NSDate* var0 =  [NSDate  dateWithTimeIntervalSinceNow:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_dateWithTimeIntervalSinceReferenceDate___double]

    NSDate* var0 =  [NSDate  dateWithTimeIntervalSinceReferenceDate:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_dateWithTimeIntervalSince1970___double]

    NSDate* var0 =  [NSDate  dateWithTimeIntervalSince1970:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_dateWithTimeInterval___double_org_xmlvm_ios_NSDate]

    NSDate* var0 =  [NSDate  dateWithTimeInterval:n1 sinceDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_distantFuture__]

    NSObject* var0 =  [NSDate distantFuture];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDate_distantPast__]

    NSObject* var0 =  [NSDate distantPast];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
