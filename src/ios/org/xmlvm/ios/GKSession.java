package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKSession extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithSessionID:(NSString *)sessionID displayName:(NSString *)name sessionMode:(GKSessionMode)mode;
	 */
	public GKSession(String sessionID, String name, int mode) {}

	/** Default constructor */
	public GKSession() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(assign) id<GKSessionDelegate> delegate;
	 */
	public org.xmlvm.ios.GKSessionDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id<GKSessionDelegate> delegate;
	 */
	public void setDelegate(org.xmlvm.ios.GKSessionDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSString *sessionID;
	 */
	public String getSessionID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSString *displayName;
	 */
	public String getDisplayName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) GKSessionMode sessionMode;
	 */
	public int getSessionMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSString *peerID;
	 */
	public String getPeerID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isAvailable) BOOL available;
	 */
	public boolean isAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isAvailable) BOOL available;
	 */
	public void setAvailable(boolean available){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) NSTimeInterval disconnectTimeout;
	 */
	public double getDisconnectTimeout(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) NSTimeInterval disconnectTimeout;
	 */
	public void setDisconnectTimeout(double disconnectTimeout){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)displayNameForPeer:(NSString *)peerID;
	 */
	public String displayNameForPeer(String peerID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)sendData:(NSData *) data toPeers:(NSArray *)peers withDataMode:(GKSendDataMode)mode error:(NSError **)error;
	 */
	public boolean sendData(NSData data, List peers, int mode, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)sendDataToAllPeers:(NSData *) data withDataMode:(GKSendDataMode)mode error:(NSError **)error;
	 */
	public boolean sendDataToAllPeers(NSData data, int mode, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDataReceiveHandler:(id)handler withContext:(void *)context;
	 */
	public void setDataReceiveHandler(Object handler, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)connectToPeer:(NSString *)peerID withTimeout:(NSTimeInterval)timeout;
	 */
	public void connectToPeer(String peerID, double timeout){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelConnectToPeer:(NSString *)peerID;
	 */
	public void cancelConnectToPeer(String peerID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)acceptConnectionFromPeer:(NSString *)peerID error:(NSError **)error;
	 */
	public boolean acceptConnectionFromPeer(String peerID, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)denyConnectionFromPeer:(NSString *)peerID;
	 */
	public void denyConnectionFromPeer(String peerID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)disconnectPeerFromAllPeers:(NSString *)peerID;
	 */
	public void disconnectPeerFromAllPeers(String peerID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)disconnectFromAllPeers;
	 */
	public void disconnectFromAllPeers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)peersWithConnectionState:(GKPeerConnectionState)state;
	 */
	public List peersWithConnectionState(int state){
		throw new RuntimeException("Stub");
	}
}
