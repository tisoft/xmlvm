/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#import "java_util_Random.h"


// java.util.Random
//----------------------------------------------------------------------------
@implementation java_util_Random

- (double) nextDouble__ {
	return (double)rand()/2147483647.0;
}

- (float) nextFloat__ {
	return (float)(rand()/2147483647.0);
}

- (void) __init_java_util_Random__ {
}

- (void) __init_java_util_Random___int :(int) seed {
	srand(seed);
}

- (void) __init_java_util_Random___long :(JAVA_LONG) seed {
	srand(seed);
}

- (int) nextInt___int :(int)n {
	return (int)((double)rand() / ((double)RAND_MAX + 1) * n);
}
	
@end
