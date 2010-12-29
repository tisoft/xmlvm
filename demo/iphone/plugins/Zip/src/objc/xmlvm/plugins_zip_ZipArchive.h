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

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "ZipArchive.h"

@class plugins_zip_ZipArchiveDelegate;
	
typedef ZipArchive plugins_zip_ZipArchive;

@interface ZipArchive (cat_plugins_zip_ZipArchive)

- (void) __init_plugins_zip_ZipArchive__;
- (int) createZipFile2___java_lang_String :(java_lang_String*)file;
- (int) createZipFile2___java_lang_String_java_lang_String :(java_lang_String*)file :(java_lang_String*)pass;
- (int) addFileToZip___java_lang_String_java_lang_String :(java_lang_String*)file :(java_lang_String*)newname;
- (int) closeZipFile2__;
- (int) unzipOpenFile___java_lang_String :(java_lang_String*)file;
- (int) unzipOpenFile___java_lang_String_java_lang_String :(java_lang_String*)file :(java_lang_String*)pass;
- (int) unzipFileTo___java_lang_String_boolean :(java_lang_String*)path :(int)overwrite;
- (int) unzipCloseFile__;
- (plugins_zip_ZipArchiveDelegate*) getDelegate__;
- (void) setDelegate___plugins_zip_ZipArchiveDelegate :(plugins_zip_ZipArchiveDelegate*)newdelegate;

@end

