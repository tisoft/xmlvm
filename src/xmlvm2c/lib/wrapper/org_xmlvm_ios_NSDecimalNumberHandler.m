
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSDecimalNumberHandler (NSDecimalNumberHandlerWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSDecimalNumberHandler (NSDecimalNumberHandlerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSDecimalNumberHandler.classInitialized)
        __INIT_org_xmlvm_ios_NSDecimalNumberHandler();
}
@end

void org_xmlvm_ios_NSDecimalNumberHandler_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSDecimalNumberHandler class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSDecimalNumberHandler();
        org_xmlvm_ios_NSDecimalNumberHandler_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSDecimalNumberHandler]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSDecimalNumberHandler]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumberHandler___INIT____int_short_boolean_boolean_boolean_boolean]

    NSDecimalNumberHandler* var0 = [[NSDecimalNumberHandler alloc] initWithRoundingMode:n1 scale:n2 raiseOnExactness:n3 raiseOnOverflow:n4 raiseOnUnderflow:n5 raiseOnDivideByZero:n6];
    org_xmlvm_ios_NSDecimalNumberHandler_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumberHandler___INIT___]
    NSDecimalNumberHandler* var0 = [[NSDecimalNumberHandler alloc ] init];
    org_xmlvm_ios_NSDecimalNumberHandler_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumberHandler___INIT___]

    NSDecimalNumberHandler* var0 = [[NSDecimalNumberHandler alloc]init];

    org_xmlvm_ios_NSDecimalNumberHandler_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumberHandler_defaultDecimalNumberHandler__]

    NSObject* var0 =  [NSDecimalNumberHandler defaultDecimalNumberHandler];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDecimalNumberHandler_decimalNumberHandlerWithRoundingMode___int_short_boolean_boolean_boolean_boolean]

    NSDecimalNumberHandler* var0 =  [NSDecimalNumberHandler  decimalNumberHandlerWithRoundingMode:n1 scale:n2 raiseOnExactness:n3 raiseOnOverflow:n4 raiseOnUnderflow:n5 raiseOnDivideByZero:n6];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
