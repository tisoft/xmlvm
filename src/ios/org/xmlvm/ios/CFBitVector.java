package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFBitVector {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFBitVectorGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFBitVectorRef CFBitVectorCreateCopy(CFAllocatorRef allocator, CFBitVectorRef bv);
	 */
	public static CFBitVector createCopy(CFAllocator allocator, CFBitVector bv){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableBitVectorRef CFBitVectorCreateMutable(CFAllocatorRef allocator, CFIndex capacity);
	 */
	public static CFBitVector createMutable(CFAllocator allocator, long capacity){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableBitVectorRef CFBitVectorCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFBitVectorRef bv);
	 */
	public static CFBitVector createMutableCopy(CFAllocator allocator, long capacity, CFBitVector bv){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBitVectorSetCount(CFMutableBitVectorRef bv, CFIndex count);
	 */
	public static void setCount(CFBitVector bv, long count){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBitVectorFlipBitAtIndex(CFMutableBitVectorRef bv, CFIndex idx);
	 */
	public static void flipBitAtIndex(CFBitVector bv, long idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBitVectorFlipBits(CFMutableBitVectorRef bv, CFRange range);
	 */
	public static void flipBits(CFBitVector bv, CFRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBitVectorSetBitAtIndex(CFMutableBitVectorRef bv, CFIndex idx, CFBit value);
	 */
	public static void setBitAtIndex(CFBitVector bv, long idx, int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBitVectorSetBits(CFMutableBitVectorRef bv, CFRange range, CFBit value);
	 */
	public static void setBits(CFBitVector bv, CFRange range, int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBitVectorSetAllBits(CFMutableBitVectorRef bv, CFBit value);
	 */
	public static void setAllBits(CFBitVector bv, int value){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFBitVectorRef CFBitVectorCreate(CFAllocatorRef allocator, const UInt8 *bytes, CFIndex numBits);
	 */
	public CFBitVector(CFAllocator allocator, byte[] bytes, long numBits) {}

	/** Default constructor */
	CFBitVector() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CFBitVectorGetCount(CFBitVectorRef bv);
	 */
	public long getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFBitVectorGetCountOfBit(CFBitVectorRef bv, CFRange range, CFBit value);
	 */
	public long getCountOfBit(CFRange range, int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBitVectorContainsBit(CFBitVectorRef bv, CFRange range, CFBit value);
	 */
	public byte containsBit(CFRange range, int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFBit CFBitVectorGetBitAtIndex(CFBitVectorRef bv, CFIndex idx);
	 */
	public int getBitAtIndex(long idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBitVectorGetBits(CFBitVectorRef bv, CFRange range, UInt8 *bytes);
	 */
	public void getBits(CFRange range, byte[] bytes){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFBitVectorGetFirstIndexOfBit(CFBitVectorRef bv, CFRange range, CFBit value);
	 */
	public long getFirstIndexOfBit(CFRange range, int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFBitVectorGetLastIndexOfBit(CFBitVectorRef bv, CFRange range, CFBit value);
	 */
	public long getLastIndexOfBit(CFRange range, int value){
		throw new RuntimeException("Stub");
	}
}
