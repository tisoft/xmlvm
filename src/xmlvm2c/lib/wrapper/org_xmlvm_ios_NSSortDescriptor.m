
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSSortDescriptor (NSSortDescriptorWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSSortDescriptor (NSSortDescriptorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSSortDescriptor.classInitialized)
        __INIT_org_xmlvm_ios_NSSortDescriptor();
}
@end

void org_xmlvm_ios_NSSortDescriptor_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSSortDescriptor class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSSortDescriptor();
        org_xmlvm_ios_NSSortDescriptor_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSSortDescriptor]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSSortDescriptor]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor___INIT____java_lang_String_boolean]
NSString * ObjCVar1 = toNSString(n1);
    
    NSSortDescriptor* var0 = [[NSSortDescriptor alloc] initWithKey:ObjCVar1 ascending:n2];
    [ObjCVar1 release];

    org_xmlvm_ios_NSSortDescriptor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor___INIT____java_lang_String_boolean_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor___INIT____java_lang_String_boolean_java_lang_Object]
NSString * ObjCVar1 = toNSString(n1);
    
    NSSortDescriptor* var0 = [[NSSortDescriptor alloc] initWithKey:ObjCVar1 ascending:n2 comparator:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];

    org_xmlvm_ios_NSSortDescriptor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor___INIT___]
    NSSortDescriptor* var0 = [[NSSortDescriptor alloc ] init];
    org_xmlvm_ios_NSSortDescriptor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor___INIT___]

    NSSortDescriptor* var0 = [[NSSortDescriptor alloc]init];

    org_xmlvm_ios_NSSortDescriptor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor_sortDescriptorWithKey___java_lang_String_boolean]
NSString * ObjCVar1 = toNSString(n1);
    
    NSSortDescriptor* var0 =  [NSSortDescriptor  sortDescriptorWithKey:ObjCVar1 ascending:n2];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor_sortDescriptorWithKey___java_lang_String_boolean_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor_key__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz key];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor_ascending__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz ascending];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor_selector__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor_sortDescriptorWithKey___java_lang_String_boolean_java_lang_Object]
NSString * ObjCVar1 = toNSString(n1);
    
    NSSortDescriptor* var0 =  [NSSortDescriptor  sortDescriptorWithKey:ObjCVar1 ascending:n2 comparator:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor_comparator__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz comparator];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor_compareObject___java_lang_Object_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  compareObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj toObject:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSortDescriptor_reversedSortDescriptor__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz reversedSortDescriptor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
