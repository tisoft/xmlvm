
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSTimeZone (NSTimeZoneWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSTimeZone (NSTimeZoneWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSTimeZone.classInitialized)
        __INIT_org_xmlvm_ios_NSTimeZone();
}
@end

void org_xmlvm_ios_NSTimeZone_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSTimeZone class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSTimeZone();
        org_xmlvm_ios_NSTimeZone_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSTimeZone]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSTimeZone]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSTimeZone* var0 = [[NSTimeZone alloc] initWithName:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSTimeZone_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone___INIT____java_lang_String_org_xmlvm_ios_NSData]
NSString * ObjCVar1 = toNSString(n1);
    
    NSTimeZone* var0 = [[NSTimeZone alloc] initWithName:ObjCVar1 data:(NSData*) (((org_xmlvm_ios_NSData*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_NSTimeZone_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone___INIT___]
    NSTimeZone* var0 = [[NSTimeZone alloc ] init];
    org_xmlvm_ios_NSTimeZone_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone___INIT___]

    NSTimeZone* var0 = [[NSTimeZone alloc]init];

    org_xmlvm_ios_NSTimeZone_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_data__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz data];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_secondsFromGMTForDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  secondsFromGMTForDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_abbreviationForDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  abbreviationForDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_isDaylightSavingTimeForDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isDaylightSavingTimeForDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_daylightSavingTimeOffsetForDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz  daylightSavingTimeOffsetForDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_nextDaylightSavingTimeTransitionAfterDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz  nextDaylightSavingTimeTransitionAfterDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_systemTimeZone__]

    NSTimeZone* var0 =  [NSTimeZone systemTimeZone];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_resetSystemTimeZone__]
 [NSTimeZone resetSystemTimeZone];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_defaultTimeZone__]

    NSTimeZone* var0 =  [NSTimeZone defaultTimeZone];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_setDefaultTimeZone___org_xmlvm_ios_NSTimeZone]
 [NSTimeZone  setDefaultTimeZone:(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_localTimeZone__]

    NSTimeZone* var0 =  [NSTimeZone localTimeZone];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_knownTimeZoneNames__]

    NSArray* var0 =  [NSTimeZone knownTimeZoneNames];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_abbreviationDictionary__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_setAbbreviationDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_timeZoneDataVersion__]

    NSString* var0 =  [NSTimeZone timeZoneDataVersion];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_secondsFromGMT__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz secondsFromGMT];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_abbreviation__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz abbreviation];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_isDaylightSavingTime__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isDaylightSavingTime];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_daylightSavingTimeOffset__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz daylightSavingTimeOffset];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_nextDaylightSavingTimeTransition__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz nextDaylightSavingTimeTransition];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_description__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz description];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_isEqualToTimeZone___org_xmlvm_ios_NSTimeZone]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isEqualToTimeZone:(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_localizedName___int_org_xmlvm_ios_NSLocale]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  localizedName:n1 locale:(NSLocale*) (((org_xmlvm_ios_NSLocale*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_timeZoneWithName___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSTimeZone* var0 =  [NSTimeZone  timeZoneWithName:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_timeZoneWithName___java_lang_String_org_xmlvm_ios_NSData]
NSString * ObjCVar1 = toNSString(n1);
    
    NSTimeZone* var0 =  [NSTimeZone  timeZoneWithName:ObjCVar1 data:(NSData*) (((org_xmlvm_ios_NSData*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_timeZoneForSecondsFromGMT___int]

    NSTimeZone* var0 =  [NSTimeZone  timeZoneForSecondsFromGMT:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimeZone_timeZoneWithAbbreviation___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSTimeZone* var0 =  [NSTimeZone  timeZoneWithAbbreviation:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
