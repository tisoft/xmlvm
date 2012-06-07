
//XMLVM_BEGIN_IMPLEMENTATION
@interface CATransaction (CATransactionWrapperCategory)
+ (void) initialize_class;
@end

@implementation CATransaction (CATransactionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CATransaction.classInitialized)
        __INIT_org_xmlvm_ios_CATransaction();
}
@end

void org_xmlvm_ios_CATransaction_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CATransaction class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CATransaction();
        org_xmlvm_ios_CATransaction_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CATransaction]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CATransaction]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction___INIT___]
    CATransaction* var0 = [[CATransaction alloc ] init];
    org_xmlvm_ios_CATransaction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction___INIT___]

    CATransaction* var0 = [[CATransaction alloc]init];

    org_xmlvm_ios_CATransaction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_begin__]
 [CATransaction begin];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_commit__]
 [CATransaction commit];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_flush__]
 [CATransaction flush];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_lock__]
 [CATransaction lock];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_unlock__]
 [CATransaction unlock];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_animationDuration__]

    double var0 =  [CATransaction animationDuration];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_setAnimationDuration___double]
 [CATransaction  setAnimationDuration:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_animationTimingFunction__]

    CAMediaTimingFunction* var0 =  [CATransaction animationTimingFunction];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_setAnimationTimingFunction___org_xmlvm_ios_CAMediaTimingFunction]
 [CATransaction  setAnimationTimingFunction:(CAMediaTimingFunction*) (((org_xmlvm_ios_CAMediaTimingFunction*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_disableActions__]

    BOOL var0 =  [CATransaction disableActions];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_setDisableActions___boolean]
 [CATransaction  setDisableActions:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_completionBlock__]

    NSObject* var0 =  [CATransaction completionBlock];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_setCompletionBlock___java_lang_Object]
 [CATransaction  setCompletionBlock:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_valueForKey___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [CATransaction  valueForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransaction_setValue___java_lang_Object_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
     [CATransaction  setValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER
