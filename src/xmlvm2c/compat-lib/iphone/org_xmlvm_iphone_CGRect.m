#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGSize.h"

#include "org_xmlvm_iphone_CGRect.h"

#define XMLVM_CURRENT_CLASS_NAME CGRect
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGRect

__TIB_DEFINITION_org_xmlvm_iphone_CGRect __TIB_org_xmlvm_iphone_CGRect = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CGRect, // classInitializer
    "org.xmlvm.iphone.CGRect", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_CGRect), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGRect;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGRect_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGRect_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGRect_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

CGRect toCGRect(void *rect)
{
	org_xmlvm_iphone_CGRect *r = rect;
	
	org_xmlvm_iphone_CGPoint *p = r->fields.org_xmlvm_iphone_CGRect.origin_;
	org_xmlvm_iphone_CGSize *s = r->fields.org_xmlvm_iphone_CGRect.size_; 
	
	CGRect toRet;
	toRet.size.height = s->fields.org_xmlvm_iphone_CGSize.height_;
	toRet.size.width = s->fields.org_xmlvm_iphone_CGSize.width_;
	toRet.origin.x = p->fields.org_xmlvm_iphone_CGPoint.x_;
	toRet.origin.y = p->fields.org_xmlvm_iphone_CGPoint.y_;	
	return toRet;
	
}

JAVA_OBJECT fromCGRect(CGRect rect)
{
    org_xmlvm_iphone_CGRect* rect_ = __NEW_org_xmlvm_iphone_CGRect();
    org_xmlvm_iphone_CGRect___INIT____float_float_float_float(rect_, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    return rect_;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"origin",
    &__CLASS_org_xmlvm_iphone_CGPoint,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CGRect, fields.org_xmlvm_iphone_CGRect.origin_),
    0,
    "",
    JAVA_NULL},
    {"size",
    &__CLASS_org_xmlvm_iphone_CGSize,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CGRect, fields.org_xmlvm_iphone_CGRect.size_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(FFFF)V",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGRect();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CGRect___INIT____float_float_float_float(obj, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_);
        break;
    case 1:
        org_xmlvm_iphone_CGRect___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"Null",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"Zero",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"Infinite",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"Intersection",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;Lorg/xmlvm/iphone/CGRect;)Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"Union",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;Lorg/xmlvm/iphone/CGRect;)Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"isNull",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"isEmpty",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"isInfinite",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"toString",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"equals",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)Z",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGRect_Null__();
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGRect_Zero__();
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGRect_Infinite__();
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGRect_Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect(argsArray[0], argsArray[1]);
        break;
    case 4:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGRect_Union___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect(argsArray[0], argsArray[1]);
        break;
    case 5:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CGRect_isNull__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 6:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CGRect_isEmpty__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 7:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CGRect_isInfinite__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 8:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGRect_toString__(receiver);
        break;
    case 9:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CGRect_equals___java_lang_Object(receiver, argsArray[0]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGRect()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CGRect);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CGRect.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CGRect.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CGRect);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CGRect.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CGRect.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CGRect.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CGRect();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CGRect()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CGRect.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGRect;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGRect.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CGRect.vtable[5] = (VTABLE_PTR) &org_xmlvm_iphone_CGRect_toString__;
    __TIB_org_xmlvm_iphone_CGRect.vtable[1] = (VTABLE_PTR) &org_xmlvm_iphone_CGRect_equals___java_lang_Object;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CGRect.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGRect.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CGRect.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGRect.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGRect.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGRect.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGRect.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGRect.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGRect.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGRect.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGRect = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGRect);
    __TIB_org_xmlvm_iphone_CGRect.clazz = __CLASS_org_xmlvm_iphone_CGRect;
    __TIB_org_xmlvm_iphone_CGRect.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CGRect_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGRect);
    __CLASS_org_xmlvm_iphone_CGRect_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGRect_1ARRAY);
    __CLASS_org_xmlvm_iphone_CGRect_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGRect_2ARRAY);
    org_xmlvm_iphone_CGRect___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGRect]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CGRect.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CGRect(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGRect]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGRect(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_CGRect*) me)->fields.org_xmlvm_iphone_CGRect.origin_ = (org_xmlvm_iphone_CGPoint*) JAVA_NULL;
    ((org_xmlvm_iphone_CGRect*) me)->fields.org_xmlvm_iphone_CGRect.size_ = (org_xmlvm_iphone_CGSize*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGRect]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGRect()
{
    if (!__TIB_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    org_xmlvm_iphone_CGRect* me = (org_xmlvm_iphone_CGRect*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGRect));
    me->tib = &__TIB_org_xmlvm_iphone_CGRect;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGRect(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGRect]
 	me->fields.org_xmlvm_iphone_CGRect.origin_ = __NEW_org_xmlvm_iphone_CGPoint();
    me->fields.org_xmlvm_iphone_CGRect.size_ = __NEW_org_xmlvm_iphone_CGSize();
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGRect()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CGRect___INIT____float_float_float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect___INIT____float_float_float_float]
	org_xmlvm_iphone_CGRect* thiz = me;
	org_xmlvm_iphone_CGPoint *p =  thiz->fields.org_xmlvm_iphone_CGRect.origin_;
	org_xmlvm_iphone_CGSize *s = thiz->fields.org_xmlvm_iphone_CGRect.size_;
    
	p->fields.org_xmlvm_iphone_CGPoint.x_ = n1;
	p->fields.org_xmlvm_iphone_CGPoint.y_ = n2;
	s->fields.org_xmlvm_iphone_CGSize.width_ = n3;
	s->fields.org_xmlvm_iphone_CGSize.height_ = n4;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGRect___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect___INIT____org_xmlvm_iphone_CGRect]
    java_lang_Object___INIT___(me);
    org_xmlvm_iphone_CGRect* jthiz = me;
	org_xmlvm_iphone_CGPoint *p =  jthiz->fields.org_xmlvm_iphone_CGRect.origin_;
	org_xmlvm_iphone_CGSize *s = jthiz->fields.org_xmlvm_iphone_CGRect.size_;
    XMLVM_VAR_CGRect(other, n1);
	p->fields.org_xmlvm_iphone_CGPoint.x_ = other.origin.x;
	p->fields.org_xmlvm_iphone_CGPoint.y_ = other.origin.y;
	s->fields.org_xmlvm_iphone_CGSize.width_ = other.size.width;
	s->fields.org_xmlvm_iphone_CGSize.height_ = other.size.height;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_Null__()
{
    if (!__TIB_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_Null__]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_Zero__()
{
    if (!__TIB_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_Zero__]
    return fromCGRect(CGRectZero);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_Infinite__()
{
    if (!__TIB_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_Infinite__]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect]
	CGRect result = CGRectIntersection(toCGRect(n1), toCGRect(n2));
	org_xmlvm_iphone_CGRect *toRet = __NEW_org_xmlvm_iphone_CGRect();
	org_xmlvm_iphone_CGRect___INIT____float_float_float_float(toRet, result.origin.x, result.origin.y, result.size.width, result.size.height);
	return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGRect_Union___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGRect.classInitialized) __INIT_org_xmlvm_iphone_CGRect();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect_Union___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect]
    XMLVM_VAR_CGRect(rect1, n1);
    XMLVM_VAR_CGRect(rect2, n2);
    return fromCGRect(CGRectUnion(rect1, rect2));
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

void org_xmlvm_iphone_CGRect___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGRect___CLINIT___]
    //XMLVM_END_WRAPPER
}

