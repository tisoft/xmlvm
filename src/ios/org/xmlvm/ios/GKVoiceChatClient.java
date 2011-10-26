package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface GKVoiceChatClient {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService sendData:(NSData *)data toParticipantID:(NSString *)participantID;
	 */
	public abstract void sendData(GKVoiceChatService voiceChatService, NSData data, String participantID);

	/**
	 * - (NSString *)participantID;
	 */
	public abstract String participantID();

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService sendRealTimeData:(NSData *)data toParticipantID:(NSString *)participantID;
	 */
	public abstract void sendRealTimeData(GKVoiceChatService voiceChatService, NSData data, String participantID);

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didStartWithParticipantID:(NSString *)participantID;
	 */
	public abstract void didStartWithParticipantID(GKVoiceChatService voiceChatService, String participantID);

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didNotStartWithParticipantID:(NSString *)participantID error:(NSError *)error;
	 */
	public abstract void didNotStartWithParticipantID(GKVoiceChatService voiceChatService, String participantID, NSError error);

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didStopWithParticipantID:(NSString *)participantID error:(NSError *)error;
	 */
	public abstract void didStopWithParticipantID(GKVoiceChatService voiceChatService, String participantID, NSError error);

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didReceiveInvitationFromParticipantID:(NSString *)participantID callID:(NSInteger)callID;
	 */
	public abstract void didReceiveInvitationFromParticipantID(GKVoiceChatService voiceChatService, String participantID, int callID);
}
