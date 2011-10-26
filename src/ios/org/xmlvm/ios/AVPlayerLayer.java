package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVPlayerLayer extends CALayer {

	/*
	 * Static methods
	 */

	/**
	 * + (AVPlayerLayer *)playerLayerWithPlayer:(AVPlayer *)player;
	 */
	public static AVPlayerLayer playerLayerWithPlayer(AVPlayer player){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVPlayerLayer() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, retain) AVPlayer *player;
	 */
	public AVPlayer getPlayer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) AVPlayer *player;
	 */
	public void setPlayer(AVPlayer player){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSString *videoGravity;
	 */
	public String getVideoGravity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSString *videoGravity;
	 */
	public void setVideoGravity(String videoGravity){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isReadyForDisplay) BOOL readyForDisplay;
	 */
	public boolean isReadyForDisplay(){
		throw new RuntimeException("Stub");
	}
}
