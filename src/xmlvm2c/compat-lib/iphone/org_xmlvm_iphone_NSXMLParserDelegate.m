#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSXMLParser.h"
#include "java_util_Map.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSXMLParserDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSXMLParserDelegate __TIB_org_xmlvm_iphone_NSXMLParserDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSXMLParserDelegate, // classInitializer
    "org.xmlvm.iphone.NSXMLParserDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_ARRAYTYPE;

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
        JAVA_OBJECT key_ = toJavaString(key);
        JAVA_OBJECT value_ = toJavaString(value);
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
    self->parser = parser_;
}

- (void) parser:(NSXMLParser *)parser didStartMappingPrefix:(NSString *)prefix toURI:(NSString *)namespaceURI
{
    Func_VOOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String];
    JAVA_OBJECT prefix_ = toJavaString(prefix);
    JAVA_OBJECT namespaceURI_ = toJavaString(namespaceURI);
    (*func)(self->delegate, self->parser, prefix_, namespaceURI_);
}

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
   namespaceURI:(NSString *)namespaceURI
  qualifiedName:(NSString *)qualifiedName
     attributes:(NSDictionary *)attributeDict
{
    Func_VOOOOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map];
    JAVA_OBJECT elementName_ = toJavaString(elementName);
    JAVA_OBJECT namespaceURI_ = toJavaString(namespaceURI);
    JAVA_OBJECT qualifiedName_ = qualifiedName == nil ? elementName_ : toJavaString(qualifiedName);
    JAVA_OBJECT attributes_ = convertAttributes(attributeDict);
    (*func)(self->delegate, self->parser, elementName_, namespaceURI_, qualifiedName_, attributes_);
}

- (void) parser:(NSXMLParser *)parser
  didEndElement:(NSString *)elementName
   namespaceURI:(NSString *)namespaceURI
  qualifiedName:(NSString *)qualifiedName
{
    Func_VOOOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String];
    JAVA_OBJECT elementName_ = toJavaString(elementName);
    JAVA_OBJECT namespaceURI_ = toJavaString(namespaceURI);
    JAVA_OBJECT qualifiedName_ = qualifiedName == nil ? elementName_ : toJavaString(qualifiedName);
    (*func)(self->delegate, self->parser, elementName_, namespaceURI_, qualifiedName_);
}

- (void) parser:(NSXMLParser *)parser
foundCharacters:(NSString *)string
{
    Func_VOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String];
    JAVA_OBJECT string_ = toJavaString(string);
    (*func)(self->delegate, self->parser, string_);
}

- (void)parser:(NSXMLParser *)parser
	foundCDATA:(NSData *)data
{
    Func_VOOO func = self->delegate->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData];
    org_xmlvm_iphone_NSData* data_ = __NEW_org_xmlvm_iphone_NSData();
    org_xmlvm_iphone_NSData_INTERNAL_CONSTRUCTOR(data_, [data retain]);
    (*func)(self->delegate, self->parser, data_);
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

void __INIT_org_xmlvm_iphone_NSXMLParserDelegate()
{
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSXMLParserDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_didStartMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_didEndMappingPrefix___org_xmlvm_iphone_NSXMLParser_java_lang_String;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_didStartElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String_java_util_Map;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_didEndElement___org_xmlvm_iphone_NSXMLParser_java_lang_String_java_lang_String_java_lang_String;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_foundCharacters___org_xmlvm_iphone_NSXMLParser_java_lang_String;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_foundCDATA___org_xmlvm_iphone_NSXMLParser_org_xmlvm_iphone_NSData;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_NSXMLParserDelegate_setParser___org_xmlvm_iphone_NSXMLParser;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSXMLParserDelegate);
    __TIB_org_xmlvm_iphone_NSXMLParserDelegate.clazz = __CLASS_org_xmlvm_iphone_NSXMLParserDelegate;
    __CLASS_org_xmlvm_iphone_NSXMLParserDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSXMLParserDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSXMLParserDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSXMLParserDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSXMLParserDelegate]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSXMLParserDelegate()
{
    if (!__TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitialized) __INIT_org_xmlvm_iphone_NSXMLParserDelegate();
    org_xmlvm_iphone_NSXMLParserDelegate* me = (org_xmlvm_iphone_NSXMLParserDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSXMLParserDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_NSXMLParserDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSXMLParserDelegate]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSXMLParserDelegate);
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

JAVA_OBJECT org_xmlvm_iphone_NSXMLParserDelegate_access$000___org_xmlvm_iphone_NSXMLParserDelegate(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSXMLParserDelegate.classInitialized) __INIT_org_xmlvm_iphone_NSXMLParserDelegate();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSXMLParserDelegate_access$000___org_xmlvm_iphone_NSXMLParserDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

