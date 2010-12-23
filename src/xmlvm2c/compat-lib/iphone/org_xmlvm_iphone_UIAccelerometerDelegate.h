#ifndef __ORG_XMLVM_IPHONE_UIACCELEROMETERDELEGATE__
#define __ORG_XMLVM_IPHONE_UIACCELEROMETERDELEGATE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif

XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIAccelerometerDelegate, 12)

#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAccelerometerDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAccelerometerDelegate
typedef struct org_xmlvm_iphone_UIAccelerometerDelegate org_xmlvm_iphone_UIAccelerometerDelegate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIAccelerometerDelegate 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAccelerometerDelegate_accelerometerDidAccelerate___org_xmlvm_iphone_UIAccelerometer_org_xmlvm_iphone_UIAcceleration 11

void __INIT_org_xmlvm_iphone_UIAccelerometerDelegate(__TIB_DEFINITION_TEMPLATE** interface);

#endif
