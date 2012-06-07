
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVComposition (AVCompositionWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVComposition (AVCompositionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVComposition.classInitialized)
        __INIT_org_xmlvm_ios_AVComposition();
}
@end

void org_xmlvm_ios_AVComposition_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVAsset_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVComposition class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVComposition();
        org_xmlvm_ios_AVComposition_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVComposition]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVComposition]
__DELETE_org_xmlvm_ios_AVAsset(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVComposition___INIT___]
    AVComposition* var0 = [[AVComposition alloc ] init];
    org_xmlvm_ios_AVComposition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVComposition___INIT___]
    AVComposition* var0 = [[AVComposition alloc ] init];
    org_xmlvm_ios_AVComposition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVComposition___INIT___]

    AVComposition* var0 = [[AVComposition alloc]init];

    org_xmlvm_ios_AVComposition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVComposition_getTracks__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz tracks];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
