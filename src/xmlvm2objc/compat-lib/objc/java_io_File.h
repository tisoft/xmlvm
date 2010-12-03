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

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "java_net_URI.h"
#import "java_io_FilenameFilter.h"

@interface java_io_File : java_lang_Object {
	java_lang_String* path;
}

static java_lang_String* _separator = @"/";

+ (java_lang_String*) _GET_separator;
+ (XMLVMArray*) listRoots__;

+ (java_io_File*) createTempFile___java_lang_String_java_lang_String:(java_lang_String*)prefix :(java_lang_String*)suffix;

- (void) __init_java_io_File___java_net_URI: (java_net_URI*) uri;
- (void) __init_java_io_File___java_lang_String: (java_lang_String*) pathname;
- (void) __init_java_io_File___java_io_File_java_lang_String: (java_io_File*) dir: (java_lang_String*) name;

- (void) dealloc;

- (bool) canRead__;
- (bool) canWrite__;
- (bool) createNewFile__;
- (bool) delete__;
- (bool) exists__;
- (JAVA_LONG) length__;
- (java_lang_String*) getName__;
- (java_lang_String*) getPath__;
- (java_net_URI*) toURI__;
- (bool) isDirectory__;
- (bool) isHidden__;
- (JAVA_LONG) lastModified__;
- (XMLVMArray*) listFiles__;
- (XMLVMArray*) listFiles___java_io_FilenameFilter: (java_io_FilenameFilter*) filter;
- (XMLVMArray*) list__;
- (XMLVMArray*) list___java_io_FilenameFilter: (java_io_FilenameFilter*) filter;
- (bool) mkdir__;
- (bool) mkdirs__;
- (java_lang_String*) getAbsolutePath__;
- (java_lang_String*) getCanonicalPath__;
- (JAVA_LONG) getUsableSpace__;
- (bool) renameTo___java_io_File: (java_io_File*) f;
- (java_io_File*) getParentFile__;

@end
