
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMLogItem (CMLogItemWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMLogItem (CMLogItemWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMLogItem.classInitialized)
        __INIT_org_xmlvm_ios_CMLogItem();
}
@end

void org_xmlvm_ios_CMLogItem_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMLogItem class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMLogItem();
        org_xmlvm_ios_CMLogItem_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMLogItem]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMLogItem]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMLogItem___INIT___]
    CMLogItem* var0 = [[CMLogItem alloc ] init];
    org_xmlvm_ios_CMLogItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMLogItem___INIT___]

    CMLogItem* var0 = [[CMLogItem alloc]init];

    org_xmlvm_ios_CMLogItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMLogItem_getTimestamp__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz timestamp];
    
    return var0;
//XMLVM_END_WRAPPER
