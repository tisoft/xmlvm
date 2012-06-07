
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSExpressionDescription (NSExpressionDescriptionWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSExpressionDescription (NSExpressionDescriptionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSExpressionDescription.classInitialized)
        __INIT_org_xmlvm_ios_NSExpressionDescription();
}
@end

void org_xmlvm_ios_NSExpressionDescription_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSPropertyDescription_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSExpressionDescription class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSExpressionDescription();
        org_xmlvm_ios_NSExpressionDescription_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSExpressionDescription]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSExpressionDescription]
__DELETE_org_xmlvm_ios_NSPropertyDescription(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSExpressionDescription___INIT___]
    NSExpressionDescription* var0 = [[NSExpressionDescription alloc ] init];
    org_xmlvm_ios_NSExpressionDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSExpressionDescription___INIT___]
    NSExpressionDescription* var0 = [[NSExpressionDescription alloc ] init];
    org_xmlvm_ios_NSExpressionDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSExpressionDescription___INIT___]

    NSExpressionDescription* var0 = [[NSExpressionDescription alloc]init];

    org_xmlvm_ios_NSExpressionDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSExpressionDescription_expression__]

    XMLVM_VAR_THIZ;
    
    NSExpression* var0 = [thiz expression];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSExpressionDescription_setExpression___org_xmlvm_ios_NSExpression]

    XMLVM_VAR_THIZ;
    [thiz  setExpression:(NSExpression*) (((org_xmlvm_ios_NSExpression*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSExpressionDescription_expressionResultType__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz expressionResultType];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSExpressionDescription_setExpressionResultType___int]

    XMLVM_VAR_THIZ;
    [thiz  setExpressionResultType:n1];

    
//XMLVM_END_WRAPPER
