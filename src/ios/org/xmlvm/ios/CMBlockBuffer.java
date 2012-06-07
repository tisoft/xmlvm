package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMBlockBuffer {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus CMBlockBufferCreateEmpty( CFAllocatorRef structureAllocator, uint32_t subBlockCapacity, CMBlockBufferFlags flags, CMBlockBufferRef *newBBufOut) ;
	 */
	public static int createEmpty(CFAllocator structureAllocator, int subBlockCapacity, int flags, CMBlockBuffer newBBufOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferCreateWithMemoryBlock( CFAllocatorRef structureAllocator, void *memoryBlock, size_t blockLength, CFAllocatorRef blockAllocator, const CMBlockBufferCustomBlockSource *customBlockSource, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags, CMBlockBufferRef *newBBufOut) ;
	 */
	public static int createWithMemoryBlock(CFAllocator structureAllocator, byte[] memoryBlock, int blockLength, CFAllocator blockAllocator, Reference<CMBlockBufferCustomBlockSource> customBlockSource, int offsetToData, int dataLength, int flags, CMBlockBuffer newBBufOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferCreateWithBufferReference( CFAllocatorRef structureAllocator, CMBlockBufferRef targetBuffer, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags, CMBlockBufferRef *newBBufOut) ;
	 */
	public static int createWithBufferReference(CFAllocator structureAllocator, CMBlockBuffer targetBuffer, int offsetToData, int dataLength, int flags, CMBlockBuffer newBBufOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferCreateContiguous( CFAllocatorRef structureAllocator, CMBlockBufferRef sourceBuffer, CFAllocatorRef blockAllocator, const CMBlockBufferCustomBlockSource *customBlockSource, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags, CMBlockBufferRef *newBBufOut) ;
	 */
	public static int createContiguous(CFAllocator structureAllocator, CMBlockBuffer sourceBuffer, CFAllocator blockAllocator, Reference<CMBlockBufferCustomBlockSource> customBlockSource, int offsetToData, int dataLength, int flags, CMBlockBuffer newBBufOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CMBlockBufferGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferReplaceDataBytes( const void* sourceBytes, CMBlockBufferRef destinationBuffer, size_t offsetIntoDestination, size_t dataLength) ;
	 */
	public static int replaceDataBytes(byte[] sourceBytes, CMBlockBuffer destinationBuffer, int offsetIntoDestination, int dataLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferFillDataBytes( char fillByte, CMBlockBufferRef destinationBuffer, size_t offsetIntoDestination, size_t dataLength) ;
	 */
	public static int fillDataBytes(byte fillByte, CMBlockBuffer destinationBuffer, int offsetIntoDestination, int dataLength){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CMBlockBuffer() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus CMBlockBufferAppendMemoryBlock( CMBlockBufferRef theBuffer, void *memoryBlock, size_t blockLength, CFAllocatorRef blockAllocator, const CMBlockBufferCustomBlockSource *customBlockSource, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags) ;
	 */
	public int appendMemoryBlock(byte[] memoryBlock, int blockLength, CFAllocator blockAllocator, Reference<CMBlockBufferCustomBlockSource> customBlockSource, int offsetToData, int dataLength, int flags){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferAppendBufferReference( CMBlockBufferRef theBuffer, CMBlockBufferRef targetBBuf, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags) ;
	 */
	public int appendBufferReference(CMBlockBuffer targetBBuf, int offsetToData, int dataLength, int flags){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferAssureBlockMemory(CMBlockBufferRef theBuffer) ;
	 */
	public int assureBlockMemory(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferAccessDataBytes( CMBlockBufferRef theBuffer, size_t offset, size_t length, void *temporaryBlock, char **returnedPointer) ;
	 */
	public int accessDataBytes(int offset, int length, byte[] temporaryBlock, byte[][] returnedPointer){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferCopyDataBytes( CMBlockBufferRef theSourceBuffer, size_t offsetToData, size_t dataLength, void* destination) ;
	 */
	public int copyDataBytes(int offsetToData, int dataLength, byte[] destination){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMBlockBufferGetDataPointer( CMBlockBufferRef theBuffer, size_t offset, size_t *lengthAtOffset, size_t *totalLength, char **dataPointer) ;
	 */
	public int getDataPointer(int offset, int[] lengthAtOffset, int[] totalLength, byte[][] dataPointer){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CMBlockBufferGetDataLength(CMBlockBufferRef theBuffer) ;
	 */
	public int getDataLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMBlockBufferIsRangeContiguous( CMBlockBufferRef theBuffer, size_t offset, size_t length) ;
	 */
	public byte isRangeContiguous(int offset, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMBlockBufferIsEmpty(CMBlockBufferRef theBuffer) ;
	 */
	public byte isEmpty(){
		throw new RuntimeException("Stub");
	}
}
