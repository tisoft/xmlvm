
#include "org_xmlvm_iphone_UIBarButtonSystemItem.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIBarButtonSystemItem __CLASS_org_xmlvm_iphone_UIBarButtonSystemItem = {
    0, // classInitialized
    "org.xmlvm.iphone.UIBarButtonSystemItem", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Done;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Cancel;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Edit;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Save;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Add;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FlexibleSpace;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FixedSpace;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Compose;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Reply;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Action;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Organize;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Bookmarks;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Search;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Refresh;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Stop;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Camera;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Trash;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Play;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Pause;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Rewind;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FastForward;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Undo;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Redo;

void __INIT_org_xmlvm_iphone_UIBarButtonSystemItem()
{
    __CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonSystemItem;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Done = 0;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Cancel = 1;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Edit = 2;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Save = 3;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Add = 4;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FlexibleSpace = 5;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FixedSpace = 6;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Compose = 7;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Reply = 8;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Action = 9;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Organize = 10;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Bookmarks = 11;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Search = 12;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Refresh = 13;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Stop = 14;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Camera = 15;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Trash = 16;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Play = 17;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Pause = 18;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Rewind = 19;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FastForward = 20;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Undo = 21;
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Redo = 22;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIBarButtonSystemItem]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarButtonSystemItem()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    org_xmlvm_iphone_UIBarButtonSystemItem* me = (org_xmlvm_iphone_UIBarButtonSystemItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIBarButtonSystemItem));
    me->__class = &__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIBarButtonSystemItem]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonSystemItem()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIBarButtonSystemItem();
    org_xmlvm_iphone_UIBarButtonSystemItem___INIT___(me);
    return me;
}

void __DELETE_org_xmlvm_iphone_UIBarButtonSystemItem(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIBarButtonSystemItem]
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Done()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Done;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Done(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Done = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Cancel()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Cancel;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Cancel(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Cancel = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Edit()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Edit;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Edit(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Edit = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Save()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Save;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Save(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Save = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Add()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Add;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Add(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Add = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_FlexibleSpace()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FlexibleSpace;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_FlexibleSpace(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FlexibleSpace = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_FixedSpace()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FixedSpace;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_FixedSpace(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FixedSpace = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Compose()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Compose;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Compose(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Compose = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Reply()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Reply;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Reply(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Reply = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Action()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Action;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Action(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Action = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Organize()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Organize;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Organize(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Organize = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Bookmarks()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Bookmarks;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Bookmarks(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Bookmarks = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Search()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Search;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Search(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Search = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Refresh()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Refresh;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Refresh(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Refresh = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Stop()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Stop;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Stop(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Stop = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Camera()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Camera;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Camera(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Camera = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Trash()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Trash;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Trash(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Trash = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Play()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Play;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Play(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Play = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Pause()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Pause;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Pause(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Pause = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Rewind()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Rewind;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Rewind(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Rewind = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_FastForward()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FastForward;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_FastForward(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_FastForward = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Undo()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Undo;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Undo(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Undo = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonSystemItem_GET_Redo()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    return _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Redo;
}

void org_xmlvm_iphone_UIBarButtonSystemItem_PUT_Redo(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonSystemItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonSystemItem();
    _STATIC_org_xmlvm_iphone_UIBarButtonSystemItem_Redo = v;
}

void org_xmlvm_iphone_UIBarButtonSystemItem___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonSystemItem___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

