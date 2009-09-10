#import "java_util_Random.h"


// java.util.Random
//----------------------------------------------------------------------------
@implementation java_util_Random

- (double) nextDouble {
	return (double)random()/2147483647.0;
}

- (void) __init_java_util_Random {
}

- (void) __init_java_util_Random___int :(int) seed {
	srand(seed);
}

- (void) __init_java_util_Random___long :(long) seed {
	srand(seed);
}

@end
