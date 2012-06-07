
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFCharacterSet (CFCharacterSetWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFCharacterSet (CFCharacterSetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFCharacterSet.classInitialized)
        __INIT_org_xmlvm_ios_CFCharacterSet();
}
@end

void org_xmlvm_ios_CFCharacterSet_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFCharacterSet class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFCharacterSet();
        org_xmlvm_ios_CFCharacterSet_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFCharacterSet]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFCharacterSet]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet___INIT___]
    CFCharacterSet* var0 = [[CFCharacterSet alloc ] init];
    org_xmlvm_ios_CFCharacterSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_getPredefined___long]

    CFCharacterSet* var0 = CFCharacterSetGetPredefined(n1);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_createWithCharactersInRange___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFRange]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFCharacterSet* var0 = CFCharacterSetCreateWithCharactersInRange(var1,toCFRange(n2));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_createWithCharactersInString___org_xmlvm_ios_CFAllocator_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    CFCharacterSet* var0 = CFCharacterSetCreateWithCharactersInString(var1,ObjCVar2);
    
    [ObjCVar2 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_createWithBitmapRepresentation___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_createInvertedSet___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFCharacterSet]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFCharacterSet* var0 = CFCharacterSetCreateInvertedSet(var1,(CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_isSupersetOfSet___org_xmlvm_ios_CFCharacterSet]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_hasMemberInPlane___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_createMutable___org_xmlvm_ios_CFAllocator]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFCharacterSet* var0 = ABMultiValueCreateMutable(var1);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_createCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFCharacterSet]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFCharacterSet* var0 = CFHostCreateCopy(var1,(CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_createMutableCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFCharacterSet]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFCharacterSet* var0 = ABMultiValueCreateMutableCopy(var1,(CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_isCharacterMember___short]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_isLongCharacterMember___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_createBitmapRepresentation___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFCharacterSet]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_addCharactersInRange___org_xmlvm_ios_CFCharacterSet_org_xmlvm_ios_CFRange]
CFCharacterSetAddCharactersInRange((CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_removeCharactersInRange___org_xmlvm_ios_CFCharacterSet_org_xmlvm_ios_CFRange]
CFCharacterSetRemoveCharactersInRange((CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_addCharactersInString___org_xmlvm_ios_CFCharacterSet_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    CFCharacterSetAddCharactersInString((CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_removeCharactersInString___org_xmlvm_ios_CFCharacterSet_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    CFCharacterSetRemoveCharactersInString((CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_union___org_xmlvm_ios_CFCharacterSet_org_xmlvm_ios_CFCharacterSet]
CFCharacterSetUnion((CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_intersect___org_xmlvm_ios_CFCharacterSet_org_xmlvm_ios_CFCharacterSet]
CFCharacterSetIntersect((CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFCharacterSet_invert___org_xmlvm_ios_CFCharacterSet]
CFCharacterSetInvert((CFCharacterSet*) (((org_xmlvm_ios_CFCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER
