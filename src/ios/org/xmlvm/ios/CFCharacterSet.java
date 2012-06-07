package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFCharacterSet {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFCharacterSetGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFCharacterSetRef CFCharacterSetGetPredefined(CFCharacterSetPredefinedSet theSetIdentifier);
	 */
	public static CFCharacterSet getPredefined(long theSetIdentifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFCharacterSetRef CFCharacterSetCreateWithCharactersInRange(CFAllocatorRef alloc, CFRange theRange);
	 */
	public static CFCharacterSet createWithCharactersInRange(CFAllocator alloc, CFRange theRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFCharacterSetRef CFCharacterSetCreateWithCharactersInString(CFAllocatorRef alloc, CFStringRef theString);
	 */
	public static CFCharacterSet createWithCharactersInString(CFAllocator alloc, String theString){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFCharacterSetRef CFCharacterSetCreateWithBitmapRepresentation(CFAllocatorRef alloc, CFDataRef theData);
	 */
	public static CFCharacterSet createWithBitmapRepresentation(CFAllocator alloc, CFData theData){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFCharacterSetRef CFCharacterSetCreateInvertedSet(CFAllocatorRef alloc, CFCharacterSetRef theSet);
	 */
	public static CFCharacterSet createInvertedSet(CFAllocator alloc, CFCharacterSet theSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableCharacterSetRef CFCharacterSetCreateMutable(CFAllocatorRef alloc);
	 */
	public static CFCharacterSet createMutable(CFAllocator alloc){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFCharacterSetRef CFCharacterSetCreateCopy(CFAllocatorRef alloc, CFCharacterSetRef theSet) ;
	 */
	public static CFCharacterSet createCopy(CFAllocator alloc, CFCharacterSet theSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableCharacterSetRef CFCharacterSetCreateMutableCopy(CFAllocatorRef alloc, CFCharacterSetRef theSet);
	 */
	public static CFCharacterSet createMutableCopy(CFAllocator alloc, CFCharacterSet theSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFCharacterSetCreateBitmapRepresentation(CFAllocatorRef alloc, CFCharacterSetRef theSet);
	 */
	public static CFData createBitmapRepresentation(CFAllocator alloc, CFCharacterSet theSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCharacterSetAddCharactersInRange(CFMutableCharacterSetRef theSet, CFRange theRange);
	 */
	public static void addCharactersInRange(CFCharacterSet theSet, CFRange theRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCharacterSetRemoveCharactersInRange(CFMutableCharacterSetRef theSet, CFRange theRange);
	 */
	public static void removeCharactersInRange(CFCharacterSet theSet, CFRange theRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCharacterSetAddCharactersInString(CFMutableCharacterSetRef theSet, CFStringRef theString);
	 */
	public static void addCharactersInString(CFCharacterSet theSet, String theString){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCharacterSetRemoveCharactersInString(CFMutableCharacterSetRef theSet, CFStringRef theString);
	 */
	public static void removeCharactersInString(CFCharacterSet theSet, String theString){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCharacterSetUnion(CFMutableCharacterSetRef theSet, CFCharacterSetRef theOtherSet);
	 */
	public static void union(CFCharacterSet theSet, CFCharacterSet theOtherSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCharacterSetIntersect(CFMutableCharacterSetRef theSet, CFCharacterSetRef theOtherSet);
	 */
	public static void intersect(CFCharacterSet theSet, CFCharacterSet theOtherSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFCharacterSetInvert(CFMutableCharacterSetRef theSet);
	 */
	public static void invert(CFCharacterSet theSet){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFCharacterSet() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean CFCharacterSetIsSupersetOfSet(CFCharacterSetRef theSet, CFCharacterSetRef theOtherset);
	 */
	public byte isSupersetOfSet(CFCharacterSet theOtherset){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFCharacterSetHasMemberInPlane(CFCharacterSetRef theSet, CFIndex thePlane);
	 */
	public byte hasMemberInPlane(long thePlane){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFCharacterSetIsCharacterMember(CFCharacterSetRef theSet, UniChar theChar);
	 */
	public byte isCharacterMember(short theChar){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFCharacterSetIsLongCharacterMember(CFCharacterSetRef theSet, UTF32Char theChar);
	 */
	public byte isLongCharacterMember(int theChar){
		throw new RuntimeException("Stub");
	}
}
