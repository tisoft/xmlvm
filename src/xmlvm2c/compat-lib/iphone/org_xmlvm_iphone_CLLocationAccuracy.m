
#include "org_xmlvm_iphone_CLLocationAccuracy.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CLLocationAccuracy __CLASS_org_xmlvm_iphone_CLLocationAccuracy = {
    0, // classInitialized
    "org.xmlvm.iphone.CLLocationAccuracy", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_BestForNavigation;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Best;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_NearestTenMeters;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_HundredMeters;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Kilometer;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_ThreeKilometers;

void __INIT_org_xmlvm_iphone_CLLocationAccuracy()
{
    __CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_CLLocationAccuracy.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLLocationAccuracy;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CLLocationAccuracy.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CLLocationAccuracy.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CLLocationAccuracy.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_BestForNavigation = -2.0;
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Best = -1.0;
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_NearestTenMeters = 10.0;
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_HundredMeters = 100.0;
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Kilometer = 1000.0;
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_ThreeKilometers = 3000.0;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLLocationAccuracy]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLLocationAccuracy(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLLocationAccuracy]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocationAccuracy()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    org_xmlvm_iphone_CLLocationAccuracy* me = (org_xmlvm_iphone_CLLocationAccuracy*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLLocationAccuracy));
    me->__class = &__CLASS_org_xmlvm_iphone_CLLocationAccuracy;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLLocationAccuracy]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocationAccuracy()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_BestForNavigation()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_BestForNavigation;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_BestForNavigation(JAVA_DOUBLE v)
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_BestForNavigation = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_Best()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Best;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_Best(JAVA_DOUBLE v)
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Best = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_NearestTenMeters()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_NearestTenMeters;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_NearestTenMeters(JAVA_DOUBLE v)
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_NearestTenMeters = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_HundredMeters()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_HundredMeters;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_HundredMeters(JAVA_DOUBLE v)
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_HundredMeters = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_Kilometer()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Kilometer;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_Kilometer(JAVA_DOUBLE v)
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Kilometer = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_ThreeKilometers()
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_ThreeKilometers;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_ThreeKilometers(JAVA_DOUBLE v)
{
    if (!__CLASS_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_ThreeKilometers = v;
}

