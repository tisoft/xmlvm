
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSCompoundPredicate (NSCompoundPredicateWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSCompoundPredicate (NSCompoundPredicateWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSCompoundPredicate.classInitialized)
        __INIT_org_xmlvm_ios_NSCompoundPredicate();
}
@end

void org_xmlvm_ios_NSCompoundPredicate_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSPredicate_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSCompoundPredicate class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSCompoundPredicate();
        org_xmlvm_ios_NSCompoundPredicate_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSCompoundPredicate]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSCompoundPredicate]
__DELETE_org_xmlvm_ios_NSPredicate(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCompoundPredicate___INIT____int_java_util_List]
NSArray * ObjCVar2 = toNSArray(n2);
    
    NSCompoundPredicate* var0 = [[NSCompoundPredicate alloc] initWithType:n1 subpredicates:ObjCVar2];
    [ObjCVar2 release];

    org_xmlvm_ios_NSCompoundPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCompoundPredicate___INIT___]
    NSCompoundPredicate* var0 = [[NSCompoundPredicate alloc ] init];
    org_xmlvm_ios_NSCompoundPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCompoundPredicate___INIT___]
    NSCompoundPredicate* var0 = [[NSCompoundPredicate alloc ] init];
    org_xmlvm_ios_NSCompoundPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCompoundPredicate___INIT___]

    NSCompoundPredicate* var0 = [[NSCompoundPredicate alloc]init];

    org_xmlvm_ios_NSCompoundPredicate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCompoundPredicate_compoundPredicateType__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz compoundPredicateType];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCompoundPredicate_subpredicates__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz subpredicates];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCompoundPredicate_andPredicateWithSubpredicates___java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSPredicate* var0 =  [NSCompoundPredicate  andPredicateWithSubpredicates:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCompoundPredicate_orPredicateWithSubpredicates___java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSPredicate* var0 =  [NSCompoundPredicate  orPredicateWithSubpredicates:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCompoundPredicate_notPredicateWithSubpredicate___org_xmlvm_ios_NSPredicate]

    NSPredicate* var0 =  [NSCompoundPredicate  notPredicateWithSubpredicate:(NSPredicate*) (((org_xmlvm_ios_NSPredicate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
