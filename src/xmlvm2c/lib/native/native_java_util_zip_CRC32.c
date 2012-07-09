
#include "xmlvm.h"
#include "java_util_zip_CRC32.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#ifdef XMLVM_NEW_IOS_API
#include "xmlvm-ios.h"
#include "org_xmlvm_ios_NSObject.h"
#else
#include "org_xmlvm_iphone_NSObject.h"
#endif
#include "zlib.h"
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_LONG java_util_zip_CRC32_updateImpl___byte_1ARRAY_int_int_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_LONG n4)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_CRC32_updateImpl___byte_1ARRAY_int_int_long]
    XMLVM_VAR_BYTE_ARRAY(buf, n1);
    XMLVM_VAR_INT(off, n2);
    XMLVM_VAR_INT(len, n3);
    XMLVM_VAR_LONG(crc, n4);
    
    JAVA_ARRAY_OBJECT *b;
    JAVA_LONG result;
    
    b = buf->fields.org_xmlvm_runtime_XMLVMArray.array_;
    result = crc32 ((uLong) crc, (Bytef *) (b + off), (uInt) len);
    return result;
    //XMLVM_END_NATIVE
}

JAVA_LONG java_util_zip_CRC32_updateByteImpl___byte_long(JAVA_OBJECT me, JAVA_BYTE n1, JAVA_LONG n2)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_CRC32_updateByteImpl___byte_long]
    XMLVM_VAR_BYTE(val, n1);
    XMLVM_VAR_LONG(crc, n2);
    return crc32 ((uLong) crc, (Bytef *) val, 1);
    //XMLVM_END_NATIVE
}

