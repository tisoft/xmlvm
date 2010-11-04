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

