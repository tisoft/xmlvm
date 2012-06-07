
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTFontCollection (CTFontCollectionWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTFontCollection (CTFontCollectionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTFontCollection.classInitialized)
        __INIT_org_xmlvm_ios_CTFontCollection();
}
@end

void org_xmlvm_ios_CTFontCollection_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTFontCollection class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTFontCollection();
        org_xmlvm_ios_CTFontCollection_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTFontCollection]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTFontCollection]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection___INIT___]
    CTFontCollection* var0 = [[CTFontCollection alloc ] init];
    org_xmlvm_ios_CTFontCollection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_createFromAvailableFonts___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_createWithFontDescriptors___org_xmlvm_ios_CFArray_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_createCopyWithFontDescriptors___org_xmlvm_ios_CFArray_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_createMutableCopy__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_copyQueryDescriptors__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_setQueryDescriptors___org_xmlvm_ios_CTFontCollection_org_xmlvm_ios_CFArray]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_copyExclusionDescriptors__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_setExclusionDescriptors___org_xmlvm_ios_CTFontCollection_org_xmlvm_ios_CFArray]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_createMatchingFontDescriptors__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_createMatchingFontDescriptorsSortedWithCallback___java_lang_Object_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_createMatchingFontDescriptorsWithOptions___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_createMatchingFontDescriptorsForFamily___java_lang_String_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_copyFontAttribute___java_lang_String_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFontCollection_copyFontAttributes___org_xmlvm_ios_CFSet_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
