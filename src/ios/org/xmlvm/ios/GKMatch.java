package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKMatch extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	GKMatch() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSArray *playerIDs;
	 */
	public List getPlayerIDs(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<GKMatchDelegate> delegate;
	 */
	public GKMatchDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<GKMatchDelegate> delegate;
	 */
	public void setDelegate(GKMatchDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSUInteger expectedPlayerCount;
	 */
	public int getExpectedPlayerCount(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)sendData:(NSData *)data toPlayers:(NSArray *)playerIDs withDataMode:(GKMatchSendDataMode)mode error:(NSError **)error;
	 */
	public boolean sendData(NSData data, List playerIDs, int mode, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)sendDataToAllPlayers:(NSData *)data withDataMode:(GKMatchSendDataMode)mode error:(NSError **)error;
	 */
	public boolean sendDataToAllPlayers(NSData data, int mode, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)disconnect;
	 */
	public void disconnect(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (GKVoiceChat *)voiceChatWithName:(NSString *)name;
	 */
	public GKVoiceChat voiceChatWithName(String name){
		throw new RuntimeException("Stub");
	}
}
