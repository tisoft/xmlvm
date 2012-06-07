
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSFormatter (NSFormatterWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSFormatter (NSFormatterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSFormatter.classInitialized)
        __INIT_org_xmlvm_ios_NSFormatter();
}
@end

void org_xmlvm_ios_NSFormatter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSFormatter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSFormatter();
        org_xmlvm_ios_NSFormatter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSFormatter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSFormatter]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFormatter___INIT___]
    NSFormatter* var0 = [[NSFormatter alloc ] init];
    org_xmlvm_ios_NSFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFormatter___INIT___]

    NSFormatter* var0 = [[NSFormatter alloc]init];

    org_xmlvm_ios_NSFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFormatter_stringForObjectValue___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  stringForObjectValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFormatter_attributedStringForObjectValue___java_lang_Object_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFormatter_editingStringForObjectValue___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  editingStringForObjectValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFormatter_getObjectValue___Object_1ARRAY_java_lang_String_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    NSString* var3= toNSString(jObject3);
    
    BOOL var0 = [thiz  getObjectValue:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ forString:ObjCVar2 errorDescription:&var3];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFormatter_isPartialStringValid___java_lang_String_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    NSString* var2= toNSString(jObject2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    NSString* var3= toNSString(jObject3);
    
    BOOL var0 = [thiz  isPartialStringValid:ObjCVar1 newEditingString:&var2 errorDescription:&var3];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFormatter_isPartialStringValid___org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_java_lang_String_org_xmlvm_ios_NSRange_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    NSString* var1= toNSString(jObject1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    NSRange var2= toNSRange(jObject2);
    NSString * ObjCVar3 = toNSString(n3);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    NSString* var5= toNSString(jObject5);
    
    BOOL var0 = [thiz  isPartialStringValid:&var1 proposedSelectedRange:&var2 originalString:ObjCVar3 originalSelectedRange:toNSRange(n4) errorDescription:&var5];
    [ObjCVar3 release];


    return var0;
//XMLVM_END_WRAPPER
