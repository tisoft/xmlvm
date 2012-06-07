
//XMLVM_BEGIN_IMPLEMENTATION
@interface UITextInputStringTokenizer (UITextInputStringTokenizerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UITextInputStringTokenizer (UITextInputStringTokenizerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UITextInputStringTokenizer.classInitialized)
        __INIT_org_xmlvm_ios_UITextInputStringTokenizer();
}
@end

void org_xmlvm_ios_UITextInputStringTokenizer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UITextInputStringTokenizer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UITextInputStringTokenizer();
        org_xmlvm_ios_UITextInputStringTokenizer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UITextInputStringTokenizer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UITextInputStringTokenizer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextInputStringTokenizer___INIT____org_xmlvm_ios_UIResponder]

    UITextInputStringTokenizer* var0 = [[UITextInputStringTokenizer alloc] initWithTextInput:(UIResponder*) (((org_xmlvm_ios_UIResponder*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_UITextInputStringTokenizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextInputStringTokenizer___INIT___]
    UITextInputStringTokenizer* var0 = [[UITextInputStringTokenizer alloc ] init];
    org_xmlvm_ios_UITextInputStringTokenizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextInputStringTokenizer___INIT___]

    UITextInputStringTokenizer* var0 = [[UITextInputStringTokenizer alloc]init];

    org_xmlvm_ios_UITextInputStringTokenizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
