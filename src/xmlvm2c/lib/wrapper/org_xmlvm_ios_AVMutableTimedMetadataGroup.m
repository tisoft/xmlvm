
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVMutableTimedMetadataGroup (AVMutableTimedMetadataGroupWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVMutableTimedMetadataGroup (AVMutableTimedMetadataGroupWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVMutableTimedMetadataGroup.classInitialized)
        __INIT_org_xmlvm_ios_AVMutableTimedMetadataGroup();
}
@end

void org_xmlvm_ios_AVMutableTimedMetadataGroup_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVTimedMetadataGroup_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVMutableTimedMetadataGroup class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVMutableTimedMetadataGroup();
        org_xmlvm_ios_AVMutableTimedMetadataGroup_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVMutableTimedMetadataGroup]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVMutableTimedMetadataGroup]
__DELETE_org_xmlvm_ios_AVTimedMetadataGroup(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableTimedMetadataGroup___INIT___]
    AVMutableTimedMetadataGroup* var0 = [[AVMutableTimedMetadataGroup alloc ] init];
    org_xmlvm_ios_AVMutableTimedMetadataGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableTimedMetadataGroup___INIT____java_util_List_org_xmlvm_ios_CMTimeRange]
NSArray * ObjCVar1 = toNSArray(n1);
    
    AVMutableTimedMetadataGroup* var0 = [[AVMutableTimedMetadataGroup alloc] initWithItems:ObjCVar1 timeRange:toCMTimeRange(n2)];
    [ObjCVar1 release];

    org_xmlvm_ios_AVMutableTimedMetadataGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableTimedMetadataGroup___INIT___]
    AVMutableTimedMetadataGroup* var0 = [[AVMutableTimedMetadataGroup alloc ] init];
    org_xmlvm_ios_AVMutableTimedMetadataGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableTimedMetadataGroup___INIT___]

    AVMutableTimedMetadataGroup* var0 = [[AVMutableTimedMetadataGroup alloc]init];

    org_xmlvm_ios_AVMutableTimedMetadataGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableTimedMetadataGroup_getTimeRange__]

    XMLVM_VAR_THIZ;
    CMTimeRange var0 = [thiz timeRange];
    
    return fromCMTimeRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableTimedMetadataGroup_setTimeRange___org_xmlvm_ios_CMTimeRange]

    XMLVM_VAR_THIZ;
    [thiz setTimeRange:toCMTimeRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableTimedMetadataGroup_getItems__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz items];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableTimedMetadataGroup_setItems___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setItems:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
