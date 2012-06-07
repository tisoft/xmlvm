
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSCharacterSet (NSCharacterSetWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSCharacterSet (NSCharacterSetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSCharacterSet.classInitialized)
        __INIT_org_xmlvm_ios_NSCharacterSet();
}
@end

void org_xmlvm_ios_NSCharacterSet_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSCharacterSet class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSCharacterSet();
        org_xmlvm_ios_NSCharacterSet_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSCharacterSet]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSCharacterSet]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet___INIT___]
    NSCharacterSet* var0 = [[NSCharacterSet alloc ] init];
    org_xmlvm_ios_NSCharacterSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet___INIT___]

    NSCharacterSet* var0 = [[NSCharacterSet alloc]init];

    org_xmlvm_ios_NSCharacterSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_controlCharacterSet__]

    NSObject* var0 =  [NSCharacterSet controlCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_whitespaceCharacterSet__]

    NSObject* var0 =  [NSCharacterSet whitespaceCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_whitespaceAndNewlineCharacterSet__]

    NSObject* var0 =  [NSCharacterSet whitespaceAndNewlineCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_decimalDigitCharacterSet__]

    NSObject* var0 =  [NSCharacterSet decimalDigitCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_letterCharacterSet__]

    NSObject* var0 =  [NSCharacterSet letterCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_lowercaseLetterCharacterSet__]

    NSObject* var0 =  [NSCharacterSet lowercaseLetterCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_uppercaseLetterCharacterSet__]

    NSObject* var0 =  [NSCharacterSet uppercaseLetterCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_nonBaseCharacterSet__]

    NSObject* var0 =  [NSCharacterSet nonBaseCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_alphanumericCharacterSet__]

    NSObject* var0 =  [NSCharacterSet alphanumericCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_decomposableCharacterSet__]

    NSObject* var0 =  [NSCharacterSet decomposableCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_illegalCharacterSet__]

    NSObject* var0 =  [NSCharacterSet illegalCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_punctuationCharacterSet__]

    NSObject* var0 =  [NSCharacterSet punctuationCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_capitalizedLetterCharacterSet__]

    NSObject* var0 =  [NSCharacterSet capitalizedLetterCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_symbolCharacterSet__]

    NSObject* var0 =  [NSCharacterSet symbolCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_newlineCharacterSet__]

    NSObject* var0 =  [NSCharacterSet newlineCharacterSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_characterSetWithRange___org_xmlvm_ios_NSRange]

    NSCharacterSet* var0 =  [NSCharacterSet  characterSetWithRange:toNSRange(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_characterSetWithCharactersInString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSCharacterSet* var0 =  [NSCharacterSet  characterSetWithCharactersInString:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_characterSetWithBitmapRepresentation___org_xmlvm_ios_NSData]

    NSCharacterSet* var0 =  [NSCharacterSet  characterSetWithBitmapRepresentation:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_characterSetWithContentsOfFile___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSCharacterSet* var0 =  [NSCharacterSet  characterSetWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_characterIsMember___short]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  characterIsMember:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_bitmapRepresentation__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz bitmapRepresentation];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_invertedSet__]

    XMLVM_VAR_THIZ;
    
    NSCharacterSet* var0 = [thiz invertedSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_longCharacterIsMember___int]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  longCharacterIsMember:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_isSupersetOfSet___org_xmlvm_ios_NSCharacterSet]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isSupersetOfSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCharacterSet_hasMemberInPlane___byte]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  hasMemberInPlane:n1];

    return var0;
//XMLVM_END_WRAPPER
