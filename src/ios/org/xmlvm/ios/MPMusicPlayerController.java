package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMusicPlayerController extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (MPMusicPlayerController *)applicationMusicPlayer;
	 */
	public static MPMusicPlayerController applicationMusicPlayer(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMusicPlayerController *)iPodMusicPlayer;
	 */
	public static MPMusicPlayerController iPodMusicPlayer(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MPMusicPlayerController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) MPMusicPlaybackState playbackState;
	 */
	public int getPlaybackState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMusicRepeatMode repeatMode;
	 */
	public int getRepeatMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMusicRepeatMode repeatMode;
	 */
	public void setRepeatMode(int repeatMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMusicShuffleMode shuffleMode;
	 */
	public int getShuffleMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMusicShuffleMode shuffleMode;
	 */
	public void setShuffleMode(int shuffleMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float volume;
	 */
	public float getVolume(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float volume;
	 */
	public void setVolume(float volume){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) MPMediaItem *nowPlayingItem;
	 */
	public MPMediaItem getNowPlayingItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) MPMediaItem *nowPlayingItem;
	 */
	public void setNowPlayingItem(MPMediaItem nowPlayingItem){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval currentPlaybackTime;
	 */
	public double getCurrentPlaybackTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval currentPlaybackTime;
	 */
	public void setCurrentPlaybackTime(double currentPlaybackTime){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setQueueWithQuery:(MPMediaQuery *)query;
	 */
	public void setQueueWithQuery(MPMediaQuery query){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setQueueWithItemCollection:(MPMediaItemCollection *)itemCollection;
	 */
	public void setQueueWithItemCollection(MPMediaItemCollection itemCollection){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)play;
	 */
	public void play(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)pause;
	 */
	public void pause(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stop;
	 */
	public void stop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)beginSeekingForward;
	 */
	public void beginSeekingForward(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)beginSeekingBackward;
	 */
	public void beginSeekingBackward(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endSeeking;
	 */
	public void endSeeking(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)skipToNextItem;
	 */
	public void skipToNextItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)skipToBeginning;
	 */
	public void skipToBeginning(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)skipToPreviousItem;
	 */
	public void skipToPreviousItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)beginGeneratingPlaybackNotifications;
	 */
	public void beginGeneratingPlaybackNotifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endGeneratingPlaybackNotifications;
	 */
	public void endGeneratingPlaybackNotifications(){
		throw new RuntimeException("Stub");
	}
}
