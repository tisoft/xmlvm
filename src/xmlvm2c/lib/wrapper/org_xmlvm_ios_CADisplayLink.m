
//XMLVM_BEGIN_IMPLEMENTATION
@interface CADisplayLink (CADisplayLinkWrapperCategory)
+ (void) initialize_class;
@end

@implementation CADisplayLink (CADisplayLinkWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CADisplayLink.classInitialized)
        __INIT_org_xmlvm_ios_CADisplayLink();
}
@end

void org_xmlvm_ios_CADisplayLink_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CADisplayLink class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CADisplayLink();
        org_xmlvm_ios_CADisplayLink_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CADisplayLink]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CADisplayLink]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink___INIT___]
    CADisplayLink* var0 = [[CADisplayLink alloc ] init];
    org_xmlvm_ios_CADisplayLink_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink___INIT___]

    CADisplayLink* var0 = [[CADisplayLink alloc]init];

    org_xmlvm_ios_CADisplayLink_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_displayLinkWithTarget___java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_addToRunLoop___org_xmlvm_ios_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  addToRunLoop:(NSRunLoop*) (((org_xmlvm_ios_NSRunLoop*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forMode:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_removeFromRunLoop___org_xmlvm_ios_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  removeFromRunLoop:(NSRunLoop*) (((org_xmlvm_ios_NSRunLoop*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forMode:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_invalidate__]

    XMLVM_VAR_THIZ;
    [thiz invalidate];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_getDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz duration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_getTimestamp__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz timestamp];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_isPaused__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isPaused];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_setPaused___boolean]

    XMLVM_VAR_THIZ;
    [thiz setPaused:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_getFrameInterval__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz frameInterval];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CADisplayLink_setFrameInterval___int]

    XMLVM_VAR_THIZ;
    [thiz setFrameInterval:n1];

    
//XMLVM_END_WRAPPER
