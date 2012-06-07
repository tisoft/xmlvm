
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIFont (UIFontWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIFont (UIFontWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIFont.classInitialized)
        __INIT_org_xmlvm_ios_UIFont();
}
@end

void org_xmlvm_ios_UIFont_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIFont class] || ([NSStringFromClass([obj class]) isEqual:@"UICFFont"])) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIFont();
        org_xmlvm_ios_UIFont_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIFont]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIFont]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont___INIT___]
    UIFont* var0 = [[UIFont alloc ] init];
    org_xmlvm_ios_UIFont_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont___INIT___]

    UIFont* var0 = [[UIFont alloc]init];

    org_xmlvm_ios_UIFont_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_fontWithName___java_lang_String_float]
NSString * ObjCVar1 = toNSString(n1);
    
    UIFont* var0 =  [UIFont  fontWithName:ObjCVar1 size:n2];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_familyNames__]

    NSArray* var0 =  [UIFont familyNames];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_fontNamesForFamilyName___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 =  [UIFont  fontNamesForFamilyName:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_systemFontOfSize___float]

    UIFont* var0 =  [UIFont  systemFontOfSize:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_boldSystemFontOfSize___float]

    UIFont* var0 =  [UIFont  boldSystemFontOfSize:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_italicSystemFontOfSize___float]

    UIFont* var0 =  [UIFont  italicSystemFontOfSize:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_getFamilyName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz familyName];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_getFontName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz fontName];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_getPointSize__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz pointSize];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_getAscender__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz ascender];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_getDescender__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz descender];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_getCapHeight__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz capHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_getXHeight__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz xHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_getLineHeight__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz lineHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_fontWithSize___float]

    XMLVM_VAR_THIZ;
    
    UIFont* var0 = [thiz  fontWithSize:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_getLeading__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz leading];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_labelFontSize__]

    float var0 =  [UIFont labelFontSize];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_buttonFontSize__]

    float var0 =  [UIFont buttonFontSize];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_smallSystemFontSize__]

    float var0 =  [UIFont smallSystemFontSize];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIFont_systemFontSize__]

    float var0 =  [UIFont systemFontSize];

    return var0;
//XMLVM_END_WRAPPER
