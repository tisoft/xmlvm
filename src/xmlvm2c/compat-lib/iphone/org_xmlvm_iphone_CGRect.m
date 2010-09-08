#include "org_xmlvm_iphone_CGPoint.h"
#include "java_lang_Object.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CGRect.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CGRect __CLASS_org_xmlvm_iphone_CGRect = {
    0, // classInitialized
    "org.xmlvm.iphone.CGRect", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION

CGRect toCGRect(void *rect)
{
	org_xmlvm_iphone_CGRect *r = rect;
	
	org_xmlvm_iphone_CGPoint *p = r->org_xmlvm_iphone_CGRect.origin_;
	org_xmlvm_iphone_CGSize *s = r->org_xmlvm_iphone_CGRect.size_; 
	
	CGRect toRet;
	toRet.size.height = s->org_xmlvm_iphone_CGSize.height_;
	toRet.size.width = s->org_xmlvm_iphone_CGSize.width_;
	toRet.origin.x = p->org_xmlvm_iphone_CGPoint.x_;
	toRet.origin.y = p->org_xmlvm_iphone_CGPoint.y_;	
	return toRet;
	
}

//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CGRect()
{
    __CLASS_org_xmlvm_iphone_CGRect.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_CGRect.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGRect;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CGRect.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CGRect.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CGRect_isNull__;
    __CLASS_org_xmlvm_iphone_CGRect.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CGRect_isEmpty__;
    __CLASS_org_xmlvm_iphone_CGRect.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CGRect_isInfinite__;
    __CLASS_org_xmlvm_iphone_CGRect.vtable[4] = (VTABLE_PTR) &org_xmlvm_iphone_CGRect_toString__;
    __CLASS_org_xmlvm_iphone_CGRect.vtable[2] = (VTABLE_PTR) &org_xmlvm_iphone_CGRect_equals___java_lang_Object;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CGRect.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CGRect.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);

    org_xmlvm_iphone_CGRect___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGRect]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGRect()
{
    if (!__CLASS_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    org_xmlvm_iphone_CGRect* me = (org_xmlvm_iphone_CGRect*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGRect));
    me->__class = &__CLASS_org_xmlvm_iphone_CGRect;
    me->org_xmlvm_iphone_CGRect.origin_ = (org_xmlvm_iphone_CGPoint*) JAVA_NULL;
    me->org_xmlvm_iphone_CGRect.size_ = (org_xmlvm_iphone_CGSize*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGRect]
 	me->org_xmlvm_iphone_CGRect.origin_ = __NEW_org_xmlvm_iphone_CGPoint();
    me->org_xmlvm_iphone_CGRect.size_ = __NEW_org_xmlvm_iphone_CGSize();
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGRect()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_CGRect(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGRect]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGRect___CLINIT_()
{
    if (!__CLASS_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect___CLINIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGRect___INIT____float_float_float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect___INIT____float_float_float_float]
	org_xmlvm_iphone_CGRect* thiz = me;

	org_xmlvm_iphone_CGPoint *p =  thiz->org_xmlvm_iphone_CGRect.origin_;
	
	org_xmlvm_iphone_CGSize *s = thiz->org_xmlvm_iphone_CGRect.size_;
	p->org_xmlvm_iphone_CGPoint.x_ = n1;
	p->org_xmlvm_iphone_CGPoint.y_ = n2;
	s->org_xmlvm_iphone_CGSize.width_ = n3;
	s->org_xmlvm_iphone_CGSize.height_ = n4;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGRect___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect___INIT____org_xmlvm_iphone_CGRect]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_Null__()
{
    if (!__CLASS_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_Null__]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_Zero__()
{
    if (!__CLASS_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_Zero__]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_Infinite__()
{
    if (!__CLASS_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_Infinite__]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__CLASS_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect]
	CGRect result = CGRectIntersection(toCGRect(n1), toCGRect(n2));
	org_xmlvm_iphone_CGRect *toRet = __NEW_org_xmlvm_iphone_CGRect();
	org_xmlvm_iphone_CGRect___INIT____float_float_float_float(toRet, result.origin.x, result.origin.y, result.size.width, result.size.height);
	return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGRect_isNull__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_isNull__]
	return CGRectIsNull(toCGRect(me));
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGRect_isEmpty__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_isEmpty__]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGRect_isInfinite__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_isInfinite__]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_toString__]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGRect_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_equals___java_lang_Object]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

