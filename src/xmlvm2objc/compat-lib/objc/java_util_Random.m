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
#import "java_lang_System.h"


#define MAXIMUM     2147483647
#define MINNEGATIVE 1073741824

// java.util.Random
//----------------------------------------------------------------------------
@implementation java_util_Random

- (void) __init_java_util_Random__ {
    [self __init_java_util_Random___long:[java_lang_System currentTimeMillis__]];
}

- (void) __init_java_util_Random___long :(JAVA_LONG) seed {
	[self setSeed___long:seed];
}

- (int) nextBoolean__
{
    return random()&01;
}

- (double) nextDouble__ {
	return (double)random()/MAXIMUM;
}

- (float) nextFloat__ {
    return ((float)random())/MAXIMUM;
}

- (int) nextInt__
{
    return (int)(random()-MINNEGATIVE);
}

- (int) nextInt___int :(int)n {
	return (int)((double)random() / ((double)MAXIMUM + 1) * n);
}

- (JAVA_LONG) nextLong__
{
    return random()<<32 + random();
}

- (void) setSeed___long :(JAVA_LONG)seed
{
    srandom(seed);
}

@end
