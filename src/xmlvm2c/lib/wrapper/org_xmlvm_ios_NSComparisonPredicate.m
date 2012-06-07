
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSComparisonPredicate (NSComparisonPredicateWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSComparisonPredicate (NSComparisonPredicateWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSComparisonPredicate.classInitialized)
        __INIT_org_xmlvm_ios_NSComparisonPredicate();
}
@end

void org_xmlvm_ios_NSComparisonPredicate_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSPredicate_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSComparisonPredicate class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSComparisonPredicate();
        org_xmlvm_ios_NSComparisonPredicate_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSComparisonPredicate]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSComparisonPredicate]
__DELETE_org_xmlvm_ios_NSPredicate(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate___INIT____org_xmlvm_ios_NSExpression_org_xmlvm_ios_NSExpression_int_int_int]

    NSComparisonPredicate* var0 = [[NSComparisonPredicate alloc] initWithLeftExpression:(NSExpression*) (((org_xmlvm_ios_NSExpression*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) rightExpression:(NSExpression*) (((org_xmlvm_ios_NSExpression*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) modifier:n3 type:n4 options:n5];
    org_xmlvm_ios_NSComparisonPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate___INIT____org_xmlvm_ios_NSExpression_org_xmlvm_ios_NSExpression_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate___INIT___]
    NSComparisonPredicate* var0 = [[NSComparisonPredicate alloc ] init];
    org_xmlvm_ios_NSComparisonPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate___INIT___]
    NSComparisonPredicate* var0 = [[NSComparisonPredicate alloc ] init];
    org_xmlvm_ios_NSComparisonPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate___INIT___]

    NSComparisonPredicate* var0 = [[NSComparisonPredicate alloc]init];

    org_xmlvm_ios_NSComparisonPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate_predicateWithLeftExpression___org_xmlvm_ios_NSExpression_org_xmlvm_ios_NSExpression_int_int_int]

    NSPredicate* var0 =  [NSComparisonPredicate  predicateWithLeftExpression:(NSExpression*) (((org_xmlvm_ios_NSExpression*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) rightExpression:(NSExpression*) (((org_xmlvm_ios_NSExpression*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) modifier:n3 type:n4 options:n5];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate_predicateWithLeftExpression___org_xmlvm_ios_NSExpression_org_xmlvm_ios_NSExpression_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate_predicateOperatorType__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz predicateOperatorType];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate_comparisonPredicateModifier__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz comparisonPredicateModifier];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate_leftExpression__]

    XMLVM_VAR_THIZ;
    
    NSExpression* var0 = [thiz leftExpression];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate_rightExpression__]

    XMLVM_VAR_THIZ;
    
    NSExpression* var0 = [thiz rightExpression];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate_customSelector__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSComparisonPredicate_options__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz options];

    return var0;
//XMLVM_END_WRAPPER
