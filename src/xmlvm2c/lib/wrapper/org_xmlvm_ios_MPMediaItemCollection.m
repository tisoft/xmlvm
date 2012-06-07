
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMediaItemCollection (MPMediaItemCollectionWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMediaItemCollection (MPMediaItemCollectionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMediaItemCollection.classInitialized)
        __INIT_org_xmlvm_ios_MPMediaItemCollection();
}
@end

void org_xmlvm_ios_MPMediaItemCollection_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MPMediaEntity_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMediaItemCollection class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMediaItemCollection();
        org_xmlvm_ios_MPMediaItemCollection_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMediaItemCollection]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMediaItemCollection]
__DELETE_org_xmlvm_ios_MPMediaEntity(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemCollection___INIT____java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    MPMediaItemCollection* var0 = [[MPMediaItemCollection alloc] initWithItems:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_MPMediaItemCollection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemCollection___INIT___]
    MPMediaItemCollection* var0 = [[MPMediaItemCollection alloc ] init];
    org_xmlvm_ios_MPMediaItemCollection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemCollection___INIT___]
    MPMediaItemCollection* var0 = [[MPMediaItemCollection alloc ] init];
    org_xmlvm_ios_MPMediaItemCollection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemCollection___INIT___]

    MPMediaItemCollection* var0 = [[MPMediaItemCollection alloc]init];

    org_xmlvm_ios_MPMediaItemCollection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemCollection_collectionWithItems___java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    MPMediaItemCollection* var0 =  [MPMediaItemCollection  collectionWithItems:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemCollection_getItems__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz items];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemCollection_getRepresentativeItem__]

    XMLVM_VAR_THIZ;
    MPMediaItem* var0 = [thiz representativeItem];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemCollection_getCount__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz count];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemCollection_getMediaTypes__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz mediaTypes];
    
    return var0;
//XMLVM_END_WRAPPER
