
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSTimer (NSTimerWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSTimer (NSTimerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSTimer.classInitialized)
        __INIT_org_xmlvm_ios_NSTimer();
}
@end

void org_xmlvm_ios_NSTimer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    
	    		
	org_xmlvm_ios_NSTimer* jthiz = me;
    jthiz->fields.org_xmlvm_ios_NSTimer.alloced = false;

	    	
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSTimer class] || ([NSStringFromClass([obj class]) isEqual:@"__NSCFTimer"])) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSTimer();
        org_xmlvm_ios_NSTimer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSTimer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSTimer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer___INIT____org_xmlvm_ios_NSDate_double_java_lang_Object_org_xmlvm_ios_SEL_java_lang_Object_boolean]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer___INIT___]
    NSTimer* var0 = [[NSTimer alloc ] init];
    org_xmlvm_ios_NSTimer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer___INIT___]

    NSTimer* var0 = [[NSTimer alloc]init];

    org_xmlvm_ios_NSTimer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_timerWithTimeInterval___double_org_xmlvm_ios_NSInvocation_boolean]

    NSTimer* var0 =  [NSTimer  timerWithTimeInterval:n1 invocation:(NSInvocation*) (((org_xmlvm_ios_NSInvocation*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) repeats:n3];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_scheduledTimerWithTimeInterval___double_org_xmlvm_ios_NSInvocation_boolean]

    NSTimer* var0 =  [NSTimer  scheduledTimerWithTimeInterval:n1 invocation:(NSInvocation*) (((org_xmlvm_ios_NSInvocation*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) repeats:n3];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_timerWithTimeInterval___double_java_lang_Object_org_xmlvm_ios_SEL_java_lang_Object_boolean]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_scheduledTimerWithTimeInterval___double_org_xmlvm_ios_NSTimerDelegate_java_lang_Object_boolean]

    			
	org_xmlvm_ios_NSTimerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_NSTimerDelegate(n2);
	org_xmlvm_ios_NSTimer* timer = __NEW_org_xmlvm_ios_NSTimer();
	NSTimer* nsTimer = [NSTimer scheduledTimerWithTimeInterval:n1 target:jwrapper->nativeDelegateWrapper_ selector:@selector(timerEvent:) userInfo:NULL repeats:n4];
	objc_setAssociatedObject(nsTimer, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
	[jwrapper->nativeDelegateWrapper_ release];
	org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(timer, nsTimer);
	timer->fields.org_xmlvm_ios_NSTimer.alloced = false;
	XMLVMUtil_ArrayList_add(reference_array, n2); // Store reference to delegate
	XMLVMUtil_ArrayList_add(reference_array, timer); // Store reference to NSTimer object
	return timer;

    		
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_fire__]

    XMLVM_VAR_THIZ;
    [thiz fire];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_fireDate__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz fireDate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_setFireDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    [thiz  setFireDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_timeInterval__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz timeInterval];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_invalidate__]

    XMLVM_VAR_THIZ;
    [thiz invalidate];

    
    			
	XMLVMUtil_ArrayList_remove(reference_array, jthiz);

    		
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_isValid__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isValid];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_userInfo__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz userInfo];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSTimer_finalize_org_xmlvm_ios_NSTimer__]

                
	XMLVM_VAR_THIZ;
    if(jthiz->fields.org_xmlvm_ios_NSTimer.alloced) {
    	[thiz removeExtraMembers];
        [thiz release];
    }

            
//XMLVM_END_WRAPPER