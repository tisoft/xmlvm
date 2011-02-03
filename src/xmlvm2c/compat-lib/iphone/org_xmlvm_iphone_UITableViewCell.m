#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UITableViewCell.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewCell __TIB_org_xmlvm_iphone_UITableViewCell = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITableViewCell, // classInitializer
    "org.xmlvm.iphone.UITableViewCell", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCell;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCell_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_int,
    &__CLASS_java_lang_String,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewCell();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITableViewCell___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UITableViewCell___INIT____int_java_lang_String(obj, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UITableViewCell()
{
    __TIB_org_xmlvm_iphone_UITableViewCell.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UITableViewCell.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCell;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewCell.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setSelected___boolean;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_isSelected__;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getEditingStyle__;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getContentView__;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getBackgroundView__;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getTextLabel__;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getImageView__;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getAccessoryView__;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UITableViewCell.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITableViewCell.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewCell.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UITableViewCell.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewCell.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewCell.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewCell.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewCell.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableViewCell = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewCell);
    __TIB_org_xmlvm_iphone_UITableViewCell.clazz = __CLASS_org_xmlvm_iphone_UITableViewCell;
    __CLASS_org_xmlvm_iphone_UITableViewCell_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewCell, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewCell]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITableViewCell(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewCell]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCell()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCell.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCell();
    org_xmlvm_iphone_UITableViewCell* me = (org_xmlvm_iphone_UITableViewCell*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewCell));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewCell;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewCell]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCell()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewCell();
    org_xmlvm_iphone_UITableViewCell___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITableViewCell___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell___INIT____int_java_lang_String(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell___INIT____int_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setSelected___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setSelected___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITableViewCell_isSelected__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_isSelected__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITableViewCell_getEditingStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getEditingStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getContentView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getContentView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setBackgroundView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getBackgroundView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getBackgroundView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setSelectedBackgroundView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getSelectedBackgroundView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getTextLabel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getTextLabel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getDetailTextLabel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getImageView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getImageView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getAccessoryView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getAccessoryView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_setAccessoryView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCell_getReuseIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

