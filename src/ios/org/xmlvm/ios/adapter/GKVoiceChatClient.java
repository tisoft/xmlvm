package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class GKVoiceChatClient implements org.xmlvm.ios.GKVoiceChatClient {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService sendData:(NSData *)data toParticipantID:(NSString *)participantID;
	 */
	public void sendData(GKVoiceChatService voiceChatService, NSData data, String participantID){};
	/**
	 * - (NSString *)participantID;
	 */
	public String participantID(){
		return null;
	}
	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService sendRealTimeData:(NSData *)data toParticipantID:(NSString *)participantID;
	 */
	public void sendRealTimeData(GKVoiceChatService voiceChatService, NSData data, String participantID){};
	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didStartWithParticipantID:(NSString *)participantID;
	 */
	public void didStartWithParticipantID(GKVoiceChatService voiceChatService, String participantID){};
	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didNotStartWithParticipantID:(NSString *)participantID error:(NSError *)error;
	 */
	public void didNotStartWithParticipantID(GKVoiceChatService voiceChatService, String participantID, NSError error){};
	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didStopWithParticipantID:(NSString *)participantID error:(NSError *)error;
	 */
	public void didStopWithParticipantID(GKVoiceChatService voiceChatService, String participantID, NSError error){};
	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didReceiveInvitationFromParticipantID:(NSString *)participantID callID:(NSInteger)callID;
	 */
	public void didReceiveInvitationFromParticipantID(GKVoiceChatService voiceChatService, String participantID, int callID){};}
