
#include "xmlvm.h"
#include "org_apache_harmony_luni_platform_OSFileSystem.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION

#include "xmlvm-util.h"

#define IFileSystem_SHARED_LOCK_TYPE 1
#define IFileSystem_EXCLUSIVE_LOCK_TYPE 2
#define IFileSystem_SEEK_SET 1
#define IFileSystem_SEEK_CUR 2
#define IFileSystem_SEEK_END 4
#define IFileSystem_O_RDONLY 0
#define IFileSystem_O_WRONLY 1
#define IFileSystem_O_RDWR 16
#define IFileSystem_O_RDWRSYNC 32
#define IFileSystem_O_APPEND 256
#define IFileSystem_O_CREAT 4096
#define IFileSystem_O_EXCL 65536
#define IFileSystem_O_NOCTTY 1048576
#define IFileSystem_O_NONBLOCK 16777216
#define IFileSystem_O_TRUNC 268435456

//XMLVM_END_NATIVE_IMPLEMENTATION

void org_apache_harmony_luni_platform_OSFileSystem_oneTimeInitializationImpl__()
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_oneTimeInitializationImpl__]
    //XMLVM_END_NATIVE
}

JAVA_INT org_apache_harmony_luni_platform_OSFileSystem_lockImpl___long_long_long_int_boolean(JAVA_OBJECT me, JAVA_LONG n1, JAVA_LONG n2, JAVA_LONG n3, JAVA_INT n4, JAVA_BOOLEAN n5)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_lockImpl___long_long_long_int_boolean]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT org_apache_harmony_luni_platform_OSFileSystem_getAllocGranularity__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_getAllocGranularity__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT org_apache_harmony_luni_platform_OSFileSystem_unlockImpl___long_long_long(JAVA_OBJECT me, JAVA_LONG n1, JAVA_LONG n2, JAVA_LONG n3)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_unlockImpl___long_long_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT org_apache_harmony_luni_platform_OSFileSystem_fflushImpl___long_boolean(JAVA_OBJECT me, JAVA_LONG n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_fflushImpl___long_boolean]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_seekImpl___long_long_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_LONG n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_seekImpl___long_long_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_readDirectImpl___long_long_int_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_LONG n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_readDirectImpl___long_long_int_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_writeDirectImpl___long_long_int_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_LONG n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_writeDirectImpl___long_long_int_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_readImpl___long_byte_1ARRAY_int_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_readImpl___long_byte_1ARRAY_int_int]
    FILE* fileDescriptor                = (FILE*) n1;
    org_xmlvm_runtime_XMLVMArray* bytes = n2;
    JAVA_INT offset                     = n3;
    JAVA_INT length                     = n4;
    
    JAVA_ARRAY_BYTE* data = bytes->fields.org_xmlvm_runtime_XMLVMArray.array_;
    JAVA_LONG read = fread(data + offset, length, 1, fileDescriptor);
    return read == 0 ? -1 : read;
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_writeImpl___long_byte_1ARRAY_int_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_writeImpl___long_byte_1ARRAY_int_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_readvImpl___long_long_1ARRAY_int_1ARRAY_int_1ARRAY_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_INT n5)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_readvImpl___long_long_1ARRAY_int_1ARRAY_int_1ARRAY_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_writev___long_java_lang_Object_1ARRAY_int_1ARRAY_int_1ARRAY_int(JAVA_OBJECT me, JAVA_LONG n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_INT n5)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_writev___long_java_lang_Object_1ARRAY_int_1ARRAY_int_1ARRAY_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT org_apache_harmony_luni_platform_OSFileSystem_closeImpl___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_closeImpl___long]
    FILE* fileDescriptor = (FILE*) n1;
    int err = fclose(fileDescriptor);
    return err == 0 ? 0 : -1;
    //XMLVM_END_NATIVE
}

JAVA_INT org_apache_harmony_luni_platform_OSFileSystem_truncateImpl___long_long(JAVA_OBJECT me, JAVA_LONG n1, JAVA_LONG n2)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_truncateImpl___long_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_openImpl___byte_1ARRAY_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_openImpl___byte_1ARRAY_int]
    JAVA_INT mode = n2;
    char* modeString = NULL;
    if (mode == IFileSystem_O_RDONLY) {
        modeString = "rb";
    }
    if (mode == IFileSystem_O_WRONLY) {
        modeString = "wb";
    }
    if (modeString == NULL) {
        XMLVM_INTERNAL_ERROR();
    }
    char* fileName = XMLVMUtil_convertFromByteArray(n1);
    FILE* file = fopen(fileName, modeString);
    return (file == NULL) ? -1 : (JAVA_LONG) file;
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_transferImpl___long_java_io_FileDescriptor_long_long(JAVA_OBJECT me, JAVA_LONG n1, JAVA_OBJECT n2, JAVA_LONG n3, JAVA_LONG n4)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_transferImpl___long_java_io_FileDescriptor_long_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_ttyAvailableImpl__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_ttyAvailableImpl__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_availableImpl___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_availableImpl___long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_sizeImpl___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_sizeImpl___long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG org_apache_harmony_luni_platform_OSFileSystem_ttyReadImpl___byte_1ARRAY_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_NATIVE[org_apache_harmony_luni_platform_OSFileSystem_ttyReadImpl___byte_1ARRAY_int_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_org_apache_harmony_luni_platform_OSFileSystem()
{
#ifdef XMLVM_VTABLE_IDX_org_apache_harmony_luni_platform_OSFileSystem_getAllocGranularity__
    __TIB_org_apache_harmony_luni_platform_OSFileSystem.vtable[XMLVM_VTABLE_IDX_org_apache_harmony_luni_platform_OSFileSystem_getAllocGranularity__] = 
        (VTABLE_PTR) org_apache_harmony_luni_platform_OSFileSystem_getAllocGranularity__;
#endif
#ifdef XMLVM_VTABLE_IDX_org_apache_harmony_luni_platform_OSFileSystem_writev___long_java_lang_Object_1ARRAY_int_1ARRAY_int_1ARRAY_int
    __TIB_org_apache_harmony_luni_platform_OSFileSystem.vtable[XMLVM_VTABLE_IDX_org_apache_harmony_luni_platform_OSFileSystem_writev___long_java_lang_Object_1ARRAY_int_1ARRAY_int_1ARRAY_int] = 
        (VTABLE_PTR) org_apache_harmony_luni_platform_OSFileSystem_writev___long_java_lang_Object_1ARRAY_int_1ARRAY_int_1ARRAY_int;
#endif
}
