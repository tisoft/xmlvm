package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "GKVoiceChatClient")
public interface GKVoiceChatClient {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService sendData:(NSData *)data toParticipantID:(NSString *)participantID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "voiceChatService", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKVoiceChatService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSData", name = "sendData"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "toParticipantID")
	})
	public abstract void sendData(GKVoiceChatService voiceChatService, NSData data, String participantID);

	/**
	 * - (NSString *)participantID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "participantID", params = {
	})
	public abstract String participantID();

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService sendRealTimeData:(NSData *)data toParticipantID:(NSString *)participantID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "voiceChatService", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKVoiceChatService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSData", name = "sendRealTimeData"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "toParticipantID")
	})
	public abstract void sendRealTimeData(GKVoiceChatService voiceChatService, NSData data, String participantID);

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didStartWithParticipantID:(NSString *)participantID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "voiceChatService", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKVoiceChatService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didStartWithParticipantID")
	})
	public abstract void didStartWithParticipantID(GKVoiceChatService voiceChatService, String participantID);

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didNotStartWithParticipantID:(NSString *)participantID error:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "voiceChatService", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKVoiceChatService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didNotStartWithParticipantID"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "error")
	})
	public abstract void didNotStartWithParticipantID(GKVoiceChatService voiceChatService, String participantID, NSError error);

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didStopWithParticipantID:(NSString *)participantID error:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "voiceChatService", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKVoiceChatService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didStopWithParticipantID"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "error")
	})
	public abstract void didStopWithParticipantID(GKVoiceChatService voiceChatService, String participantID, NSError error);

	/**
	 * - (void)voiceChatService:(GKVoiceChatService *)voiceChatService didReceiveInvitationFromParticipantID:(NSString *)participantID callID:(NSInteger)callID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "voiceChatService", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKVoiceChatService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didReceiveInvitationFromParticipantID"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "callID")
	})
	public abstract void didReceiveInvitationFromParticipantID(GKVoiceChatService voiceChatService, String participantID, int callID);
}
