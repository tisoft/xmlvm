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

#import "org_xmlvm_iphone_NSJSONSerialization.h"

@implementation NSJSONSerialization (cat_org_xmlvm_iphone_NSJSONSerialization)

+ (java_lang_Object*) JSONObjectWithData___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder :(org_xmlvm_iphone_NSData*)data :(int)options :(org_xmlvm_iphone_NSErrorHolder*)errorholder {
    
    org_xmlvm_iphone_NSError** error = errorholder == JAVA_NULL ? nil : &(errorholder->error_org_xmlvm_iphone_NSError);
    id json = [[NSJSONSerialization JSONObjectWithData:data options:options error:error] retain];
    errorholder->error_org_xmlvm_iphone_NSError = XMLVM_NIL2NULL(errorholder->error_org_xmlvm_iphone_NSError);
    return json;
}


@end

