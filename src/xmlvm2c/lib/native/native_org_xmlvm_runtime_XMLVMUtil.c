
#include "xmlvm.h"
#include "org_xmlvm_runtime_XMLVMUtil.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#include <unistd.h>
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT org_xmlvm_runtime_XMLVMUtil_getCurrentWorkingDirectory__()
{
    //XMLVM_BEGIN_NATIVE[org_xmlvm_runtime_XMLVMUtil_getCurrentWorkingDirectory__]
    char buf[1024];
    char* err = getcwd(buf, sizeof(buf));
    if (err == NULL) {
        XMLVM_INTERNAL_ERROR();
    }
    return xmlvm_create_java_string(buf);
    //XMLVM_END_NATIVE
}

