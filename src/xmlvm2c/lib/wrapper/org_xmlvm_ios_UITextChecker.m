
//XMLVM_BEGIN_IMPLEMENTATION
@interface UITextChecker (UITextCheckerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UITextChecker (UITextCheckerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UITextChecker.classInitialized)
        __INIT_org_xmlvm_ios_UITextChecker();
}
@end

void org_xmlvm_ios_UITextChecker_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UITextChecker class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UITextChecker();
        org_xmlvm_ios_UITextChecker_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UITextChecker]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UITextChecker]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker___INIT___]
    UITextChecker* var0 = [[UITextChecker alloc ] init];
    org_xmlvm_ios_UITextChecker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker___INIT___]

    UITextChecker* var0 = [[UITextChecker alloc]init];

    org_xmlvm_ios_UITextChecker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_rangeOfMisspelledWordInString___java_lang_String_org_xmlvm_ios_NSRange_int_boolean_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar5 = toNSString(n5);
    
    NSRange var0 = [thiz  rangeOfMisspelledWordInString:ObjCVar1 range:toNSRange(n2) startingAt:n3 wrap:n4 language:ObjCVar5];
    [ObjCVar1 release];

    [ObjCVar5 release];


    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_guessesForWordRange___org_xmlvm_ios_NSRange_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSArray* var0 = [thiz  guessesForWordRange:toNSRange(n1) inString:ObjCVar2 language:ObjCVar3];
    [ObjCVar2 release];

    [ObjCVar3 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_completionsForPartialWordRange___org_xmlvm_ios_NSRange_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSArray* var0 = [thiz  completionsForPartialWordRange:toNSRange(n1) inString:ObjCVar2 language:ObjCVar3];
    [ObjCVar2 release];

    [ObjCVar3 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_ignoreWord___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  ignoreWord:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_ignoredWords__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz ignoredWords];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_setIgnoredWords___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setIgnoredWords:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_learnWord___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
     [UITextChecker  learnWord:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_hasLearnedWord___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 =  [UITextChecker  hasLearnedWord:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_unlearnWord___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
     [UITextChecker  unlearnWord:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextChecker_availableLanguages__]

    NSArray* var0 =  [UITextChecker availableLanguages];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER
