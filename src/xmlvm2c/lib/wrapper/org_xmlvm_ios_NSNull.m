
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSNull (NSNullWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSNull (NSNullWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSNull.classInitialized)
        __INIT_org_xmlvm_ios_NSNull();
}
@end

void org_xmlvm_ios_NSNull_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSNull class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSNull();
        org_xmlvm_ios_NSNull_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSNull]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSNull]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNull___INIT___]
    NSNull* var0 = [[NSNull alloc ] init];
    org_xmlvm_ios_NSNull_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNull___INIT___]

    NSNull* var0 = [[NSNull alloc]init];

    org_xmlvm_ios_NSNull_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNull_null__]

    NSNull* var0 =  [NSNull null];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
