
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSScanner (NSScannerWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSScanner (NSScannerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSScanner.classInitialized)
        __INIT_org_xmlvm_ios_NSScanner();
}
@end

void org_xmlvm_ios_NSScanner_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSScanner class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSScanner();
        org_xmlvm_ios_NSScanner_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSScanner]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSScanner]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSScanner* var0 = [[NSScanner alloc] initWithString:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSScanner_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner___INIT___]
    NSScanner* var0 = [[NSScanner alloc ] init];
    org_xmlvm_ios_NSScanner_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner___INIT___]

    NSScanner* var0 = [[NSScanner alloc]init];

    org_xmlvm_ios_NSScanner_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanDecimal___org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    NSDecimal var1= toNSDecimal(jObject1);
    
    BOOL var0 = [thiz  scanDecimal:&var1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_string__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz string];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanLocation__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz scanLocation];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_setScanLocation___int]

    XMLVM_VAR_THIZ;
    [thiz  setScanLocation:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_setCharactersToBeSkipped___org_xmlvm_ios_NSCharacterSet]

    XMLVM_VAR_THIZ;
    [thiz  setCharactersToBeSkipped:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_setCaseSensitive___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setCaseSensitive:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_setLocale___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  setLocale:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_charactersToBeSkipped__]

    XMLVM_VAR_THIZ;
    
    NSCharacterSet* var0 = [thiz charactersToBeSkipped];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_caseSensitive__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz caseSensitive];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_locale__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz locale];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanInt___int_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  scanInt:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanInteger___int_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  scanInteger:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanHexLongLong___long_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_LONG_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  scanHexLongLong:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanHexFloat___float_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_FLOAT_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  scanHexFloat:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanHexDouble___double_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_DOUBLE_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  scanHexDouble:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanHexInt___int_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  scanHexInt:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanLongLong___long_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_LONG_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  scanLongLong:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanFloat___float_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_FLOAT_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  scanFloat:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanDouble___double_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_DOUBLE_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  scanDouble:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanString___java_lang_String_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    NSString* var2= toNSString(jObject2);
    
    BOOL var0 = [thiz  scanString:ObjCVar1 intoString:&var2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanCharactersFromSet___org_xmlvm_ios_NSCharacterSet_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    NSString* var2= toNSString(jObject2);
    
    BOOL var0 = [thiz  scanCharactersFromSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) intoString:&var2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanUpToString___java_lang_String_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    NSString* var2= toNSString(jObject2);
    
    BOOL var0 = [thiz  scanUpToString:ObjCVar1 intoString:&var2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scanUpToCharactersFromSet___org_xmlvm_ios_NSCharacterSet_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    NSString* var2= toNSString(jObject2);
    
    BOOL var0 = [thiz  scanUpToCharactersFromSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) intoString:&var2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_isAtEnd__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isAtEnd];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_scannerWithString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSScanner* var0 =  [NSScanner  scannerWithString:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSScanner_localizedScannerWithString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [NSScanner  localizedScannerWithString:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
