
#include "xmlvm.h"
#include "java_util_Locale.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#ifdef __OBJC__
#import <Foundation/NSUserDefaults.h>
#include "org_xmlvm_iphone_NSString.h"
#endif
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_util_Locale_initNativeLayer__()
{
    //XMLVM_BEGIN_NATIVE[java_util_Locale_initNativeLayer__]
#ifdef __OBJC__
    NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
	NSArray* languages = [defs objectForKey:@"AppleLanguages"];
	NSString* language_ = [languages objectAtIndex:0];
    JAVA_OBJECT language = toJavaString(language_);
    JAVA_OBJECT country = XMLVMArray_createFromString("US");
    JAVA_OBJECT variant = XMLVMArray_createFromString("");
    JAVA_OBJECT defaultLocale = __NEW_java_util_Locale();
    java_util_Locale___INIT____java_lang_String_java_lang_String_java_lang_String(defaultLocale, language, country, variant);
    java_util_Locale_setDefault___java_util_Locale(defaultLocale);
#else
    //TODO we need a Posix implementation
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
#endif
    //XMLVM_END_NATIVE
}

