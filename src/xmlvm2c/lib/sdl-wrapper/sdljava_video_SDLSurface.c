#include "xmlvm.h"
#include "sdljava_video_SDLRect.h"

#include "sdljava_video_SDLSurface.h"

#define XMLVM_CURRENT_CLASS_NAME SDLSurface
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_video_SDLSurface

__TIB_DEFINITION_sdljava_video_SDLSurface __TIB_sdljava_video_SDLSurface = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_video_SDLSurface, // classInitializer
    "sdljava.video.SDLSurface", // className
    "sdljava.video", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_video_SDLSurface), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_video_SDLSurface;
JAVA_OBJECT __CLASS_sdljava_video_SDLSurface_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_video_SDLSurface_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_video_SDLSurface_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
void sdljava_video_SDLSurface___INIT___INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, SDL_Surface *delegate)
{
	if (delegate == 0) {
		XMLVM_THROW_WITH_CSTRING(sdljava_SDLException, SDL_GetError());
	}
	sdljava_video_SDLSurface___INIT___(me);
	sdljava_video_SDLSurface *surface = (sdljava_video_SDLSurface *) me;
	surface->fields.sdljava_video_SDLSurface.delegate = delegate;
}
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_sdljava_video_SDLSurface();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_video_SDLSurface___INIT___(obj);
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
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_sdljava_video_SDLSurface,
    &__CLASS_sdljava_video_SDLRect,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_sdljava_video_SDLRect,
    &__CLASS_long,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_long,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_long,
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"updateRect",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"updateRect",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(IIII)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getWidth",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"getHeight",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"blitSurface",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lsdljava/video/SDLSurface;Lsdljava/video/SDLRect;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"fillRect",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lsdljava/video/SDLRect;J)V",
    JAVA_NULL,
    JAVA_NULL},
    {"fillRect",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(J)V",
    JAVA_NULL,
    JAVA_NULL},
    {"setAlpha",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(JI)V",
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
        sdljava_video_SDLSurface_updateRect__(receiver);
        break;
    case 1:
        sdljava_video_SDLSurface_updateRect___int_int_int_int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    case 2:
        conversion.i = (JAVA_INT) sdljava_video_SDLSurface_getWidth__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 3:
        conversion.i = (JAVA_INT) sdljava_video_SDLSurface_getHeight__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 4:
        conversion.i = (JAVA_INT) sdljava_video_SDLSurface_blitSurface___sdljava_video_SDLSurface_sdljava_video_SDLRect(receiver, argsArray[0], argsArray[1]);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 5:
        sdljava_video_SDLSurface_fillRect___sdljava_video_SDLRect_long(receiver, argsArray[0], ((java_lang_Long*) argsArray[1])->fields.java_lang_Long.value_);
        break;
    case 6:
        sdljava_video_SDLSurface_fillRect___long(receiver, ((java_lang_Long*) argsArray[0])->fields.java_lang_Long.value_);
        break;
    case 7:
        sdljava_video_SDLSurface_setAlpha___long_int(receiver, ((java_lang_Long*) argsArray[0])->fields.java_lang_Long.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_video_SDLSurface()
{
    staticInitializerLock(&__TIB_sdljava_video_SDLSurface);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_video_SDLSurface.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_video_SDLSurface.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_video_SDLSurface);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_video_SDLSurface.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_video_SDLSurface.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_video_SDLSurface.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.video.SDLSurface")
        __INIT_IMPL_sdljava_video_SDLSurface();
    }
}

void __INIT_IMPL_sdljava_video_SDLSurface()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_video_SDLSurface.newInstanceFunc = __NEW_INSTANCE_sdljava_video_SDLSurface;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_video_SDLSurface.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    __TIB_sdljava_video_SDLSurface.vtable[2] = (VTABLE_PTR) &sdljava_video_SDLSurface_finalize_sdljava_video_SDLSurface__;
    // Initialize interface information
    __TIB_sdljava_video_SDLSurface.numImplementedInterfaces = 0;
    __TIB_sdljava_video_SDLSurface.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_sdljava_video_SDLSurface.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_video_SDLSurface.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_video_SDLSurface.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_video_SDLSurface.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_video_SDLSurface.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_video_SDLSurface.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_video_SDLSurface.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_video_SDLSurface.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_video_SDLSurface = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_video_SDLSurface);
    __TIB_sdljava_video_SDLSurface.clazz = __CLASS_sdljava_video_SDLSurface;
    __TIB_sdljava_video_SDLSurface.baseType = JAVA_NULL;
    __CLASS_sdljava_video_SDLSurface_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLSurface);
    __CLASS_sdljava_video_SDLSurface_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLSurface_1ARRAY);
    __CLASS_sdljava_video_SDLSurface_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_video_SDLSurface_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_video_SDLSurface]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_video_SDLSurface.classInitialized = 1;
}

void __DELETE_sdljava_video_SDLSurface(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_video_SDLSurface]
    //XMLVM_END_WRAPPER
    // Call the finalizer
    (*(void (*)(JAVA_OBJECT)) ((java_lang_Object*) me)->tib->vtable[XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__])(me);
}

void __INIT_INSTANCE_MEMBERS_sdljava_video_SDLSurface(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 1 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_video_SDLSurface]
    //XMLVM_END_WRAPPER
    if (!derivedClassWillRegisterFinalizer) {
        // Tell the GC to finalize us
        XMLVM_FINALIZE(me, __DELETE_sdljava_video_SDLSurface);
    }
}

