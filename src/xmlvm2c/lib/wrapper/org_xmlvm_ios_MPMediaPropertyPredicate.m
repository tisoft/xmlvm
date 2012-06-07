
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMediaPropertyPredicate (MPMediaPropertyPredicateWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMediaPropertyPredicate (MPMediaPropertyPredicateWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMediaPropertyPredicate.classInitialized)
        __INIT_org_xmlvm_ios_MPMediaPropertyPredicate();
}
@end

void org_xmlvm_ios_MPMediaPropertyPredicate_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MPMediaPredicate_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMediaPropertyPredicate class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMediaPropertyPredicate();
        org_xmlvm_ios_MPMediaPropertyPredicate_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMediaPropertyPredicate]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMediaPropertyPredicate]
__DELETE_org_xmlvm_ios_MPMediaPredicate(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPropertyPredicate___INIT___]
    MPMediaPropertyPredicate* var0 = [[MPMediaPropertyPredicate alloc ] init];
    org_xmlvm_ios_MPMediaPropertyPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPropertyPredicate___INIT___]
    MPMediaPropertyPredicate* var0 = [[MPMediaPropertyPredicate alloc ] init];
    org_xmlvm_ios_MPMediaPropertyPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPropertyPredicate___INIT___]

    MPMediaPropertyPredicate* var0 = [[MPMediaPropertyPredicate alloc]init];

    org_xmlvm_ios_MPMediaPropertyPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPropertyPredicate_predicateWithValue___java_lang_Object_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    MPMediaPropertyPredicate* var0 =  [MPMediaPropertyPredicate  predicateWithValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forProperty:ObjCVar2];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPropertyPredicate_predicateWithValue___java_lang_Object_java_lang_String_int]
NSString * ObjCVar2 = toNSString(n2);
    
    MPMediaPropertyPredicate* var0 =  [MPMediaPropertyPredicate  predicateWithValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forProperty:ObjCVar2 comparisonType:n3];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPropertyPredicate_getProperty__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz property];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPropertyPredicate_getValue__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz value];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPropertyPredicate_getComparisonType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz comparisonType];
    
    return var0;
//XMLVM_END_WRAPPER
