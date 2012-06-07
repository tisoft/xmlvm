
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIAccessibilityElement (UIAccessibilityElementWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIAccessibilityElement (UIAccessibilityElementWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIAccessibilityElement.classInitialized)
        __INIT_org_xmlvm_ios_UIAccessibilityElement();
}
@end

void org_xmlvm_ios_UIAccessibilityElement_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIAccessibilityElement class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIAccessibilityElement();
        org_xmlvm_ios_UIAccessibilityElement_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIAccessibilityElement]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIAccessibilityElement]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement___INIT____java_lang_Object]

    UIAccessibilityElement* var0 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_UIAccessibilityElement_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement___INIT___]
    UIAccessibilityElement* var0 = [[UIAccessibilityElement alloc ] init];
    org_xmlvm_ios_UIAccessibilityElement_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement___INIT___]

    UIAccessibilityElement* var0 = [[UIAccessibilityElement alloc]init];

    org_xmlvm_ios_UIAccessibilityElement_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_getAccessibilityContainer__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz accessibilityContainer];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_setAccessibilityContainer___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setAccessibilityContainer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_getIsAccessibilityElement__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isAccessibilityElement];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_setIsAccessibilityElement___boolean]

    XMLVM_VAR_THIZ;
    [thiz setIsAccessibilityElement:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_getAccessibilityLabel__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz accessibilityLabel];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_setAccessibilityLabel___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setAccessibilityLabel:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_getAccessibilityHint__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz accessibilityHint];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_setAccessibilityHint___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setAccessibilityHint:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_getAccessibilityValue__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz accessibilityValue];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_setAccessibilityValue___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setAccessibilityValue:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_getAccessibilityFrame__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz accessibilityFrame];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_setAccessibilityFrame___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz setAccessibilityFrame:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_getAccessibilityTraits__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz accessibilityTraits];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIAccessibilityElement_setAccessibilityTraits___long]

    XMLVM_VAR_THIZ;
    [thiz setAccessibilityTraits:n1];

    
//XMLVM_END_WRAPPER
