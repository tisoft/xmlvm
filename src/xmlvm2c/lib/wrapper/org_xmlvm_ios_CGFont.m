
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGFont_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGFont]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getTypeID__]

    long var0 = CGFontGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_createWithDataProvider___org_xmlvm_ios_CGDataProvider]
XMLVM_VAR_IOS_REF(CGDataProvider, var1, n1);
    
    CGFontRef var0 = CGFontCreateWithDataProvider(var1);
        XMLVM_VAR_INIT_REF(CGFont, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_createWithFontName___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    CGFontRef var0 = CGFontCreateWithFontName(ObjCVar1);
    
    [ObjCVar1 release];
    XMLVM_VAR_INIT_REF(CGFont, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_createCopyWithVariations___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGFontRef var0 = CGFontRetain(thiz);
        XMLVM_VAR_INIT_REF(CGFont, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_release__]

    XMLVM_VAR_CFTHIZ;
    CGFontRelease(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getNumberOfGlyphs__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGFontGetNumberOfGlyphs(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getUnitsPerEm__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGFontGetUnitsPerEm(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_copyPostScriptName__]

    XMLVM_VAR_CFTHIZ;
    
    NSString* var0 = CGFontCopyPostScriptName(thiz);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_copyFullName__]

    XMLVM_VAR_CFTHIZ;
    
    NSString* var0 = CGFontCopyFullName(thiz);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getAscent__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGFontGetAscent(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getDescent__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGFontGetDescent(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getLeading__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGFontGetLeading(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getCapHeight__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGFontGetCapHeight(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getXHeight__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGFontGetXHeight(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getFontBBox__]

    XMLVM_VAR_CFTHIZ;
    
    CGRect var0 = CGFontGetFontBBox(thiz);
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getItalicAngle__]

    XMLVM_VAR_CFTHIZ;
    
    float var0 = CGFontGetItalicAngle(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getStemV__]

    XMLVM_VAR_CFTHIZ;
    
    float var0 = CGFontGetStemV(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_copyVariationAxes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_copyVariations__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getGlyphAdvances___short_1ARRAY_int_int_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    XMLVM_VAR_INT_ARRAY(a3, n3); 
    
    BOOL var0 = CGFontGetGlyphAdvances(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getGlyphBBoxes___short_1ARRAY_int_org_xmlvm_ios_Reference]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGRect var3= toCGRect(jObject3);
    
    BOOL var0 = CGFontGetGlyphBBoxes(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,&var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGRect(var3));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_getGlyphWithGlyphName___java_lang_String]

    XMLVM_VAR_CFTHIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    short var0 = CGFontGetGlyphWithGlyphName(thiz,ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_copyGlyphNameForGlyph___short]

    XMLVM_VAR_CFTHIZ;
    
    NSString* var0 = CGFontCopyGlyphNameForGlyph(thiz,n1);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_canCreatePostScriptSubset___int]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGFontCanCreatePostScriptSubset(thiz,n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_createPostScriptSubset___java_lang_String_int_short_1ARRAY_int_short_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_createPostScriptEncoding___short_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_copyTableTags__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFont_copyTableForTag___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
