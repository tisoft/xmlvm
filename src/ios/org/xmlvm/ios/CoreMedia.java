package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CoreMedia {

	/*
	 * Static methods
	 */

	/**
	 * void CMRemoveAttachment(CMAttachmentBearerRef target, CFStringRef key) ;
	 */
	public static void CMRemoveAttachment(CMAttachmentBearer target, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMTextFormatDescriptionGetDefaultStyle( CMFormatDescriptionRef desc, uint16_t *outLocalFontID, Boolean *outBold, Boolean *outItalic, Boolean *outUnderline, CGFloat *outFontSize, CGFloat outColorComponents[4]) ;
	 */
	public static int CMTextFormatDescriptionGetDefaultStyle(CMFormatDescription desc, short[] outLocalFontID, byte[] outBold, byte[] outItalic, byte[] outUnderline, float[] outFontSize, float[] outColorComponents){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMAudioSampleBufferCreateWithPacketDescriptions( CFAllocatorRef allocator, CMBlockBufferRef dataBuffer, Boolean dataReady, CMSampleBufferMakeDataReadyCallback makeDataReadyCallback, void *makeDataReadyRefcon, CMFormatDescriptionRef formatDescription, CMItemCount numSamples, CMTime sbufPTS, const AudioStreamPacketDescription *packetDescriptions, CMSampleBufferRef *sBufOut) ;
	 */
	public static int CMAudioSampleBufferCreateWithPacketDescriptions(CFAllocator allocator, CMBlockBuffer dataBuffer, byte dataReady, Object makeDataReadyCallback, byte[] makeDataReadyRefcon, CMFormatDescription formatDescription, long numSamples, CMTime sbufPTS, Reference<AudioStreamPacketDescription> packetDescriptions, CMSampleBuffer sBufOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMTextFormatDescriptionGetFontName( CMFormatDescriptionRef desc, uint16_t localFontID, CFStringRef *outFontName) ;
	 */
	public static int CMTextFormatDescriptionGetFontName(CMFormatDescription desc, short localFontID, String outFontName){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMTextFormatDescriptionGetJustification( CMFormatDescriptionRef desc, CMTextJustificationValue *outHorizontalJust, CMTextJustificationValue *outVerticalJust) ;
	 */
	public static int CMTextFormatDescriptionGetJustification(CMFormatDescription desc, byte[] outHorizontalJust, byte[] outVerticalJust){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMTextFormatDescriptionGetDisplayFlags( CMFormatDescriptionRef desc, CMTextDisplayFlags *outDisplayFlags) ;
	 */
	public static int CMTextFormatDescriptionGetDisplayFlags(CMFormatDescription desc, int[] outDisplayFlags){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CMSetAttachment(CMAttachmentBearerRef target, CFStringRef key, CFTypeRef value, CMAttachmentMode attachmentMode) ;
	 */
	public static void CMSetAttachment(CMAttachmentBearer target, String key, byte[] value, int attachmentMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CMCopyDictionaryOfAttachments(CFAllocatorRef allocator, CMAttachmentBearerRef target, CMAttachmentMode attachmentMode) ;
	 */
	public static CFDictionary CMCopyDictionaryOfAttachments(CFAllocator allocator, CMAttachmentBearer target, int attachmentMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CMSetAttachments(CMAttachmentBearerRef target, CFDictionaryRef theAttachments, CMAttachmentMode attachmentMode) ;
	 */
	public static void CMSetAttachments(CMAttachmentBearer target, CFDictionary theAttachments, int attachmentMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CMGetAttachment(CMAttachmentBearerRef target, CFStringRef key, CMAttachmentMode *attachmentModeOut) ;
	 */
	public static byte[] CMGetAttachment(CMAttachmentBearer target, String key, int[] attachmentModeOut){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CMPropagateAttachments(CMAttachmentBearerRef source, CMAttachmentBearerRef destination) ;
	 */
	public static void CMPropagateAttachments(CMAttachmentBearer source, CMAttachmentBearer destination){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CMTextFormatDescriptionGetDefaultTextBox( CMFormatDescriptionRef desc, Boolean originIsAtTopLeft, CGFloat heightOfTextTrack, CGRect *outDefaultTextBox) ;
	 */
	public static int CMTextFormatDescriptionGetDefaultTextBox(CMFormatDescription desc, byte originIsAtTopLeft, float heightOfTextTrack, Reference<CGRect> outDefaultTextBox){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CMRemoveAllAttachments(CMAttachmentBearerRef target) ;
	 */
	public static void CMRemoveAllAttachments(CMAttachmentBearer target){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CoreMedia() {}
}
