
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMediaItem (MPMediaItemWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMediaItem (MPMediaItemWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMediaItem.classInitialized)
        __INIT_org_xmlvm_ios_MPMediaItem();
}
@end

void org_xmlvm_ios_MPMediaItem_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MPMediaEntity_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMediaItem class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMediaItem();
        org_xmlvm_ios_MPMediaItem_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMediaItem]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMediaItem]
__DELETE_org_xmlvm_ios_MPMediaEntity(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItem___INIT___]
    MPMediaItem* var0 = [[MPMediaItem alloc ] init];
    org_xmlvm_ios_MPMediaItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItem___INIT___]
    MPMediaItem* var0 = [[MPMediaItem alloc ] init];
    org_xmlvm_ios_MPMediaItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItem___INIT___]

    MPMediaItem* var0 = [[MPMediaItem alloc]init];

    org_xmlvm_ios_MPMediaItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItem_persistentIDPropertyForGroupingType___int]

    NSString* var0 =  [MPMediaItem  persistentIDPropertyForGroupingType:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItem_titlePropertyForGroupingType___int]

    NSString* var0 =  [MPMediaItem  titlePropertyForGroupingType:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER
