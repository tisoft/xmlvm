package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioToolbox {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus AudioSessionGetPropertySize( AudioSessionPropertyID inID, UInt32 *outDataSize) ;
	 */
	public static int AudioSessionGetPropertySize(int inID, int[] outDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioServicesCreateSystemSoundID( CFURLRef inFileURL, SystemSoundID* outSystemSoundID) ;
	 */
	public static int AudioServicesCreateSystemSoundID(CFURL inFileURL, int[] outSystemSoundID){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioServicesDisposeSystemSoundID(SystemSoundID inSystemSoundID) ;
	 */
	public static int AudioServicesDisposeSystemSoundID(int inSystemSoundID){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileInitialize ( const struct FSRef *inFileRef, AudioFileTypeID inFileType, const AudioStreamBasicDescription *inFormat, UInt32 inFlags, AudioFileID *outAudioFile) ;
	 */
	public static int AudioFileInitialize(FS inFileRef, int inFileType, Reference<AudioStreamBasicDescription> inFormat, int inFlags, AudioFileID outAudioFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileOpenURL ( CFURLRef inFileRef, SInt8 inPermissions, AudioFileTypeID inFileTypeHint, AudioFileID *outAudioFile) ;
	 */
	public static int AudioFileOpenURL(CFURL inFileRef, byte inPermissions, int inFileTypeHint, AudioFileID outAudioFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileGetGlobalInfoSize( AudioFilePropertyID inPropertyID, UInt32 inSpecifierSize, void *inSpecifier, UInt32 *outDataSize) ;
	 */
	public static int AudioFileGetGlobalInfoSize(int inPropertyID, int inSpecifierSize, byte[] inSpecifier, int[] outDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioSessionSetActiveWithFlags( Boolean active, UInt32 inFlags) ;
	 */
	public static int AudioSessionSetActiveWithFlags(byte active, int inFlags){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileOpenWithCallbacks ( void * inClientData, AudioFile_ReadProc inReadFunc, AudioFile_WriteProc inWriteFunc, AudioFile_GetSizeProc inGetSizeFunc, AudioFile_SetSizeProc inSetSizeFunc, AudioFileTypeID inFileTypeHint, AudioFileID *outAudioFile) ;
	 */
	public static int AudioFileOpenWithCallbacks(byte[] inClientData, Object inReadFunc, Object inWriteFunc, Object inGetSizeFunc, Object inSetSizeFunc, int inFileTypeHint, AudioFileID outAudioFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus NewAUGraph( AUGraph *outGraph) ;
	 */
	public static int NewAUGraph(AUGraph outGraph){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileStreamParseBytes( AudioFileStreamID inAudioFileStream, UInt32 inDataByteSize, const void* inData, UInt32 inFlags) ;
	 */
	public static int AudioFileStreamParseBytes(AudioFileStreamID inAudioFileStream, int inDataByteSize, byte[] inData, int inFlags){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileWriteBytes ( AudioFileID inAudioFile, Boolean inUseCache, SInt64 inStartingByte, UInt32 *ioNumBytes, const void *inBuffer) ;
	 */
	public static int AudioFileWriteBytes(AudioFileID inAudioFile, byte inUseCache, long inStartingByte, int[] ioNumBytes, byte[] inBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileGetUserData ( AudioFileID inAudioFile, UInt32 inUserDataID, UInt32 inIndex, UInt32 *ioUserDataSize, void *outUserData) ;
	 */
	public static int AudioFileGetUserData(AudioFileID inAudioFile, int inUserDataID, int inIndex, int[] ioUserDataSize, byte[] outUserData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFormatGetPropertyInfo( AudioFormatPropertyID inPropertyID, UInt32 inSpecifierSize, const void* inSpecifier, UInt32* outPropertyDataSize) ;
	 */
	public static int AudioFormatGetPropertyInfo(int inPropertyID, int inSpecifierSize, byte[] inSpecifier, int[] outPropertyDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CAShowFile (void* inObject, FILE* inFile) ;
	 */
	public static void CAShowFile(byte[] inObject, FILE inFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileStreamSeek( AudioFileStreamID inAudioFileStream, SInt64 inPacketOffset, SInt64 * outDataByteOffset, UInt32 * ioFlags) ;
	 */
	public static int AudioFileStreamSeek(AudioFileStreamID inAudioFileStream, long inPacketOffset, long[] outDataByteOffset, int[] ioFlags){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileStreamGetPropertyInfo( AudioFileStreamID inAudioFileStream, AudioFileStreamPropertyID inPropertyID, UInt32 * outPropertyDataSize, Boolean * outWritable) ;
	 */
	public static int AudioFileStreamGetPropertyInfo(AudioFileStreamID inAudioFileStream, int inPropertyID, int[] outPropertyDataSize, byte[] outWritable){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileGetUserDataSize ( AudioFileID inAudioFile, UInt32 inUserDataID, UInt32 inIndex, UInt32 *outUserDataSize) ;
	 */
	public static int AudioFileGetUserDataSize(AudioFileID inAudioFile, int inUserDataID, int inIndex, int[] outUserDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus CopyNameFromSoundBank (CFURLRef inURL, CFStringRef *outName) ;
	 */
	public static int CopyNameFromSoundBank(CFURL inURL, String outName){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioHardwareServiceRemovePropertyListener( AudioObjectID inObjectID, const AudioObjectPropertyAddress* inAddress, AudioObjectPropertyListenerProc inListener, void* inClientData) ;
	 */
	public static int AudioHardwareServiceRemovePropertyListener(AudioObjectID inObjectID, AudioObjectPropertyAddress inAddress, AudioObjectPropertyListenerProc inListener, byte[] inClientData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioHardwareServiceGetPropertyData( AudioObjectID inObjectID, const AudioObjectPropertyAddress* inAddress, UInt32 inQualifierDataSize, const void* inQualifierData, UInt32* ioDataSize, void* outData) ;
	 */
	public static int AudioHardwareServiceGetPropertyData(AudioObjectID inObjectID, AudioObjectPropertyAddress inAddress, int inQualifierDataSize, byte[] inQualifierData, int[] ioDataSize, byte[] outData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioServicesAddSystemSoundCompletion( SystemSoundID inSystemSoundID, CFRunLoopRef inRunLoop, CFStringRef inRunLoopMode, AudioServicesSystemSoundCompletionProc inCompletionRoutine, void* inClientData) ;
	 */
	public static int AudioServicesAddSystemSoundCompletion(int inSystemSoundID, CFRunLoop inRunLoop, String inRunLoopMode, Object inCompletionRoutine, byte[] inClientData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileStreamClose( AudioFileStreamID inAudioFileStream) ;
	 */
	public static int AudioFileStreamClose(AudioFileStreamID inAudioFileStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileGetGlobalInfo( AudioFilePropertyID inPropertyID, UInt32 inSpecifierSize, void *inSpecifier, UInt32 *ioDataSize, void *outPropertyData) ;
	 */
	public static int AudioFileGetGlobalInfo(int inPropertyID, int inSpecifierSize, byte[] inSpecifier, int[] ioDataSize, byte[] outPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileOpen ( const struct FSRef *inFileRef, SInt8 inPermissions, AudioFileTypeID inFileTypeHint, AudioFileID *outAudioFile) ;
	 */
	public static int AudioFileOpen(FS inFileRef, byte inPermissions, int inFileTypeHint, AudioFileID outAudioFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileReadPacketData ( AudioFileID inAudioFile, Boolean inUseCache, UInt32 *ioNumBytes, AudioStreamPacketDescription *outPacketDescriptions, SInt64 inStartingPacket, UInt32 *ioNumPackets, void *outBuffer) ;
	 */
	public static int AudioFileReadPacketData(AudioFileID inAudioFile, byte inUseCache, int[] ioNumBytes, Reference<AudioStreamPacketDescription> outPacketDescriptions, long inStartingPacket, int[] ioNumPackets, byte[] outBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioHardwareServiceAddPropertyListener( AudioObjectID inObjectID, const AudioObjectPropertyAddress* inAddress, AudioObjectPropertyListenerProc inListener, void* inClientData) ;
	 */
	public static int AudioHardwareServiceAddPropertyListener(AudioObjectID inObjectID, AudioObjectPropertyAddress inAddress, AudioObjectPropertyListenerProc inListener, byte[] inClientData){
		throw new RuntimeException("Stub");
	}

	/**
	 * void AudioServicesRemoveSystemSoundCompletion(SystemSoundID inSystemSoundID) ;
	 */
	public static void AudioServicesRemoveSystemSoundCompletion(int inSystemSoundID){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean AudioHardwareServiceHasProperty( AudioObjectID inObjectID, const AudioObjectPropertyAddress* inAddress) ;
	 */
	public static byte AudioHardwareServiceHasProperty(AudioObjectID inObjectID, AudioObjectPropertyAddress inAddress){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioServicesGetProperty( AudioServicesPropertyID inPropertyID, UInt32 inSpecifierSize, const void* inSpecifier, UInt32* ioPropertyDataSize, void* outPropertyData) ;
	 */
	public static int AudioServicesGetProperty(int inPropertyID, int inSpecifierSize, byte[] inSpecifier, int[] ioPropertyDataSize, byte[] outPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileRemoveUserData ( AudioFileID inAudioFile, UInt32 inUserDataID, UInt32 inIndex) ;
	 */
	public static int AudioFileRemoveUserData(AudioFileID inAudioFile, int inUserDataID, int inIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * void AudioServicesPlayAlertSound(SystemSoundID inSystemSoundID) ;
	 */
	public static void AudioServicesPlayAlertSound(int inSystemSoundID){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioSessionInitialize( CFRunLoopRef inRunLoop, CFStringRef inRunLoopMode, AudioSessionInterruptionListener inInterruptionListener, void *inClientData) ;
	 */
	public static int AudioSessionInitialize(CFRunLoop inRunLoop, String inRunLoopMode, Object inInterruptionListener, byte[] inClientData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioServicesGetPropertyInfo( AudioServicesPropertyID inPropertyID, UInt32 inSpecifierSize, const void* inSpecifier, UInt32* outPropertyDataSize, Boolean* outWritable) ;
	 */
	public static int AudioServicesGetPropertyInfo(int inPropertyID, int inSpecifierSize, byte[] inSpecifier, int[] outPropertyDataSize, byte[] outWritable){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileSetUserData ( AudioFileID inAudioFile, UInt32 inUserDataID, UInt32 inIndex, UInt32 inUserDataSize, const void *inUserData) ;
	 */
	public static int AudioFileSetUserData(AudioFileID inAudioFile, int inUserDataID, int inIndex, int inUserDataSize, byte[] inUserData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioSessionAddPropertyListener( AudioSessionPropertyID inID, AudioSessionPropertyListener inProc, void *inClientData) ;
	 */
	public static int AudioSessionAddPropertyListener(int inID, Object inProc, byte[] inClientData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioSessionSetActive( Boolean active) ;
	 */
	public static int AudioSessionSetActive(byte active){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioHardwareServiceIsPropertySettable( AudioObjectID inObjectID, const AudioObjectPropertyAddress* inAddress, Boolean* outIsSettable) ;
	 */
	public static int AudioHardwareServiceIsPropertySettable(AudioObjectID inObjectID, AudioObjectPropertyAddress inAddress, byte[] outIsSettable){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileGetProperty( AudioFileID inAudioFile, AudioFilePropertyID inPropertyID, UInt32 *ioDataSize, void *outPropertyData) ;
	 */
	public static int AudioFileGetProperty(AudioFileID inAudioFile, int inPropertyID, int[] ioDataSize, byte[] outPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileWritePackets ( AudioFileID inAudioFile, Boolean inUseCache, UInt32 inNumBytes, const AudioStreamPacketDescription *inPacketDescriptions, SInt64 inStartingPacket, UInt32 *ioNumPackets, const void *inBuffer) ;
	 */
	public static int AudioFileWritePackets(AudioFileID inAudioFile, byte inUseCache, int inNumBytes, Reference<AudioStreamPacketDescription> inPacketDescriptions, long inStartingPacket, int[] ioNumPackets, byte[] inBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus GetNameFromSoundBank (const struct FSRef *inSoundBankRef, CFStringRef *outName) ;
	 */
	public static int GetNameFromSoundBank(FS inSoundBankRef, String outName){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFormatGetProperty( AudioFormatPropertyID inPropertyID, UInt32 inSpecifierSize, const void* inSpecifier, UInt32* ioPropertyDataSize, void* outPropertyData) ;
	 */
	public static int AudioFormatGetProperty(int inPropertyID, int inSpecifierSize, byte[] inSpecifier, int[] ioPropertyDataSize, byte[] outPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioSessionRemovePropertyListener( AudioSessionPropertyID inID) ;
	 */
	public static int AudioSessionRemovePropertyListener(int inID){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileStreamOpen ( void * inClientData, AudioFileStream_PropertyListenerProc inPropertyListenerProc, AudioFileStream_PacketsProc inPacketsProc, AudioFileTypeID inFileTypeHint, AudioFileStreamID * outAudioFileStream) ;
	 */
	public static int AudioFileStreamOpen(byte[] inClientData, Object inPropertyListenerProc, Object inPacketsProc, int inFileTypeHint, AudioFileStreamID outAudioFileStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileReadPackets ( AudioFileID inAudioFile, Boolean inUseCache, UInt32 *outNumBytes, AudioStreamPacketDescription *outPacketDescriptions, SInt64 inStartingPacket, UInt32 *ioNumPackets, void *outBuffer) ;
	 */
	public static int AudioFileReadPackets(AudioFileID inAudioFile, byte inUseCache, int[] outNumBytes, Reference<AudioStreamPacketDescription> outPacketDescriptions, long inStartingPacket, int[] ioNumPackets, byte[] outBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CAShow (void* inObject) ;
	 */
	public static void CAShow(byte[] inObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileOptimize (AudioFileID inAudioFile) ;
	 */
	public static int AudioFileOptimize(AudioFileID inAudioFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioSessionSetProperty( AudioSessionPropertyID inID, UInt32 inDataSize, const void *inData) ;
	 */
	public static int AudioSessionSetProperty(int inID, int inDataSize, byte[] inData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileClose (AudioFileID inAudioFile) ;
	 */
	public static int AudioFileClose(AudioFileID inAudioFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioSessionGetProperty( AudioSessionPropertyID inID, UInt32 *ioDataSize, void *outData) ;
	 */
	public static int AudioSessionGetProperty(int inID, int[] ioDataSize, byte[] outData){
		throw new RuntimeException("Stub");
	}

	/**
	 * void AudioServicesPlaySystemSound(SystemSoundID inSystemSoundID) ;
	 */
	public static void AudioServicesPlaySystemSound(int inSystemSoundID){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioSessionRemovePropertyListenerWithUserData( AudioSessionPropertyID inID, AudioSessionPropertyListener inProc, void *inClientData) ;
	 */
	public static int AudioSessionRemovePropertyListenerWithUserData(int inID, Object inProc, byte[] inClientData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioHardwareServiceGetPropertyDataSize( AudioObjectID inObjectID, const AudioObjectPropertyAddress* inAddress, UInt32 inQualifierDataSize, const void* inQualifierData, UInt32* outDataSize) ;
	 */
	public static int AudioHardwareServiceGetPropertyDataSize(AudioObjectID inObjectID, AudioObjectPropertyAddress inAddress, int inQualifierDataSize, byte[] inQualifierData, int[] outDataSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileGetPropertyInfo( AudioFileID inAudioFile, AudioFilePropertyID inPropertyID, UInt32 *outDataSize, UInt32 *isWritable) ;
	 */
	public static int AudioFileGetPropertyInfo(AudioFileID inAudioFile, int inPropertyID, int[] outDataSize, int[] isWritable){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileStreamSetProperty( AudioFileStreamID inAudioFileStream, AudioFileStreamPropertyID inPropertyID, UInt32 inPropertyDataSize, const void * inPropertyData) ;
	 */
	public static int AudioFileStreamSetProperty(AudioFileStreamID inAudioFileStream, int inPropertyID, int inPropertyDataSize, byte[] inPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioHardwareServiceSetPropertyData( AudioObjectID inObjectID, const AudioObjectPropertyAddress* inAddress, UInt32 inQualifierDataSize, const void* inQualifierData, UInt32 inDataSize, const void* inData) ;
	 */
	public static int AudioHardwareServiceSetPropertyData(AudioObjectID inObjectID, AudioObjectPropertyAddress inAddress, int inQualifierDataSize, byte[] inQualifierData, int inDataSize, byte[] inData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileSetProperty( AudioFileID inAudioFile, AudioFilePropertyID inPropertyID, UInt32 inDataSize, const void *inPropertyData) ;
	 */
	public static int AudioFileSetProperty(AudioFileID inAudioFile, int inPropertyID, int inDataSize, byte[] inPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileCountUserData ( AudioFileID inAudioFile, UInt32 inUserDataID, UInt32 *outNumberItems) ;
	 */
	public static int AudioFileCountUserData(AudioFileID inAudioFile, int inUserDataID, int[] outNumberItems){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioServicesSetProperty( AudioServicesPropertyID inPropertyID, UInt32 inSpecifierSize, const void* inSpecifier, UInt32 inPropertyDataSize, const void* inPropertyData) ;
	 */
	public static int AudioServicesSetProperty(int inPropertyID, int inSpecifierSize, byte[] inSpecifier, int inPropertyDataSize, byte[] inPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileReadBytes ( AudioFileID inAudioFile, Boolean inUseCache, SInt64 inStartingByte, UInt32 *ioNumBytes, void *outBuffer) ;
	 */
	public static int AudioFileReadBytes(AudioFileID inAudioFile, byte inUseCache, long inStartingByte, int[] ioNumBytes, byte[] outBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileInitializeWithCallbacks ( void * inClientData, AudioFile_ReadProc inReadFunc, AudioFile_WriteProc inWriteFunc, AudioFile_GetSizeProc inGetSizeFunc, AudioFile_SetSizeProc inSetSizeFunc, AudioFileTypeID inFileType, const AudioStreamBasicDescription *inFormat, UInt32 inFlags, AudioFileID *outAudioFile) ;
	 */
	public static int AudioFileInitializeWithCallbacks(byte[] inClientData, Object inReadFunc, Object inWriteFunc, Object inGetSizeFunc, Object inSetSizeFunc, int inFileType, Reference<AudioStreamBasicDescription> inFormat, int inFlags, AudioFileID outAudioFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileCreateWithURL (CFURLRef inFileRef, AudioFileTypeID inFileType, const AudioStreamBasicDescription *inFormat, UInt32 inFlags, AudioFileID *outAudioFile) ;
	 */
	public static int AudioFileCreateWithURL(CFURL inFileRef, int inFileType, Reference<AudioStreamBasicDescription> inFormat, int inFlags, AudioFileID outAudioFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileStreamGetProperty( AudioFileStreamID inAudioFileStream, AudioFileStreamPropertyID inPropertyID, UInt32 * ioPropertyDataSize, void * outPropertyData) ;
	 */
	public static int AudioFileStreamGetProperty(AudioFileStreamID inAudioFileStream, int inPropertyID, int[] ioPropertyDataSize, byte[] outPropertyData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus DisposeAUGraph( AUGraph inGraph) ;
	 */
	public static int DisposeAUGraph(AUGraph inGraph){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioFileCreate ( const struct FSRef *inParentRef, CFStringRef inFileName, AudioFileTypeID inFileType, const AudioStreamBasicDescription *inFormat, UInt32 inFlags, struct FSRef *outNewFileRef, AudioFileID *outAudioFile) ;
	 */
	public static int AudioFileCreate(FS inParentRef, String inFileName, int inFileType, Reference<AudioStreamBasicDescription> inFormat, int inFlags, FS outNewFileRef, AudioFileID outAudioFile){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AudioToolbox() {}
}
