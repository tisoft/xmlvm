package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVSynchronizedLayer extends CALayer {

	/*
	 * Static methods
	 */

	/**
	 * + (AVSynchronizedLayer *)synchronizedLayerWithPlayerItem:(AVPlayerItem *)playerItem;
	 */
	public static AVSynchronizedLayer synchronizedLayerWithPlayerItem(AVPlayerItem playerItem){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public AVSynchronizedLayer(Object layer) {
		super(layer);
	}

	/** Default constructor */
	public AVSynchronizedLayer() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, retain) AVPlayerItem *playerItem;
	 */
	public AVPlayerItem getPlayerItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) AVPlayerItem *playerItem;
	 */
	public void setPlayerItem(AVPlayerItem playerItem){
		throw new RuntimeException("Stub");
	}
}
