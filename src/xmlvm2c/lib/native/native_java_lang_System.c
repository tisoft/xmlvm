
#include "java_lang_System.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_lang_System_registerNatives__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_registerNatives__]
    // Do nothing
    //XMLVM_END_NATIVE
}

void java_lang_System_setIn0___java_io_InputStream(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_setIn0___java_io_InputStream]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_System_setOut0___java_io_PrintStream(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_setOut0___java_io_PrintStream]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_System_setErr0___java_io_PrintStream(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_setErr0___java_io_PrintStream]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_System_currentTimeMillis__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_currentTimeMillis__]
    //TODO implement
	return 1L;
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_System_nanoTime__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_nanoTime__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_lang_System_arraycopy___java_lang_Object_int_java_lang_Object_int_int(JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3, JAVA_INT n4, JAVA_INT n5)
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_arraycopy___java_lang_Object_int_java_lang_Object_int_int]
	XMLVMArray* src = (XMLVMArray*) n1;
	JAVA_INT srcPos = n2;
	XMLVMArray* dest = (XMLVMArray*) n3;
	JAVA_INT destPos = n4;
	JAVA_INT length = n5;

	if (length == 0) {
		// Nothing to do
		return;
	}
	XMLVMArray* srcArr = (XMLVMArray*) src;
	XMLVMArray* destArr = (XMLVMArray*) dest;
	int d = 1;
	if (srcArr == destArr) {
		if (srcPos == destPos) {
			// Nothing to do
			return;
		}
		if (srcPos < destPos) {
			// We have to copy backwards to ensure we don't overwrite ourselves while copying
			srcPos += length - 1;
			destPos += length - 1;
			d = -1;
		}
	}
	switch (srcArr->type) {
		case 0:
			// We copy object references
			for (int i = 0; i < length; i++) {
				destArr->array.o[destPos] = srcArr->array.o[srcPos];
				srcPos += d;
				destPos += d;
			}
			break;
		case 1: // boolean
		case 3: // byte
			for (int i = 0; i < length; i++) {
				destArr->array.b[destPos] = srcArr->array.b[srcPos];
				srcPos += d;
				destPos += d;
			}
			break;
		case 2: // char
		case 4: // short
			for (int i = 0; i < length; i++) {
				destArr->array.s[destPos] = srcArr->array.s[srcPos];
				srcPos += d;
				destPos += d;
			}
			break;
		case 5: // int
		case 6: // float
			for (int i = 0; i < length; i++) {
				destArr->array.i[destPos] = srcArr->array.i[srcPos];
				srcPos += d;
				destPos += d;
			}
			break;
		case 7: // double
		case 8: // long
			for (int i = 0; i < length; i++) {
				destArr->array.l[destPos] = srcArr->array.l[srcPos];
				srcPos += d;
				destPos += d;
			}
			break;
	}
#if 0
	if ([src class] != [XMLVMArray class] ||
		[dest class] != [XMLVMArray class] ||
		((XMLVMArray*) src)->type != ((XMLVMArray*) dest)->type) {
		// TODO need to do much more thorough error checking
		java_lang_RuntimeException* ex = [[java_lang_RuntimeException alloc] init];
		@throw ex;
	}
	if (length == 0) {
		// Nothing to do
		return;
	}
	XMLVMArray* srcArr = (XMLVMArray*) src;
	XMLVMArray* destArr = (XMLVMArray*) dest;
	int d = 1;
	if (srcArr == destArr) {
		if (srcPos == destPos) {
			// Nothing to do
			return;
		}
		if (srcPos + length - 1 > destPos) {
			// We have to copy backwards to ensure we don't overwrite ourselves while copying
			srcPos += length - 1;
			destPos += length - 1;
			d = -1;
		}
	}
	switch (srcArr->type) {
		case 0:
			// We copy object references
			for (int i = 0; i < length; i++) {
				id o = [srcArr objectAtIndex:srcPos];
				[destArr replaceObjectAtIndex:destPos withObject:o];
				srcPos += d;
				destPos += d;
			}
			break;
		case 1: // boolean
		case 3: // byte
			for (int i = 0; i < length; i++) {
				destArr->array.b[destPos] = srcArr->array.b[srcPos];
				srcPos += d;
				destPos += d;
			}
			break;
		case 2: // char
		case 4: // short
			for (int i = 0; i < length; i++) {
				destArr->array.s[destPos] = srcArr->array.s[srcPos];
				srcPos += d;
				destPos += d;
			}
			break;
		case 5: // int
		case 6: // float
			for (int i = 0; i < length; i++) {
				destArr->array.i[destPos] = srcArr->array.i[srcPos];
				srcPos += d;
				destPos += d;
			}
			break;
		case 7: // double
		case 8: // long
			for (int i = 0; i < length; i++) {
				destArr->array.l[destPos] = srcArr->array.l[srcPos];
				srcPos += d;
				destPos += d;
			}
			break;
	}
#endif
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_System_identityHashCode___java_lang_Object(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_identityHashCode___java_lang_Object]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_System_initProperties___java_util_Properties(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_initProperties___java_util_Properties]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_System_mapLibraryName___java_lang_String(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_mapLibraryName___java_lang_String]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

