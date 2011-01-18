#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_MFMailComposeViewControllerDelegate.h"
#include "org_xmlvm_iphone_NSString.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_MFMailComposeViewController.h"

__TIB_DEFINITION_org_xmlvm_iphone_MFMailComposeViewController __TIB_org_xmlvm_iphone_MFMailComposeViewController = {
    0, // classInitialized
    "org.xmlvm.iphone.MFMailComposeViewController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UINavigationController, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeViewController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeViewController_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MFMailComposeViewController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MFMailComposeViewController___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_MFMailComposeViewController()
{
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UINavigationController.classInitialized) __INIT_org_xmlvm_iphone_UINavigationController();
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable, __TIB_org_xmlvm_iphone_UINavigationController.vtable, sizeof(__TIB_org_xmlvm_iphone_UINavigationController.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_getMailComposeDelegate__;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_addAttachmentData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSString_java_lang_String;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setBccRecipients___java_util_ArrayList;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setCcRecipients___java_util_ArrayList;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setMessageBody___java_lang_String_boolean;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setSubject___java_lang_String;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.vtable[92] = (VTABLE_PTR) &org_xmlvm_iphone_MFMailComposeViewController_setToRecipients___java_util_ArrayList;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_MFMailComposeViewController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MFMailComposeViewController);
    __TIB_org_xmlvm_iphone_MFMailComposeViewController.clazz = __CLASS_org_xmlvm_iphone_MFMailComposeViewController;
    __CLASS_org_xmlvm_iphone_MFMailComposeViewController_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MFMailComposeViewController, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MFMailComposeViewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMailComposeViewController()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeViewController();
    org_xmlvm_iphone_MFMailComposeViewController* me = (org_xmlvm_iphone_MFMailComposeViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMailComposeViewController));
    me->tib = &__TIB_org_xmlvm_iphone_MFMailComposeViewController;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMailComposeViewController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeViewController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMailComposeViewController();
    org_xmlvm_iphone_MFMailComposeViewController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MFMailComposeViewController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MFMailComposeViewController_getMailComposeDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_getMailComposeDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MFMailComposeViewController_canSendMail__()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeViewController.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeViewController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_canSendMail__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_addAttachmentData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSString_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_addAttachmentData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSString_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setBccRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setBccRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setCcRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setCcRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setMessageBody___java_lang_String_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setMessageBody___java_lang_String_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setSubject___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setSubject___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MFMailComposeViewController_setToRecipients___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeViewController_setToRecipients___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

