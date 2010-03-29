
#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_util_Observer.h"


// java.util.Observable
//----------------------------------------------------------------------------
@interface java_util_Observable : java_lang_Object {
	int changed;
	NSMutableArray* obs;
}

- (void) __init_java_util_Observable__;

//Protected methods
- (void) setChanged__; //synchronized
- (void) clearChanged__; //synchronized

//Public methods
- (void) addObserver___java_util_Observer: (java_util_Observer*) o; //synchronized
- (void) deleteObserver___java_util_Observer: (java_util_Observer*) o; //synchronized
- (void) notifyObservers__;
- (void) notifyObservers___java_lang_Object: (java_lang_Object*) arg;
- (void) deleteObservers__; //synchronized
- (int) hasChanged__; //synchronized
- (int) countObservers__; //synchronized

@end
