#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSXMLParser.h"

#include "org_xmlvm_iphone_NSXMLParserDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME NSXMLParserDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSXMLParserDelegate

__TIB_DEFINITION_org_xmlvm_iphone_NSXMLParserDelegate __TIB_org_xmlvm_iphone_NSXMLParserDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSXMLParserDelegate, // classInitializer
    "org.xmlvm.iphone.NSXMLParserDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSXMLParserDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#include "xmlvm-util.h"
#include "org_xmlvm_iphone_NSString.h"


JAVA_OBJECT convertAttributes(NSDictionary* attributes)
{
    JAVA_OBJECT map = XMLVMUtil_NEW_HashMap();
    NSEnumerator* enumerator = [attributes keyEnumerator];
    id key;
    while ((key = [enumerator nextObject])) {
        id value = [attributes objectForKey:key];
        JAVA_OBJECT key_ = fromNSString(key);
        JAVA_OBJECT value_ = fromNSString(value);
        XMLVMUtil_HashMap_put(map, key_, value_);
    }
    return map;
}

@implementation NSXMLParserDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
{
    [super init];
    self->delegate = delegate_;
    self->parser = JAVA_NULL;
    return self;
}

- (void) setParser:(JAVA_OBJECT) parser_
{
	// TODO: Make use of DelegateWrapper bases class to support multiple source classes
	if (self->parser != JAVA_NULL) {
		XMLVM_INTERNAL_ERROR();
	}
	
    self->parser = parser_;
}

- (void) parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI
{
    JAVA_OBJECT prefix_ = fromNSString(prefix);
    JAVA_OBJECT namespaceURI_ = fromNSString(namespaceURI);
	#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String
    Func_VOOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String];
    (*func)(self->delegate, self->parser, prefix_, namespaceURI_);
    #else
	org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String(self->delegate, self->parser, prefix_, namespaceURI_);
    #endif
}

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
   namespaceURI:(NSString *)namespaceURI
  qualifiedName:(NSString *)qualifiedName
     attributes:(NSDictionary *)attributeDict
{
    Func_VOOOOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map];
    JAVA_OBJECT elementName_ = fromNSString(elementName);
    JAVA_OBJECT namespaceURI_ = fromNSString(namespaceURI);
    JAVA_OBJECT qualifiedName_ = qualifiedName == nil ? elementName_ : fromNSString(qualifiedName);
    JAVA_OBJECT attributes_ = convertAttributes(attributeDict);
    (*func)(self->delegate, self->parser, elementName_, namespaceURI_, qualifiedName_, attributes_);
}

- (void) parser:(NSXMLParser *)parser
  didEndElement:(NSString *)elementName
   namespaceURI:(NSString *)namespaceURI
  qualifiedName:(NSString *)qualifiedName
{
    Func_VOOOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String];
    JAVA_OBJECT elementName_ = fromNSString(elementName);
    JAVA_OBJECT namespaceURI_ = fromNSString(namespaceURI);
    JAVA_OBJECT qualifiedName_ = qualifiedName == nil ? elementName_ : fromNSString(qualifiedName);
    (*func)(self->delegate, self->parser, elementName_, namespaceURI_, qualifiedName_);
}

- (void) parser:(NSXMLParser *)parser
foundCharacters:(NSString *)string
{
    Func_VOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String];
    JAVA_OBJECT string_ = fromNSString(string);
    (*func)(self->delegate, self->parser, string_);
}

- (void)parser:(NSXMLParser *)parser
	foundCDATA:(NSData *)data
{
    org_xmlvm_iphone_NSData* data_ = __NEW_org_xmlvm_iphone_NSData();
    org_xmlvm_iphone_NSData_INTERNAL_CONSTRUCTOR(data_, [data retain]);
    #ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData
	Func_VOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData];
    (*func)(self->delegate, self->parser, data_);
    #else
	org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData(self->delegate, self->parser, data_);
    #endif
}

@end

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSXMLParserDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSXMLParserDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSXMLParser,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSXMLParser,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSXMLParser,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_java_util_Map,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSXMLParser,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSXMLParser,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSXMLParser,
    &__CLASS_org_xmlvm_iphone_NSData,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSXMLParser,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"didStartMappingPrefix",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSXMLParser;Ljava/lang/String;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didEndMappingPrefix",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSXMLParser;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didStartElement",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSXMLParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didEndElement",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSXMLParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"foundCharacters",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSXMLParser;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"foundCDATA",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSXMLParser;Lorg/xmlvm/iphone/NSData;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"setParser",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSXMLParser;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 1:
        org_xmlvm_iphone_NSXMLParserDelegate_didEndMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map(receiver, argsArray[0], argsArray[1], argsArray[2], argsArray[3], argsArray[4]);
        break;
    case 3:
        org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String(receiver, argsArray[0], argsArray[1], argsArray[2], argsArray[3]);
        break;
    case 4:
        org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 5:
        org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData(receiver, argsArray[0], argsArray[1]);
        break;
    case 6:
        org_xmlvm_iphone_NSXMLParserDelegate_setParser___org_xmlvm_iphone_NSXMLParser(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSXMLParserDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSXMLParserDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSXMLParserDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSXMLParserDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSXMLParserDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSXMLParserDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSXMLParserDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParserDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSXMLParserDelegate);
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.clazz = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSXMLParserDelegate);
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSXMLParserDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSXMLParserDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSXMLParserDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSXMLParserDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSXMLParserDelegate]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParserDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSXMLParserDelegate()
{
    if (!__TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitialized) __INIT_org_xmlvm_iphone_NSXMLParserDelegate();
    org_xmlvm_iphone_NSXMLParserDelegate* me = (org_xmlvm_iphone_NSXMLParserDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSXMLParserDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_NSXMLParserDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSXMLParserDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSXMLParserDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParserDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSXMLParserDelegate();
    org_xmlvm_iphone_NSXMLParserDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSXMLParserDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate___INIT___]
    NSXMLParserDelegateWrapper* obj = [[NSXMLParserDelegateWrapper alloc] initWithDelegate:me];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String]
    // Do nothing
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_didEndMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_didEndMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String]
    // Do nothing
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_OBJECT n5)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map]
    // Do nothing
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String]
    // Do nothing
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String]
    // Do nothing
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData]
    // Do nothing
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSXMLParserDelegate_setParser___org_xmlvm_iphone_NSXMLParser(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_setParser___org_xmlvm_iphone_NSXMLParser]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

