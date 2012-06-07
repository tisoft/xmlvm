package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKVoiceChat extends NSObject {

	/*
	 * Static methods
	 */

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
	public GKVoiceChat() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *name;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign, getter=isActive) BOOL active;
	 */
	public boolean isActive(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign, getter=isActive) BOOL active;
	 */
	public void setActive(boolean active){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) float volume;
	 */
	public float getVolume(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) float volume;
	 */
	public void setVolume(float volume){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)start;
	 */
	public void start(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stop;
	 */
	public void stop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMute:(BOOL)isMuted forPlayer:(NSString *)playerID;
	 */
	public void setMute(boolean isMuted, String playerID){
		throw new RuntimeException("Stub");
	}
}
