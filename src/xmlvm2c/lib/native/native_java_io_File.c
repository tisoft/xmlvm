
#include "xmlvm.h"
#include "java_io_File.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#include <sys/stat.h>
#include <unistd.h>
#include "xmlvm-util.h"

char * readlink_malloc (const char *filename)
{
    int size = 100;
    char *buffer = NULL;
          
    while (1)
    {
        buffer = (char *) XMLVM_ATOMIC_MALLOC (size);
        int nchars = readlink (filename, buffer, size);
        if (nchars < 0)
        {
            XMLVM_FREE(buffer);
            return NULL;
        }
        if (nchars < size)
            return buffer;
        XMLVM_FREE(buffer);
        size *= 2;
    }
}
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_io_File_oneTimeInitialization__()
{
    //XMLVM_BEGIN_NATIVE[java_io_File_oneTimeInitialization__]
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_io_File_rootsImpl__()
{
    //XMLVM_BEGIN_NATIVE[java_io_File_rootsImpl__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_isCaseSensitiveImpl__()
{
    //XMLVM_BEGIN_NATIVE[java_io_File_isCaseSensitiveImpl__]
    return 1;
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_deleteDirImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_deleteDirImpl___byte_1ARRAY]
    char* fileName = XMLVMUtil_convertFromByteArray(n1);
    return rmdir(fileName) == 0;
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_deleteFileImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_deleteFileImpl___byte_1ARRAY]
    char* fileName = XMLVMUtil_convertFromByteArray(n1);
    return remove(fileName) == 0;
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_existsImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_existsImpl___byte_1ARRAY]
    char* fileName = XMLVMUtil_convertFromByteArray(n1);
    struct stat buf;
    int err;
    err = stat(fileName, &buf);
    return err != -1;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_io_File_getCanonImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_getCanonImpl___byte_1ARRAY]
    //See HARMONY/classlib/modules/luni/src/main/native/luni/shared/file.c
    //They don't seem to do more either on a UNIX file system
    return n1;
    //XMLVM_END_NATIVE
}

JAVA_LONG java_io_File_getTotalSpaceImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_getTotalSpaceImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_io_File_getUsableSpaceImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_getUsableSpaceImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_io_File_getFreeSpaceImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_getFreeSpaceImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_isDirectoryImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_isDirectoryImpl___byte_1ARRAY]
    char* fileName = XMLVMUtil_convertFromByteArray(n1);
    struct stat buf;
    int err;
    err = stat(fileName, &buf);
    return buf.st_mode & S_IFDIR;
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_isFileImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_isFileImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_isHiddenImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_isHiddenImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_isReadOnlyImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_isReadOnlyImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_isWriteOnlyImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_isWriteOnlyImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_io_File_getLinkImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_getLinkImpl___byte_1ARRAY]
    const char* fileName = XMLVMUtil_convertFromByteArray(n1);
    char* resolved = readlink_malloc(fileName);
    if(resolved == NULL) {
        return n1;
    } else {
	XMLVMElem _r0;
        int length = strlen(resolved);
        _r0.o = XMLVMArray_createSingleDimension(__CLASS_byte, length);
        char* data = (char*) ((org_xmlvm_runtime_XMLVMArray*) _r0.o)->fields.org_xmlvm_runtime_XMLVMArray.array_;
        XMLVM_MEMCPY(data, resolved, length);
	return _r0.o;
    }
    //XMLVM_END_NATIVE
}

JAVA_LONG java_io_File_lastModifiedImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_lastModifiedImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_setLastModifiedImpl___byte_1ARRAY_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_setLastModifiedImpl___byte_1ARRAY_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_setReadOnlyImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_setReadOnlyImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_setReadableImpl___byte_1ARRAY_boolean_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_setReadableImpl___byte_1ARRAY_boolean_boolean]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_setWritableImpl___byte_1ARRAY_boolean_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_setWritableImpl___byte_1ARRAY_boolean_boolean]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_io_File_lengthImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_lengthImpl___byte_1ARRAY]
    char* fileName = XMLVMUtil_convertFromByteArray(n1);
    FILE* fp = fopen(fileName, "rb");
    fseek(fp, 0L, SEEK_END);
    JAVA_LONG size = ftell(fp);
    fclose(fp);
    return size;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_io_File_listImpl___byte_1ARRAY(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_listImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_mkdirImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_mkdirImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT java_io_File_newFileImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_newFileImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_renameToImpl___byte_1ARRAY_byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_renameToImpl___byte_1ARRAY_byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_setExecutableImpl___byte_1ARRAY_boolean_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_setExecutableImpl___byte_1ARRAY_boolean_boolean]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_io_File_isExecutableImpl___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_File_isExecutableImpl___byte_1ARRAY]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

