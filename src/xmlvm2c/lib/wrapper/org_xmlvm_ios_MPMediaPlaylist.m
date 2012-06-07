
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMediaPlaylist (MPMediaPlaylistWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMediaPlaylist (MPMediaPlaylistWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMediaPlaylist.classInitialized)
        __INIT_org_xmlvm_ios_MPMediaPlaylist();
}
@end

void org_xmlvm_ios_MPMediaPlaylist_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MPMediaItemCollection_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMediaPlaylist class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMediaPlaylist();
        org_xmlvm_ios_MPMediaPlaylist_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMediaPlaylist]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMediaPlaylist]
__DELETE_org_xmlvm_ios_MPMediaItemCollection(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPlaylist___INIT___]
    MPMediaPlaylist* var0 = [[MPMediaPlaylist alloc ] init];
    org_xmlvm_ios_MPMediaPlaylist_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPlaylist___INIT____java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    MPMediaPlaylist* var0 = [[MPMediaPlaylist alloc] initWithItems:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_MPMediaPlaylist_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPlaylist___INIT___]
    MPMediaPlaylist* var0 = [[MPMediaPlaylist alloc ] init];
    org_xmlvm_ios_MPMediaPlaylist_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPlaylist___INIT___]
    MPMediaPlaylist* var0 = [[MPMediaPlaylist alloc ] init];
    org_xmlvm_ios_MPMediaPlaylist_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPlaylist___INIT___]

    MPMediaPlaylist* var0 = [[MPMediaPlaylist alloc]init];

    org_xmlvm_ios_MPMediaPlaylist_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
