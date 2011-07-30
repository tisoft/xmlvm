
#include "xmlvm.h"
#include "org_xmlvm_runtime_FinalizerNotifier.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void org_xmlvm_runtime_FinalizerNotifier_preventGarbageCollection___boolean(JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_NATIVE[org_xmlvm_runtime_FinalizerNotifier_preventGarbageCollection___boolean]
    if (n1) {
        // Disable garbage collection.  Even GC_gcollect calls will be ineffective.
        GC_disable();
    } else {
        // Reenable garbage collection.  GC_disable() and GC_enable() calls
        // nest.  Garbage collection is enabled if the number of calls to both
        // functions is equal.
        GC_enable();
    }
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN org_xmlvm_runtime_FinalizerNotifier_shouldInvokeFinalizers__()
{
    //XMLVM_BEGIN_NATIVE[org_xmlvm_runtime_FinalizerNotifier_shouldInvokeFinalizers__]
    return GC_should_invoke_finalizers();
    //XMLVM_END_NATIVE
}

JAVA_INT org_xmlvm_runtime_FinalizerNotifier_invokeFinalizers__()
{
    //XMLVM_BEGIN_NATIVE[org_xmlvm_runtime_FinalizerNotifier_invokeFinalizers__]
    return GC_invoke_finalizers();
    //XMLVM_END_NATIVE
}

