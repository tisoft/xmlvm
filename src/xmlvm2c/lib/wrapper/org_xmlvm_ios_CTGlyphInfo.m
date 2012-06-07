
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTGlyphInfo (CTGlyphInfoWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTGlyphInfo (CTGlyphInfoWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTGlyphInfo.classInitialized)
        __INIT_org_xmlvm_ios_CTGlyphInfo();
}
@end

void org_xmlvm_ios_CTGlyphInfo_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTGlyphInfo class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTGlyphInfo();
        org_xmlvm_ios_CTGlyphInfo_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTGlyphInfo]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTGlyphInfo]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTGlyphInfo___INIT___]
    CTGlyphInfo* var0 = [[CTGlyphInfo alloc ] init];
    org_xmlvm_ios_CTGlyphInfo_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTGlyphInfo_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTGlyphInfo_createWithGlyphName___java_lang_String_org_xmlvm_ios_CTFont_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar3 = toNSString(n3);
    
    CTGlyphInfo* var0 = CTGlyphInfoCreateWithGlyphName(ObjCVar1,(CTFont*) (((org_xmlvm_ios_CTFont*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar3);
    
    [ObjCVar1 release];

    [ObjCVar3 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTGlyphInfo_createWithGlyph___short_org_xmlvm_ios_CTFont_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    
    CTGlyphInfo* var0 = CTGlyphInfoCreateWithGlyph(n1,(CTFont*) (((org_xmlvm_ios_CTFont*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar3);
    
    [ObjCVar3 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTGlyphInfo_createWithCharacterIdentifier___short_short_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    
    CTGlyphInfo* var0 = CTGlyphInfoCreateWithCharacterIdentifier(n1,n2,ObjCVar3);
    
    [ObjCVar3 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTGlyphInfo_getGlyphName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTGlyphInfo_getCharacterIdentifier__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTGlyphInfo_getCharacterCollection__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
