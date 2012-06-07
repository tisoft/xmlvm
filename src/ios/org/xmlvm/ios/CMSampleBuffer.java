package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMSampleBuffer {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus CMSampleBufferCreateForImageBuffer( CFAllocatorRef allocator, CVImageBufferRef imageBuffer, Boolean dataReady, CMSampleBufferMakeDataReadyCallback makeDataReadyCallback, void *makeDataReadyRefcon, CMVideoFormatDescriptionRef formatDescription, const CMSampleTimingInfo *sampleTiming, CMSampleBufferRef *sBufOut) ;
	 */
	public static int createForImageBuffer(CFAllocator allocator, CVImageBuffer imageBuffer, byte dataReady, Object makeDataReadyCallback, byte[] makeDataReadyRefcon, CMVideoFormatDescription formatDescription, Reference<CMSampleTimingInfo> sampleTiming, CMSampleBuffer sBufOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferCreateCopy( CFAllocatorRef allocator, CMSampleBufferRef sbuf, CMSampleBufferRef *sbufCopyOut) ;
	 */
	public static int createCopy(CFAllocator allocator, CMSampleBuffer sbuf, CMSampleBuffer sbufCopyOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferCreateCopyWithNewTiming( CFAllocatorRef allocator, CMSampleBufferRef originalSBuf, CMItemCount numSampleTimingEntries, const CMSampleTimingInfo *sampleTimingArray, CMSampleBufferRef *sBufCopyOut) ;
	 */
	public static int createCopyWithNewTiming(CFAllocator allocator, CMSampleBuffer originalSBuf, long numSampleTimingEntries, Reference<CMSampleTimingInfo> sampleTimingArray, CMSampleBuffer sBufCopyOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferCopySampleBufferForRange( CFAllocatorRef allocator, CMSampleBufferRef sbuf, CFRange sampleRange, CMSampleBufferRef *sBufOut) ;
	 */
	public static int copySampleBufferForRange(CFAllocator allocator, CMSampleBuffer sbuf, CFRange sampleRange, CMSampleBuffer sBufOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CMSampleBufferGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * OSStatus CMSampleBufferCreate( CFAllocatorRef allocator, CMBlockBufferRef dataBuffer, Boolean dataReady, CMSampleBufferMakeDataReadyCallback makeDataReadyCallback, void *makeDataReadyRefcon, CMFormatDescriptionRef formatDescription, CMItemCount numSamples, CMItemCount numSampleTimingEntries, const CMSampleTimingInfo *sampleTimingArray, CMItemCount numSampleSizeEntries, const size_t *sampleSizeArray, CMSampleBufferRef *sBufOut) ;
	 */
	public CMSampleBuffer(CFAllocator allocator, CMBlockBuffer dataBuffer, byte dataReady, Object makeDataReadyCallback, byte[] makeDataReadyRefcon, CMFormatDescription formatDescription, long numSamples, long numSampleTimingEntries, Reference<CMSampleTimingInfo> sampleTimingArray, long numSampleSizeEntries, int[] sampleSizeArray, CMSampleBuffer sBufOut) {}

	/** Default constructor */
	public CMSampleBuffer() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus CMSampleBufferSetDataBuffer( CMSampleBufferRef sbuf, CMBlockBufferRef dataBuffer) ;
	 */
	public int setDataBuffer(CMBlockBuffer dataBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMBlockBufferRef CMSampleBufferGetDataBuffer( CMSampleBufferRef sbuf) ;
	 */
	public CMBlockBuffer getDataBuffer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CVImageBufferRef CMSampleBufferGetImageBuffer( CMSampleBufferRef sbuf) ;
	 */
	public CVImageBuffer getImageBuffer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferSetDataBufferFromAudioBufferList( CMSampleBufferRef sbuf, CFAllocatorRef bbufStructAllocator, CFAllocatorRef bbufMemoryAllocator, uint32_t flags, const AudioBufferList *bufferList) ;
	 */
	public int setDataBufferFromAudioBufferList(CFAllocator bbufStructAllocator, CFAllocator bbufMemoryAllocator, int flags, Reference<AudioBufferList> bufferList){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer( CMSampleBufferRef sbuf, size_t *bufferListSizeNeededOut, AudioBufferList *bufferListOut, size_t bufferListSize, CFAllocatorRef bbufStructAllocator, CFAllocatorRef bbufMemoryAllocator, uint32_t flags, CMBlockBufferRef *blockBufferOut) ;
	 */
	public int getAudioBufferListWithRetainedBlockBuffer(int[] bufferListSizeNeededOut, Reference<AudioBufferList> bufferListOut, int bufferListSize, CFAllocator bbufStructAllocator, CFAllocator bbufMemoryAllocator, int flags, CMBlockBuffer blockBufferOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferGetAudioStreamPacketDescriptions( CMSampleBufferRef sbuf, size_t packetDescriptionsSize, AudioStreamPacketDescription *packetDescriptionsOut, size_t *packetDescriptionsSizeNeededOut ) ;
	 */
	public int getAudioStreamPacketDescriptions(int packetDescriptionsSize, Reference<AudioStreamPacketDescription> packetDescriptionsOut, int[] packetDescriptionsSizeNeededOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferGetAudioStreamPacketDescriptionsPtr( CMSampleBufferRef sbuf, const AudioStreamPacketDescription ** packetDescriptionsPtrOut, size_t * packetDescriptionsSizeOut ) ;
	 */
	public int getAudioStreamPacketDescriptionsPtr(Reference<AudioStreamPacketDescription>[] packetDescriptionsPtrOut, int[] packetDescriptionsSizeOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferSetDataReady( CMSampleBufferRef sbuf) ;
	 */
	public int setDataReady(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMSampleBufferDataIsReady( CMSampleBufferRef sbuf) ;
	 */
	public byte dataIsReady(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferMakeDataReady( CMSampleBufferRef sbuf) ;
	 */
	public int makeDataReady(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferTrackDataReadiness( CMSampleBufferRef sbuf, CMSampleBufferRef sbufToTrack) ;
	 */
	public int trackDataReadiness(CMSampleBuffer sbufToTrack){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferInvalidate( CMSampleBufferRef sbuf ) ;
	 */
	public int invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferSetInvalidateCallback( CMSampleBufferRef sbuf, CMSampleBufferInvalidateCallback invalidateCallback, uint64_t invalidateRefCon ) ;
	 */
	public int setInvalidateCallback(Object invalidateCallback, long invalidateRefCon){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CMSampleBufferIsValid( CMSampleBufferRef sbuf ) ;
	 */
	public byte isValid(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMItemCount CMSampleBufferGetNumSamples( CMSampleBufferRef sbuf) ;
	 */
	public long getNumSamples(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMSampleBufferGetDuration( CMSampleBufferRef sbuf) ;
	 */
	public CMTime getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMSampleBufferGetPresentationTimeStamp( CMSampleBufferRef sbuf) ;
	 */
	public CMTime getPresentationTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMSampleBufferGetDecodeTimeStamp( CMSampleBufferRef sbuf) ;
	 */
	public CMTime getDecodeTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMSampleBufferGetOutputDuration( CMSampleBufferRef sbuf) ;
	 */
	public CMTime getOutputDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMSampleBufferGetOutputPresentationTimeStamp( CMSampleBufferRef sbuf) ;
	 */
	public CMTime getOutputPresentationTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferSetOutputPresentationTimeStamp( CMSampleBufferRef sbuf, CMTime outputPresentationTimeStamp) ;
	 */
	public int setOutputPresentationTimeStamp(CMTime outputPresentationTimeStamp){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMTime CMSampleBufferGetOutputDecodeTimeStamp( CMSampleBufferRef sbuf) ;
	 */
	public CMTime getOutputDecodeTimeStamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferGetSampleTimingInfoArray( CMSampleBufferRef sbuf, CMItemCount timingArrayEntries, CMSampleTimingInfo *timingArrayOut, CMItemCount *timingArrayEntriesNeededOut) ;
	 */
	public int getSampleTimingInfoArray(long timingArrayEntries, Reference<CMSampleTimingInfo> timingArrayOut, long[] timingArrayEntriesNeededOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferGetOutputSampleTimingInfoArray( CMSampleBufferRef sbuf, CMItemCount timingArrayEntries, CMSampleTimingInfo *timingArrayOut, CMItemCount *timingArrayEntriesNeededOut) ;
	 */
	public int getOutputSampleTimingInfoArray(long timingArrayEntries, Reference<CMSampleTimingInfo> timingArrayOut, long[] timingArrayEntriesNeededOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferGetSampleTimingInfo( CMSampleBufferRef sbuf, CMItemIndex sampleIndex, CMSampleTimingInfo *timingInfoOut) ;
	 */
	public int getSampleTimingInfo(long sampleIndex, Reference<CMSampleTimingInfo> timingInfoOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferGetSampleSizeArray( CMSampleBufferRef sbuf, CMItemCount sizeArrayEntries, size_t *sizeArrayOut, CMItemCount *sizeArrayEntriesNeededOut) ;
	 */
	public int getSampleSizeArray(long sizeArrayEntries, int[] sizeArrayOut, long[] sizeArrayEntriesNeededOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CMSampleBufferGetSampleSize( CMSampleBufferRef sbuf, CMItemIndex sampleIndex) ;
	 */
	public int getSampleSize(long sampleIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * size_t CMSampleBufferGetTotalSampleSize( CMSampleBufferRef sbuf) ;
	 */
	public int getTotalSampleSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CMFormatDescriptionRef CMSampleBufferGetFormatDescription( CMSampleBufferRef sbuf) ;
	 */
	public CMFormatDescription getFormatDescription(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CMSampleBufferGetSampleAttachmentsArray( CMSampleBufferRef sbuf, Boolean createIfNecessary) ;
	 */
	public CFArray getSampleAttachmentsArray(byte createIfNecessary){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMSampleBufferCallForEachSample( CMSampleBufferRef sbuf, OSStatus (*callback)( CMSampleBufferRef sampleBuffer, CMItemCount index, void *refcon ), void *refcon ) ;
	 */
	public int callForEachSample(Object arg2, byte[] refcon){
		throw new RuntimeException("Stub");
	}
}
