
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSPort (NSPortWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSPort (NSPortWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSPort.classInitialized)
        __INIT_org_xmlvm_ios_NSPort();
}
@end

void org_xmlvm_ios_NSPort_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSPort class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSPort();
        org_xmlvm_ios_NSPort_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSPort]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSPort]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort___INIT___]
    NSPort* var0 = [[NSPort alloc ] init];
    org_xmlvm_ios_NSPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort___INIT___]

    NSPort* var0 = [[NSPort alloc]init];

    org_xmlvm_ios_NSPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_allocWithZone___org_xmlvm_ios_NSZone]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_port__]

    NSPort* var0 =  [NSPort port];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_invalidate__]

    XMLVM_VAR_THIZ;
    [thiz invalidate];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_isValid__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isValid];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_setDelegate___org_xmlvm_ios_NSPortDelegate]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_delegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_scheduleInRunLoop___org_xmlvm_ios_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  scheduleInRunLoop:(NSRunLoop*) (((org_xmlvm_ios_NSRunLoop*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forMode:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_removeFromRunLoop___org_xmlvm_ios_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  removeFromRunLoop:(NSRunLoop*) (((org_xmlvm_ios_NSRunLoop*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forMode:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_reservedSpaceLength__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz reservedSpaceLength];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_sendBeforeDate___org_xmlvm_ios_NSDate_java_util_List_org_xmlvm_ios_NSPort_int]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar2 = toNSArray(n2);
    
    BOOL var0 = [thiz  sendBeforeDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) components:ObjCVar2 from:(NSPort*) (((org_xmlvm_ios_NSPort*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) reserved:n4];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_sendBeforeDate___org_xmlvm_ios_NSDate_int_java_util_List_org_xmlvm_ios_NSPort_int]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar3 = toNSArray(n3);
    
    BOOL var0 = [thiz  sendBeforeDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) msgid:n2 components:ObjCVar3 from:(NSPort*) (((org_xmlvm_ios_NSPort*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj) reserved:n5];
    [ObjCVar3 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_addConnection___org_xmlvm_ios_NSConnection_org_xmlvm_ios_NSRunLoop_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPort_removeConnection___org_xmlvm_ios_NSConnection_org_xmlvm_ios_NSRunLoop_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
