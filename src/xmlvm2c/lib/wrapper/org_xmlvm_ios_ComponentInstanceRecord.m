
//XMLVM_BEGIN_IMPLEMENTATION
@interface ComponentInstanceRecord (ComponentInstanceRecordWrapperCategory)
+ (void) initialize_class;
@end

@implementation ComponentInstanceRecord (ComponentInstanceRecordWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ComponentInstanceRecord.classInitialized)
        __INIT_org_xmlvm_ios_ComponentInstanceRecord();
}
@end

void org_xmlvm_ios_ComponentInstanceRecord_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ComponentInstanceRecord class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ComponentInstanceRecord();
        org_xmlvm_ios_ComponentInstanceRecord_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ComponentInstanceRecord]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ComponentInstanceRecord]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ComponentInstanceRecord___INIT___]
    ComponentInstanceRecord* var0 = [[ComponentInstanceRecord alloc ] init];
    org_xmlvm_ios_ComponentInstanceRecord_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
