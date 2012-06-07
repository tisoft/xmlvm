
//XMLVM_BEGIN_IMPLEMENTATION
@interface UILocalizedIndexedCollation (UILocalizedIndexedCollationWrapperCategory)
+ (void) initialize_class;
@end

@implementation UILocalizedIndexedCollation (UILocalizedIndexedCollationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UILocalizedIndexedCollation.classInitialized)
        __INIT_org_xmlvm_ios_UILocalizedIndexedCollation();
}
@end

void org_xmlvm_ios_UILocalizedIndexedCollation_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UILocalizedIndexedCollation class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UILocalizedIndexedCollation();
        org_xmlvm_ios_UILocalizedIndexedCollation_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UILocalizedIndexedCollation]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UILocalizedIndexedCollation]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILocalizedIndexedCollation___INIT___]
    UILocalizedIndexedCollation* var0 = [[UILocalizedIndexedCollation alloc ] init];
    org_xmlvm_ios_UILocalizedIndexedCollation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILocalizedIndexedCollation___INIT___]

    UILocalizedIndexedCollation* var0 = [[UILocalizedIndexedCollation alloc]init];

    org_xmlvm_ios_UILocalizedIndexedCollation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILocalizedIndexedCollation_currentCollation__]

    UILocalizedIndexedCollation* var0 =  [UILocalizedIndexedCollation currentCollation];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILocalizedIndexedCollation_getSectionTitles__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz sectionTitles];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILocalizedIndexedCollation_getSectionIndexTitles__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz sectionIndexTitles];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILocalizedIndexedCollation_sectionForSectionIndexTitleAtIndex___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  sectionForSectionIndexTitleAtIndex:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILocalizedIndexedCollation_sectionForObject___java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILocalizedIndexedCollation_sortedArrayFromArray___java_util_List_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
