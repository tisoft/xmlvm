
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVTimedMetadataGroup (AVTimedMetadataGroupWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVTimedMetadataGroup (AVTimedMetadataGroupWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVTimedMetadataGroup.classInitialized)
        __INIT_org_xmlvm_ios_AVTimedMetadataGroup();
}
@end

void org_xmlvm_ios_AVTimedMetadataGroup_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVTimedMetadataGroup class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVTimedMetadataGroup();
        org_xmlvm_ios_AVTimedMetadataGroup_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVTimedMetadataGroup]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVTimedMetadataGroup]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVTimedMetadataGroup___INIT____java_util_List_org_xmlvm_ios_CMTimeRange]
NSArray * ObjCVar1 = toNSArray(n1);
    
    AVTimedMetadataGroup* var0 = [[AVTimedMetadataGroup alloc] initWithItems:ObjCVar1 timeRange:toCMTimeRange(n2)];
    [ObjCVar1 release];

    org_xmlvm_ios_AVTimedMetadataGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVTimedMetadataGroup___INIT___]
    AVTimedMetadataGroup* var0 = [[AVTimedMetadataGroup alloc ] init];
    org_xmlvm_ios_AVTimedMetadataGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVTimedMetadataGroup___INIT___]

    AVTimedMetadataGroup* var0 = [[AVTimedMetadataGroup alloc]init];

    org_xmlvm_ios_AVTimedMetadataGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVTimedMetadataGroup_getTimeRange__]

    XMLVM_VAR_THIZ;
    CMTimeRange var0 = [thiz timeRange];
    
    return fromCMTimeRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVTimedMetadataGroup_getItems__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz items];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
