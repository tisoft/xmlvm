package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKVoiceChatService extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (GKVoiceChatService *)defaultVoiceChatService;
	 */
	public static GKVoiceChatService defaultVoiceChatService(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)isVoIPAllowed;
	 */
	public static boolean isVoIPAllowed(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	GKVoiceChatService() {}

	/*
	 * Properties
	 */

	/**
	 * @property(assign) id<GKVoiceChatClient> client;
	 */
	public GKVoiceChatClient getClient(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id<GKVoiceChatClient> client;
	 */
	public void setClient(GKVoiceChatClient client){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isMicrophoneMuted) BOOL microphoneMuted;
	 */
	public boolean isMicrophoneMuted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isMicrophoneMuted) BOOL microphoneMuted;
	 */
	public void setMicrophoneMuted(boolean microphoneMuted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float remoteParticipantVolume;
	 */
	public float getRemoteParticipantVolume(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float remoteParticipantVolume;
	 */
	public void setRemoteParticipantVolume(float remoteParticipantVolume){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isOutputMeteringEnabled) BOOL outputMeteringEnabled;
	 */
	public boolean isOutputMeteringEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isOutputMeteringEnabled) BOOL outputMeteringEnabled;
	 */
	public void setOutputMeteringEnabled(boolean outputMeteringEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isInputMeteringEnabled) BOOL inputMeteringEnabled;
	 */
	public boolean isInputMeteringEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isInputMeteringEnabled) BOOL inputMeteringEnabled;
	 */
	public void setInputMeteringEnabled(boolean inputMeteringEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) float outputMeterLevel;
	 */
	public float getOutputMeterLevel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) float inputMeterLevel;
	 */
	public float getInputMeterLevel(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)startVoiceChatWithParticipantID:(NSString *)participantID error:(NSError **)error;
	 */
	public boolean startVoiceChatWithParticipantID(String participantID, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopVoiceChatWithParticipantID:(NSString *)participantID;
	 */
	public void stopVoiceChatWithParticipantID(String participantID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)acceptCallID:(NSInteger)callID error:(NSError **)error;
	 */
	public boolean acceptCallID(int callID, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)denyCallID:(NSInteger)callID;
	 */
	public void denyCallID(int callID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)receivedRealTimeData:(NSData *)audio fromParticipantID:(NSString *)participantID;
	 */
	public void receivedRealTimeData(NSData audio, String participantID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)receivedData:(NSData *)arbitraryData fromParticipantID:(NSString *)participantID;
	 */
	public void receivedData(NSData arbitraryData, String participantID){
		throw new RuntimeException("Stub");
	}
}