JAVA_OBJECT __NEW_sdljava_video_SDLSurface()
{
    if (!__TIB_sdljava_video_SDLSurface.classInitialized) __INIT_sdljava_video_SDLSurface();
    sdljava_video_SDLSurface* me = (sdljava_video_SDLSurface*) XMLVM_MALLOC(sizeof(sdljava_video_SDLSurface));
    me->tib = &__TIB_sdljava_video_SDLSurface;
    __INIT_INSTANCE_MEMBERS_sdljava_video_SDLSurface(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_video_SDLSurface]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_video_SDLSurface()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_video_SDLSurface();
    sdljava_video_SDLSurface___INIT___(me);
    return me;
}

void sdljava_video_SDLSurface___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface___INIT___]
	java_lang_Object___INIT___(me);
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLSurface_updateRect__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface_updateRect__]
	sdljava_video_SDLSurface_updateRect___int_int_int_int(me, 0, 0, 0, 0);
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLSurface_updateRect___int_int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface_updateRect___int_int_int_int]
    XMLVM_ENTER_METHOD("sdljava.video.SDLSurface", "updateRect", "?");

	sdljava_video_SDLSurface *surface = (sdljava_video_SDLSurface *) me;
	SDL_Surface *delegate = surface->fields.sdljava_video_SDLSurface.delegate;
    if (delegate) {
    	SDL_UpdateRect(delegate, 0, 0, 0, 0);
    } else return;
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_video_SDLSurface_getWidth__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface_getWidth__]
	sdljava_video_SDLSurface *surface = (sdljava_video_SDLSurface *) me;
	SDL_Surface *delegate = surface->fields.sdljava_video_SDLSurface.delegate;
	if (delegate) {
    	return (JAVA_INT) delegate->w;
    } else return 0;
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_video_SDLSurface_getHeight__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface_getHeight__]
	sdljava_video_SDLSurface *surface = (sdljava_video_SDLSurface *) me;
	SDL_Surface *delegate = surface->fields.sdljava_video_SDLSurface.delegate;
    if (delegate) {
    	return (JAVA_INT) delegate->h;
    } else return 0;
    //XMLVM_END_WRAPPER
}

JAVA_INT sdljava_video_SDLSurface_blitSurface___sdljava_video_SDLSurface_sdljava_video_SDLRect(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface_blitSurface___sdljava_video_SDLSurface_sdljava_video_SDLRect]
    XMLVM_ENTER_METHOD("sdljava.video.SDLSurface", "blitSurface", "?");

	sdljava_video_SDLSurface *surface = (sdljava_video_SDLSurface *) me;
	SDL_Surface *delegate = surface->fields.sdljava_video_SDLSurface.delegate;
	sdljava_video_SDLSurface *dstSurface = (sdljava_video_SDLSurface *) n1;
	SDL_Surface *dstDelegate = dstSurface->fields.sdljava_video_SDLSurface.delegate;

    if (delegate && dstDelegate) {
    	SDL_Rect rect= {0,0,0,0};
    	SDL_Rect src = {0,0,0,0};
    	src.w  = delegate->w;
    	src.h  = delegate->h;
    	sdljava_video_SDLRect *javaRect = (sdljava_video_SDLRect *) n2;
    	rect.x = (int) (javaRect->fields.sdljava_video_SDLRect.x_);
    	rect.y = (int) (javaRect->fields.sdljava_video_SDLRect.y_);
    	rect.w = (int) (javaRect->fields.sdljava_video_SDLRect.width_);
    	rect.h = (int) (javaRect->fields.sdljava_video_SDLRect.height_);
    	if (SDL_BlitSurface(delegate, &src, dstDelegate, &rect) != 0) {
        	//TODO: Throw exception if blitsurface fails?
    	}
    }
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLSurface_finalize_sdljava_video_SDLSurface__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface_finalize_sdljava_video_SDLSurface__]
	sdljava_video_SDLSurface *surface = (sdljava_video_SDLSurface *) me;
	SDL_Surface *delegate = surface->fields.sdljava_video_SDLSurface.delegate;
	if (delegate) SDL_FreeSurface(delegate);
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLSurface_fillRect___sdljava_video_SDLRect_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface_fillRect___sdljava_video_SDLRect_long]
	sdljava_video_SDLSurface *surface = (sdljava_video_SDLSurface *) me;
	SDL_Surface *delegate = surface->fields.sdljava_video_SDLSurface.delegate;
    if (delegate) {
    	SDL_Rect rect= {0,0,0,0};
    	sdljava_video_SDLRect *javaRect = (sdljava_video_SDLRect *) n1;
    	rect.x = (int) (javaRect->fields.sdljava_video_SDLRect.x_);
    	rect.y = (int) (javaRect->fields.sdljava_video_SDLRect.y_);
    	rect.w = (int) (javaRect->fields.sdljava_video_SDLRect.width_);
    	rect.h = (int) (javaRect->fields.sdljava_video_SDLRect.height_);
    	if (SDL_FillRect(delegate, &rect, (Uint32) n2) != 0) {
        	//TODO: Throw exception if blitsurface fails?
    	}
    }
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLSurface_fillRect___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface_fillRect___long]
	sdljava_video_SDLSurface *surface = (sdljava_video_SDLSurface *) me;
	SDL_Surface *delegate = surface->fields.sdljava_video_SDLSurface.delegate;
    if (delegate) {
    	if (SDL_FillRect(delegate, 0, (Uint32) n1) != 0) {
        	//TODO: Throw exception if blitsurface fails?
    	}
    }
    //XMLVM_END_WRAPPER
}

void sdljava_video_SDLSurface_setAlpha___long_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_video_SDLSurface_setAlpha___long_int]
	sdljava_video_SDLSurface *surface = (sdljava_video_SDLSurface *) me;
	SDL_Surface *delegate = surface->fields.sdljava_video_SDLSurface.delegate;
    if (delegate) {
    	SDL_SetAlpha(delegate, (Uint32) n1, (Uint8) n2);
    }
    //XMLVM_END_WRAPPER
}

