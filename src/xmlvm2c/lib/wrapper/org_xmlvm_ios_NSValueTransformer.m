
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSValueTransformer (NSValueTransformerWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSValueTransformer (NSValueTransformerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSValueTransformer.classInitialized)
        __INIT_org_xmlvm_ios_NSValueTransformer();
}
@end

void org_xmlvm_ios_NSValueTransformer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSValueTransformer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSValueTransformer();
        org_xmlvm_ios_NSValueTransformer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSValueTransformer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSValueTransformer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValueTransformer___INIT___]
    NSValueTransformer* var0 = [[NSValueTransformer alloc ] init];
    org_xmlvm_ios_NSValueTransformer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValueTransformer___INIT___]

    NSValueTransformer* var0 = [[NSValueTransformer alloc]init];

    org_xmlvm_ios_NSValueTransformer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValueTransformer_setValueTransformer___org_xmlvm_ios_NSValueTransformer_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
     [NSValueTransformer  setValueTransformer:(NSValueTransformer*) (((org_xmlvm_ios_NSValueTransformer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forName:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValueTransformer_valueTransformerForName___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSValueTransformer* var0 =  [NSValueTransformer  valueTransformerForName:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValueTransformer_valueTransformerNames__]

    NSArray* var0 =  [NSValueTransformer valueTransformerNames];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValueTransformer_transformedValueClass__]

    Class* var0 =  [NSValueTransformer transformedValueClass];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValueTransformer_allowsReverseTransformation__]

    BOOL var0 =  [NSValueTransformer allowsReverseTransformation];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValueTransformer_transformedValue___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  transformedValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValueTransformer_reverseTransformedValue___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  reverseTransformedValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
