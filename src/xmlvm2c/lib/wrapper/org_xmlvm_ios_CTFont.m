
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTFont (CTFontWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTFont (CTFontWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTFont.classInitialized)
        __INIT_org_xmlvm_ios_CTFont();
}
@end

void org_xmlvm_ios_CTFont_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTFont class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTFont();
        org_xmlvm_ios_CTFont_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTFont]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTFont]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont___INIT___]
    CTFont* var0 = [[CTFont alloc ] init];
    org_xmlvm_ios_CTFont_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createWithName___java_lang_String_float_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGAffineTransform var3= toCGAffineTransform(jObject3);
    
    CTFont* var0 = CFHostCreateWithName(ObjCVar1,n2,&var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGAffineTransform(var3));
    
    [ObjCVar1 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createWithFontDescriptor___org_xmlvm_ios_CTFontDescriptor_float_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGAffineTransform var3= toCGAffineTransform(jObject3);
    
    CTFont* var0 = CTFontCreateWithFontDescriptor((CTFontDescriptor*) (((org_xmlvm_ios_CTFontDescriptor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,&var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGAffineTransform(var3));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createWithNameAndOptions___java_lang_String_float_org_xmlvm_ios_Reference_long]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGAffineTransform var3= toCGAffineTransform(jObject3);
    
    CTFont* var0 = CTFontCreateWithNameAndOptions(ObjCVar1,n2,&var3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGAffineTransform(var3));
    
    [ObjCVar1 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createWithFontDescriptorAndOptions___org_xmlvm_ios_CTFontDescriptor_float_org_xmlvm_ios_Reference_long]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGAffineTransform var3= toCGAffineTransform(jObject3);
    
    CTFont* var0 = CTFontCreateWithFontDescriptorAndOptions((CTFontDescriptor*) (((org_xmlvm_ios_CTFontDescriptor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,&var3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGAffineTransform(var3));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createUIFontForLanguage___int_float_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    
    CTFont* var0 = CTFontCreateUIFontForLanguage(n1,n2,ObjCVar3);
    
    [ObjCVar3 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createCopyWithAttributes___float_org_xmlvm_ios_Reference_org_xmlvm_ios_CTFontDescriptor]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createCopyWithSymbolicTraits___float_org_xmlvm_ios_Reference_int_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createCopyWithFamily___float_org_xmlvm_ios_Reference_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createForString___java_lang_String_org_xmlvm_ios_CFRange]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyFontDescriptor__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyAttribute___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getSize__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getMatrix__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getSymbolicTraits__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyTraits__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyPostScriptName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyFamilyName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyFullName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyDisplayName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyName___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyLocalizedName___java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyCharacterSet__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getStringEncoding__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copySupportedLanguages__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getGlyphsForCharacters___short_1ARRAY_short_1ARRAY_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getAscent__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getDescent__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getLeading__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getUnitsPerEm__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getGlyphCount__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getBoundingBox__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getUnderlinePosition__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getUnderlineThickness__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getSlantAngle__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getCapHeight__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getXHeight__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getGlyphWithName___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getBoundingRectsForGlyphs___int_short_1ARRAY_org_xmlvm_ios_Reference_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getAdvancesForGlyphs___int_short_1ARRAY_org_xmlvm_ios_Reference_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getVerticalTranslationsForGlyphs___short_1ARRAY_org_xmlvm_ios_Reference_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createPathForGlyph___short_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyVariationAxes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyVariation__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyFeatures__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyFeatureSettings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyGraphicsFont___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createWithGraphicsFont___org_xmlvm_ios_CGFont_float_org_xmlvm_ios_Reference_org_xmlvm_ios_CTFontDescriptor]
XMLVM_VAR_IOS_REF(CGFont, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGAffineTransform var3= toCGAffineTransform(jObject3);
    
    CTFont* var0 = CTFontCreateWithGraphicsFont(var1,n2,&var3,(CTFontDescriptor*) (((org_xmlvm_ios_CTFontDescriptor*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGAffineTransform(var3));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getPlatformFont___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createWithPlatformFont___org_xmlvm_ios_ATSFont_float_org_xmlvm_ios_Reference_org_xmlvm_ios_CTFontDescriptor]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGAffineTransform var3= toCGAffineTransform(jObject3);
    
    CTFont* var0 = CGFontCreateWithPlatformFont((ATSFont*) (((org_xmlvm_ios_ATSFont*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,&var3,(CTFontDescriptor*) (((org_xmlvm_ios_CTFontDescriptor*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGAffineTransform(var3));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_createWithQuickdrawInstance___byte_1ARRAY_short_byte_float]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    CTFont* var0 = CTFontCreateWithQuickdrawInstance(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,n3,n4);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyAvailableTables___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_copyTable___int_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_drawGlyphs___short_1ARRAY_org_xmlvm_ios_Reference_int_org_xmlvm_ios_CGContext]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_getLigatureCaretPositions___short_float_1ARRAY_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerCopyAvailablePostScriptNames__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerCopyAvailableFontFamilyNames__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerCopyAvailableFontURLs__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerCompareFontFamilyNames___byte_1ARRAY_byte_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    long var0 = CTFontManagerCompareFontFamilyNames(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerCreateFontDescriptorsFromURL___org_xmlvm_ios_CFURL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerRegisterFontsForURL___org_xmlvm_ios_CFURL_int_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS_REF(CFError, var3, jObject3);
    
    BOOL var0 = CTFontManagerRegisterFontsForURL(var1,n2,&var3);
    XMLVM_VAR_INIT_REF(CFError,refVar3, var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, refVar3);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerUnregisterFontsForURL___org_xmlvm_ios_CFURL_int_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS_REF(CFError, var3, jObject3);
    
    BOOL var0 = CTFontManagerUnregisterFontsForURL(var1,n2,&var3);
    XMLVM_VAR_INIT_REF(CFError,refVar3, var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, refVar3);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerRegisterGraphicsFont___org_xmlvm_ios_CGFont_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CGFont, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS_REF(CFError, var2, jObject2);
    
    BOOL var0 = CTFontManagerRegisterGraphicsFont(var1,&var2);
    XMLVM_VAR_INIT_REF(CFError,refVar2, var2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, refVar2);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerUnregisterGraphicsFont___org_xmlvm_ios_CGFont_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CGFont, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS_REF(CFError, var2, jObject2);
    
    BOOL var0 = CTFontManagerUnregisterGraphicsFont(var1,&var2);
    XMLVM_VAR_INIT_REF(CFError,refVar2, var2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, refVar2);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerRegisterFontsForURLs___org_xmlvm_ios_CFArray_int_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerUnregisterFontsForURLs___org_xmlvm_ios_CFArray_int_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerEnableFontDescriptors___org_xmlvm_ios_CFArray_boolean]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerGetScopeForURL___org_xmlvm_ios_CFURL]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    
    int var0 = CTFontManagerGetScopeForURL(var1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerIsSupportedFont___org_xmlvm_ios_CFURL]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    
    BOOL var0 = CTFontManagerIsSupportedFont(var1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerSetAutoActivationSetting___java_lang_String_int]
NSString * ObjCVar1 = toNSString(n1);
    CTFontManagerSetAutoActivationSetting(ObjCVar1,n2);
    
    [ObjCVar1 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTFont_managerGetAutoActivationSetting___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = CTFontManagerGetAutoActivationSetting(ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER
