
//XMLVM_BEGIN_IMPLEMENTATION
@interface ALAssetsGroup (ALAssetsGroupWrapperCategory)
+ (void) initialize_class;
@end

@implementation ALAssetsGroup (ALAssetsGroupWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ALAssetsGroup.classInitialized)
        __INIT_org_xmlvm_ios_ALAssetsGroup();
}
@end

void org_xmlvm_ios_ALAssetsGroup_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ALAssetsGroup class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ALAssetsGroup();
        org_xmlvm_ios_ALAssetsGroup_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ALAssetsGroup]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ALAssetsGroup]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsGroup___INIT___]
    ALAssetsGroup* var0 = [[ALAssetsGroup alloc ] init];
    org_xmlvm_ios_ALAssetsGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsGroup___INIT___]

    ALAssetsGroup* var0 = [[ALAssetsGroup alloc]init];

    org_xmlvm_ios_ALAssetsGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsGroup_valueForProperty___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  valueForProperty:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsGroup_posterImage__]

    XMLVM_VAR_THIZ;
    
    CGImageRef var0 = [thiz posterImage];    XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);


    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsGroup_setAssetsFilter___org_xmlvm_ios_ALAssetsFilter]

    XMLVM_VAR_THIZ;
    [thiz  setAssetsFilter:(ALAssetsFilter*) (((org_xmlvm_ios_ALAssetsFilter*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsGroup_numberOfAssets__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz numberOfAssets];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsGroup_enumerateAssetsUsingBlock___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateAssetsUsingBlock:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsGroup_enumerateAssetsWithOptions___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateAssetsWithOptions:n1 usingBlock:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsGroup_enumerateAssetsAtIndexes___org_xmlvm_ios_NSIndexSet_int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateAssetsAtIndexes:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 usingBlock:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
