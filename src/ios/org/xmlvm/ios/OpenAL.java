package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class OpenAL {

	/*
	 * Static methods
	 */

	/**
	 * void alSourceiv( ALuint sid, ALenum param, const ALint* values );
	 */
	public static void AlSourceiv(int sid, int param, int[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourceUnqueueBuffers( ALuint sid, ALsizei numEntries, ALuint *bids );
	 */
	public static void AlSourceUnqueueBuffers(int sid, int numEntries, int[] bids){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourceRewind( ALuint sid );
	 */
	public static void AlSourceRewind(int sid){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetBooleanv( ALenum param, ALboolean* data );
	 */
	public static void AlGetBooleanv(int param, byte[] data){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetSourcef( ALuint sid, ALenum param, ALfloat* value );
	 */
	public static void AlGetSourcef(int sid, int param, float[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCdevice* alcGetContextsDevice( ALCcontext *context );
	 */
	public static ALCdevice_struct AlcGetContextsDevice(ALCcontext_struct context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alcCaptureSamples( ALCdevice *device, ALCvoid *buffer, ALCsizei samples );
	 */
	public static void AlcCaptureSamples(ALCdevice_struct device, byte[] buffer, int samples){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetSourcei( ALuint sid, ALenum param, ALint* value );
	 */
	public static void AlGetSourcei(int sid, int param, int[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alDopplerFactor( ALfloat value );
	 */
	public static void AlDopplerFactor(float value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetIntegerv( ALenum param, ALint* data );
	 */
	public static void AlGetIntegerv(int param, int[] data){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCcontext * alcCreateContext( ALCdevice *device, const ALCint* attrlist );
	 */
	public static ALCcontext_struct AlcCreateContext(ALCdevice_struct device, int[] attrlist){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourcePause( ALuint sid );
	 */
	public static void AlSourcePause(int sid){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourcefv( ALuint sid, ALenum param, const ALfloat* values );
	 */
	public static void AlSourcefv(int sid, int param, float[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCboolean alcMakeContextCurrent( ALCcontext *context );
	 */
	public static byte AlcMakeContextCurrent(ALCcontext_struct context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alDopplerVelocity( ALfloat value );
	 */
	public static void AlDopplerVelocity(float value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourceQueueBuffers( ALuint sid, ALsizei numEntries, const ALuint *bids );
	 */
	public static void AlSourceQueueBuffers(int sid, int numEntries, int[] bids){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alcCaptureStop( ALCdevice *device );
	 */
	public static void AlcCaptureStop(ALCdevice_struct device){
		throw new RuntimeException("Stub");
	}

	/**
	 * const ALCchar * alcGetString( ALCdevice *device, ALCenum param );
	 */
	public static byte[] AlcGetString(ALCdevice_struct device, int param){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourcePlayv( ALsizei ns, const ALuint *sids );
	 */
	public static void AlSourcePlayv(int ns, int[] sids){
		throw new RuntimeException("Stub");
	}

	/**
	 * const ALchar* alGetString( ALenum param );
	 */
	public static byte[] AlGetString(int param){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCboolean alcIsExtensionPresent( ALCdevice *device, const ALCchar *extname );
	 */
	public static byte AlcIsExtensionPresent(ALCdevice_struct device, byte[] extname){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetBuffer3i( ALuint bid, ALenum param, ALint* value1, ALint* value2, ALint* value3);
	 */
	public static void AlGetBuffer3i(int bid, int param, int[] value1, int[] value2, int[] value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alcCaptureStart( ALCdevice *device );
	 */
	public static void AlcCaptureStart(ALCdevice_struct device){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetBuffer3f( ALuint bid, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3);
	 */
	public static void AlGetBuffer3f(int bid, int param, float[] value1, float[] value2, float[] value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetBufferfv( ALuint bid, ALenum param, ALfloat* values );
	 */
	public static void AlGetBufferfv(int bid, int param, float[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSpeedOfSound( ALfloat value );
	 */
	public static void AlSpeedOfSound(float value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alListeneriv( ALenum param, const ALint* values );
	 */
	public static void AlListeneriv(int param, int[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourcei( ALuint sid, ALenum param, ALint value );
	 */
	public static void AlSourcei(int sid, int param, int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourcef( ALuint sid, ALenum param, ALfloat value );
	 */
	public static void AlSourcef(int sid, int param, float value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alcDestroyContext( ALCcontext *context );
	 */
	public static void AlcDestroyContext(ALCcontext_struct context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetSourceiv( ALuint sid, ALenum param, ALint* values );
	 */
	public static void AlGetSourceiv(int sid, int param, int[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCboolean alcCaptureCloseDevice( ALCdevice *device );
	 */
	public static byte AlcCaptureCloseDevice(ALCdevice_struct device){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alcSuspendContext( ALCcontext *context );
	 */
	public static void AlcSuspendContext(ALCcontext_struct context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alBufferiv( ALuint bid, ALenum param, const ALint* values );
	 */
	public static void AlBufferiv(int bid, int param, int[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALint alGetInteger( ALenum param );
	 */
	public static int AlGetInteger(int param){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourceStopv( ALsizei ns, const ALuint *sids );
	 */
	public static void AlSourceStopv(int ns, int[] sids){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALdouble alGetDouble( ALenum param );
	 */
	public static double AlGetDouble(int param){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourceRewindv( ALsizei ns, const ALuint *sids );
	 */
	public static void AlSourceRewindv(int ns, int[] sids){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alBuffer3f( ALuint bid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3 );
	 */
	public static void AlBuffer3f(int bid, int param, float value1, float value2, float value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetBufferiv( ALuint bid, ALenum param, ALint* values );
	 */
	public static void AlGetBufferiv(int bid, int param, int[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alListenerfv( ALenum param, const ALfloat* values );
	 */
	public static void AlListenerfv(int param, float[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCenum alcGetEnumValue( ALCdevice *device, const ALCchar *enumname );
	 */
	public static int AlcGetEnumValue(ALCdevice_struct device, byte[] enumname){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGenBuffers( ALsizei n, ALuint* buffers );
	 */
	public static void AlGenBuffers(int n, int[] buffers){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourceStop( ALuint sid );
	 */
	public static void AlSourceStop(int sid){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALboolean alIsSource( ALuint sid );
	 */
	public static byte AlIsSource(int sid){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetSourcefv( ALuint sid, ALenum param, ALfloat* values );
	 */
	public static void AlGetSourcefv(int sid, int param, float[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alBuffer3i( ALuint bid, ALenum param, ALint value1, ALint value2, ALint value3 );
	 */
	public static void AlBuffer3i(int bid, int param, int value1, int value2, int value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetListeneriv( ALenum param, ALint* values );
	 */
	public static void AlGetListeneriv(int param, int[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCcontext * alcGetCurrentContext( void );
	 */
	public static ALCcontext_struct AlcGetCurrentContext(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alBufferData( ALuint bid, ALenum format, const ALvoid* data, ALsizei size, ALsizei freq );
	 */
	public static void AlBufferData(int bid, int format, byte[] data, int size, int freq){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alBufferfv( ALuint bid, ALenum param, const ALfloat* values );
	 */
	public static void AlBufferfv(int bid, int param, float[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourcePausev( ALsizei ns, const ALuint *sids );
	 */
	public static void AlSourcePausev(int ns, int[] sids){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALboolean alGetBoolean( ALenum param );
	 */
	public static byte AlGetBoolean(int param){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALfloat alGetFloat( ALenum param );
	 */
	public static float AlGetFloat(int param){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alBufferf( ALuint bid, ALenum param, ALfloat value );
	 */
	public static void AlBufferf(int bid, int param, float value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alListener3f( ALenum param, ALfloat value1, ALfloat value2, ALfloat value3 );
	 */
	public static void AlListener3f(int param, float value1, float value2, float value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alListener3i( ALenum param, ALint value1, ALint value2, ALint value3 );
	 */
	public static void AlListener3i(int param, int value1, int value2, int value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alBufferi( ALuint bid, ALenum param, ALint value );
	 */
	public static void AlBufferi(int bid, int param, int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCdevice * alcOpenDevice( const ALCchar *devicename );
	 */
	public static ALCdevice_struct AlcOpenDevice(byte[] devicename){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetListenerfv( ALenum param, ALfloat* values );
	 */
	public static void AlGetListenerfv(int param, float[] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGenSources( ALsizei n, ALuint* sources );
	 */
	public static void AlGenSources(int n, int[] sources){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alDistanceModel( ALenum distanceModel );
	 */
	public static void AlDistanceModel(int distanceModel){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSource3i( ALuint sid, ALenum param, ALint value1, ALint value2, ALint value3 );
	 */
	public static void AlSource3i(int sid, int param, int value1, int value2, int value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSource3f( ALuint sid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3 );
	 */
	public static void AlSource3f(int sid, int param, float value1, float value2, float value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alDisable( ALenum capability );
	 */
	public static void AlDisable(int capability){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alDeleteSources( ALsizei n, const ALuint* sources );
	 */
	public static void AlDeleteSources(int n, int[] sources){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alEnable( ALenum capability );
	 */
	public static void AlEnable(int capability){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCenum alcGetError( ALCdevice *device );
	 */
	public static int AlcGetError(ALCdevice_struct device){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCboolean alcCloseDevice( ALCdevice *device );
	 */
	public static byte AlcCloseDevice(ALCdevice_struct device){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALboolean alIsBuffer( ALuint bid );
	 */
	public static byte AlIsBuffer(int bid){
		throw new RuntimeException("Stub");
	}

	/**
	 * void * alcGetProcAddress( ALCdevice *device, const ALCchar *funcname );
	 */
	public static byte[] AlcGetProcAddress(ALCdevice_struct device, byte[] funcname){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alcProcessContext( ALCcontext *context );
	 */
	public static void AlcProcessContext(ALCcontext_struct context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alcGetIntegerv( ALCdevice *device, ALCenum param, ALCsizei size, ALCint *data );
	 */
	public static void AlcGetIntegerv(ALCdevice_struct device, int param, int size, int[] data){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetSource3i( ALuint sid, ALenum param, ALint* value1, ALint* value2, ALint* value3);
	 */
	public static void AlGetSource3i(int sid, int param, int[] value1, int[] value2, int[] value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetSource3f( ALuint sid, ALenum param, ALfloat* value1, ALfloat* value2, ALfloat* value3);
	 */
	public static void AlGetSource3f(int sid, int param, float[] value1, float[] value2, float[] value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alListeneri( ALenum param, ALint value );
	 */
	public static void AlListeneri(int param, int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALenum alGetEnumValue( const ALchar* ename );
	 */
	public static int AlGetEnumValue(byte[] ename){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetBufferi( ALuint bid, ALenum param, ALint* value );
	 */
	public static void AlGetBufferi(int bid, int param, int[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetFloatv( ALenum param, ALfloat* data );
	 */
	public static void AlGetFloatv(int param, float[] data){
		throw new RuntimeException("Stub");
	}

	/**
	 * void* alGetProcAddress( const ALchar* fname );
	 */
	public static byte[] AlGetProcAddress(byte[] fname){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alListenerf( ALenum param, ALfloat value );
	 */
	public static void AlListenerf(int param, float value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetBufferf( ALuint bid, ALenum param, ALfloat* value );
	 */
	public static void AlGetBufferf(int bid, int param, float[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetDoublev( ALenum param, ALdouble* data );
	 */
	public static void AlGetDoublev(int param, double[] data){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alDeleteBuffers( ALsizei n, const ALuint* buffers );
	 */
	public static void AlDeleteBuffers(int n, int[] buffers){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetListenerf( ALenum param, ALfloat* value );
	 */
	public static void AlGetListenerf(int param, float[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetListeneri( ALenum param, ALint* value );
	 */
	public static void AlGetListeneri(int param, int[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alSourcePlay( ALuint sid );
	 */
	public static void AlSourcePlay(int sid){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetListener3f( ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3 );
	 */
	public static void AlGetListener3f(int param, float[] value1, float[] value2, float[] value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * void alGetListener3i( ALenum param, ALint *value1, ALint *value2, ALint *value3 );
	 */
	public static void AlGetListener3i(int param, int[] value1, int[] value2, int[] value3){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALboolean alIsExtensionPresent( const ALchar* extname );
	 */
	public static byte AlIsExtensionPresent(byte[] extname){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALCdevice* alcCaptureOpenDevice( const ALCchar *devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize );
	 */
	public static ALCdevice_struct AlcCaptureOpenDevice(byte[] devicename, int frequency, int format, int buffersize){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALenum alGetError( void );
	 */
	public static int AlGetError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * ALboolean alIsEnabled( ALenum capability );
	 */
	public static byte AlIsEnabled(int capability){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public OpenAL() {}
}
