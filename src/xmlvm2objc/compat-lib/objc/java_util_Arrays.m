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

static void swap(int *x,int *y)
{
   int temp;
   temp = *x;
   *x = *y;
   *y = temp;
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

+ (void) sort___int_ARRAYTYPE: (XMLVMArray*) a
{
	quicksort(a->array.i, 0, a->length - 1);
}

@end
