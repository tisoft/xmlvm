
//XMLVM_BEGIN_DECLARATIONS
#include "xmlvm-ios.h"
static char* key;
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_ios_NSTimer \
    		bool alloced;
    		// Set this flag to true if NSTimer is created using alloc/init 
    		// in which case the instance has to be released in the finalize. 
    		// If the NSTimer was created using the helper methods, the finalize 
    		// need not release he instance since it is taken care of by iOS
    	
//XMLVM_END_DECLARATIONS