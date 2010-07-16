/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

#import "java_util_Arrays.h"
#import "java_lang_Comparable.h"
#import "java_lang_System.h"
#import "java_util_ArrayList.h"

static void swap(int *x,int *y)
{
   int temp;
   temp = *x;
   *x = *y;
   *y = temp;
}

static void swapObjects(XMLVMArray *x, int a, int b)
{
	java_lang_Object* t = x->array.o[a];
	x->array.o[a] = x->array.o[b];
	x->array.o[b] = t;
}

static int choose_pivot(int i, int j)
{
   return (i + j) / 2;
}

static void quicksort(int list[], int m, int n)
{
   int key, i, j, k;
   
   if (m < n) {
      k = choose_pivot(m, n);
      swap(&list[m], &list[k]);
      key = list[m];
      i = m+1;
      j = n;
      while (i <= j) {
         while ((i <= n) && (list[i] <= key))
                i++;
         while ((j >= m) && (list[j] > key))
                j--;
         if (i < j)
                swap(&list[i],&list[j]);
      }
      swap(&list[m], &list[j]);
      quicksort(list, m, j-1);
      quicksort(list, j+1, n);
   }
}

@implementation java_util_Arrays

+ (void) mergeSort:(XMLVMArray*) src: (XMLVMArray*) dest: (int) low: (int) high: (int) off {
	[java_util_Arrays mergeSortWithComparator:src:dest:low:high:off:JAVA_NULL];
}

+ (void) mergeSortWithComparator:(XMLVMArray*) src: (XMLVMArray*) dest: (int) low: (int) high: (int) off: (java_util_Comparator*)c {
	int INSERTIONSORT_THRESHOLD = 7;
	
	int length = high - low;
	
	// Insertion sort on smallest arrays
	if (length < INSERTIONSORT_THRESHOLD) {
		for (int i = low; i < high; i++) {
			int j = i;
			BOOL done = FALSE;
			while (j > low && !done) {
				int compareVal = 0;
				java_lang_Object* c1 = dest->array.o[j-1];
				java_lang_Object* c2 = dest->array.o[j];
				if (c == JAVA_NULL) {
					compareVal = [(java_lang_Comparable*)c1 compareTo___java_lang_Object:c2];
				} else {
					compareVal = [c compare___java_lang_Object_java_lang_Object:c1:c2];
				}
				if (compareVal > 0) {
					swapObjects(dest, j, j - 1);
					j--;
				} else {
					done = TRUE;
				}
			}
		}
		return;
	}
	
	// Recursively sort halves of dest into src
	int destLow  = low;
	int destHigh = high;
	low  += off;
	high += off;
	
	//TODO test that this equals "int mid = (low + high) >>> 1;"
	unsigned int mid = low + high;
	mid /= 2;
	
	[java_util_Arrays mergeSortWithComparator:dest:src:low:mid:-off:c];
	[java_util_Arrays mergeSortWithComparator:dest:src:mid:high:-off:c];
	
	// If list is already sorted, just copy from src to dest.  This is an
	// optimization that results in faster sorts for nearly ordered lists.
	int compareVal = 0;
	java_lang_Object* c1 = src->array.o[mid-1];
	java_lang_Object* c2 = src->array.o[mid];
	if (c == JAVA_NULL) {
		compareVal = [(java_lang_Comparable*)c1 compareTo___java_lang_Object:c2];
	} else {
		compareVal = [c compare___java_lang_Object_java_lang_Object:c1:c2];
	}
	if (compareVal <= 0) {
		[java_lang_System arraycopy___java_lang_Object_int_java_lang_Object_int_int:src:low:dest:destLow:length];
		return;
	}
	
	// Merge sorted halves (now in src) into dest
	for(int i = destLow, p = low, q = mid; i < destHigh; i++) {
		int compareVal2 = 0;
		java_lang_Object* c3 = src->array.o[p];
		java_lang_Object* c4 = src->array.o[q];
		if (c == JAVA_NULL) {
			compareVal2 = [(java_lang_Comparable*)c3 compareTo___java_lang_Object:c4];
		} else {
			compareVal2 = [c compare___java_lang_Object_java_lang_Object:c3:c4];
		}
		if (q >= high || p < mid && compareVal2 <= 0) {
			dest->array.o[i] = src->array.o[p++];
		} else {
			dest->array.o[i] = src->array.o[q++];
		}
	}
}

+ (void) sort___int_ARRAYTYPE: (XMLVMArray*) a
{
	quicksort(a->array.i, 0, a->length - 1);
}

+ (void) sort___java_lang_Object_ARRAYTYPE: (XMLVMArray*) a {
	[java_util_Arrays sort___java_lang_Object_ARRAYTYPE_java_util_Comparator:a:JAVA_NULL];
}

+ (void) sort___java_lang_Object_ARRAYTYPE_java_util_Comparator: (XMLVMArray*) a: (java_util_Comparator*) c {
	XMLVMArray* aux = [a clone__];
	if (c == JAVA_NULL) {
		[java_util_Arrays mergeSort:aux:a:0:[a count]:0];
	} else {
		[java_util_Arrays mergeSortWithComparator:aux:a:0:[a count]:0:c];
	}
	[aux release];
}

+ (java_util_List*) asList___java_lang_Object_ARRAYTYPE:(XMLVMArray*) a {
	java_util_ArrayList* result = [[java_util_ArrayList alloc] init];
	[result __init_java_util_ArrayList___int:[a count]];
	for (int i = 0; i < [a count]; i++) {
		[result add___java_lang_Object:a->array.o[i]];
	}
	return result;
}

+ (XMLVMArray*) copyOf___int_ARRAYTYPE_int:(XMLVMArray*) original :(int) newLength
{
	XMLVMArray* newArray = [XMLVMArray createSingleDimensionWithType:5 /*INT*/ andSize:newLength];
	[java_lang_System arraycopy___java_lang_Object_int_java_lang_Object_int_int:original :0 :newArray :0 :newLength];
	return newArray;
}

@end
