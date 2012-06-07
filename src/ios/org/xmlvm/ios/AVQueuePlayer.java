package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVQueuePlayer extends AVPlayer {

	/*
	 * Static methods
	 */

	/**
	 * + (id)queuePlayerWithItems:(NSArray *)items;
	 */
	public static AVQueuePlayer queuePlayerWithItems(List items){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public AVQueuePlayer(NSURL URL) {
		super(URL);
	}
	public AVQueuePlayer(AVPlayerItem item) {
		super(item);
	}

	/**
	 * - (id)initWithItems:(NSArray *)items;
	 */
	public AVQueuePlayer(List items) {}

	/** Default constructor */
	public AVQueuePlayer() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSArray *)items;
	 */
	public List items(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)advanceToNextItem;
	 */
	public void advanceToNextItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canInsertItem:(AVPlayerItem *)item afterItem:(AVPlayerItem *)afterItem;
	 */
	public boolean canInsertItem(AVPlayerItem item, AVPlayerItem afterItem){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertItem:(AVPlayerItem *)item afterItem:(AVPlayerItem *)afterItem;
	 */
	public void insertItem(AVPlayerItem item, AVPlayerItem afterItem){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeItem:(AVPlayerItem *)item;
	 */
	public void removeItem(AVPlayerItem item){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAllItems;
	 */
	public void removeAllItems(){
		throw new RuntimeException("Stub");
	}
}
