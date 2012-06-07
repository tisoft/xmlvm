
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFBitVector (CFBitVectorWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFBitVector (CFBitVectorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFBitVector.classInitialized)
        __INIT_org_xmlvm_ios_CFBitVector();
}
@end

void org_xmlvm_ios_CFBitVector_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFBitVector class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFBitVector();
        org_xmlvm_ios_CFBitVector_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFBitVector]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFBitVector]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector___INIT____org_xmlvm_ios_CFAllocator_byte_1ARRAY_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    CFBitVector* var0 = [[CFBitVector alloc] create:var1];
    org_xmlvm_ios_CFBitVector_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector___INIT___]
    CFBitVector* var0 = [[CFBitVector alloc ] init];
    org_xmlvm_ios_CFBitVector_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_createCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFBitVector]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFBitVector* var0 = CFHostCreateCopy(var1,(CFBitVector*) (((org_xmlvm_ios_CFBitVector*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_createMutable___org_xmlvm_ios_CFAllocator_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFBitVector* var0 = ABMultiValueCreateMutable(var1,n2);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_createMutableCopy___org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_CFBitVector]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFBitVector* var0 = ABMultiValueCreateMutableCopy(var1,n2,(CFBitVector*) (((org_xmlvm_ios_CFBitVector*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_getCount__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_getCountOfBit___org_xmlvm_ios_CFRange_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_containsBit___org_xmlvm_ios_CFRange_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_getBitAtIndex___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_getBits___org_xmlvm_ios_CFRange_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_getFirstIndexOfBit___org_xmlvm_ios_CFRange_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_getLastIndexOfBit___org_xmlvm_ios_CFRange_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_setCount___org_xmlvm_ios_CFBitVector_long]
CFBitVectorSetCount((CFBitVector*) (((org_xmlvm_ios_CFBitVector*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_flipBitAtIndex___org_xmlvm_ios_CFBitVector_long]
CFBitVectorFlipBitAtIndex((CFBitVector*) (((org_xmlvm_ios_CFBitVector*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_flipBits___org_xmlvm_ios_CFBitVector_org_xmlvm_ios_CFRange]
CFBitVectorFlipBits((CFBitVector*) (((org_xmlvm_ios_CFBitVector*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_setBitAtIndex___org_xmlvm_ios_CFBitVector_long_int]
CFBitVectorSetBitAtIndex((CFBitVector*) (((org_xmlvm_ios_CFBitVector*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_setBits___org_xmlvm_ios_CFBitVector_org_xmlvm_ios_CFRange_int]
CFBitVectorSetBits((CFBitVector*) (((org_xmlvm_ios_CFBitVector*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2),n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBitVector_setAllBits___org_xmlvm_ios_CFBitVector_int]
CFBitVectorSetAllBits((CFBitVector*) (((org_xmlvm_ios_CFBitVector*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2);
    
    
//XMLVM_END_WRAPPER
