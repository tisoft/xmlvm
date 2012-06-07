package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMoviePlayerController extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithContentURL:(NSURL *)url;
	 */
	public MPMoviePlayerController(NSURL url) {}

	/** Default constructor */
	public MPMoviePlayerController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, copy) NSURL *contentURL;
	 */
	public NSURL getContentURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSURL *contentURL;
	 */
	public void setContentURL(NSURL contentURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) UIView *view;
	 */
	public UIView getView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) UIView *backgroundView;
	 */
	public UIView getBackgroundView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MPMoviePlaybackState playbackState;
	 */
	public int getPlaybackState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MPMovieLoadState loadState;
	 */
	public int getLoadState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMovieControlStyle controlStyle;
	 */
	public int getControlStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMovieControlStyle controlStyle;
	 */
	public void setControlStyle(int controlStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMovieRepeatMode repeatMode;
	 */
	public int getRepeatMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMovieRepeatMode repeatMode;
	 */
	public void setRepeatMode(int repeatMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL shouldAutoplay;
	 */
	public boolean getShouldAutoplay(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL shouldAutoplay;
	 */
	public void setShouldAutoplay(boolean shouldAutoplay){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL useApplicationAudioSession;
	 */
	public boolean getUseApplicationAudioSession(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL useApplicationAudioSession;
	 */
	public void setUseApplicationAudioSession(boolean useApplicationAudioSession){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isFullscreen) BOOL fullscreen;
	 */
	public boolean isFullscreen(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isFullscreen) BOOL fullscreen;
	 */
	public void setFullscreen(boolean fullscreen){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMovieScalingMode scalingMode;
	 */
	public int getScalingMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMovieScalingMode scalingMode;
	 */
	public void setScalingMode(int scalingMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MPMovieMediaTypeMask movieMediaTypes;
	 */
	public int getMovieMediaTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMovieSourceType movieSourceType;
	 */
	public int getMovieSourceType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMovieSourceType movieSourceType;
	 */
	public void setMovieSourceType(int movieSourceType){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSTimeInterval duration;
	 */
	public double getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSTimeInterval playableDuration;
	 */
	public double getPlayableDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CGSize naturalSize;
	 */
	public CGSize getNaturalSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval initialPlaybackTime;
	 */
	public double getInitialPlaybackTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval initialPlaybackTime;
	 */
	public void setInitialPlaybackTime(double initialPlaybackTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval endPlaybackTime;
	 */
	public double getEndPlaybackTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval endPlaybackTime;
	 */
	public void setEndPlaybackTime(double endPlaybackTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsAirPlay ;
	 */
	public boolean getAllowsAirPlay(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsAirPlay ;
	 */
	public void setAllowsAirPlay(boolean allowsAirPlay){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MPMovieAccessLog *accessLog ;
	 */
	public MPMovieAccessLog getAccessLog(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MPMovieErrorLog *errorLog ;
	 */
	public MPMovieErrorLog getErrorLog(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setFullscreen:(BOOL)fullscreen animated:(BOOL)animated;
	 */
	public void setFullscreen(boolean fullscreen, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIImage *)thumbnailImageAtTime:(NSTimeInterval)playbackTime timeOption:(MPMovieTimeOption)option;
	 */
	public UIImage thumbnailImageAtTime(double playbackTime, int option){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)requestThumbnailImagesAtTimes:(NSArray *)playbackTimes timeOption:(MPMovieTimeOption)option;
	 */
	public void requestThumbnailImagesAtTimes(List playbackTimes, int option){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelAllThumbnailImageRequests;
	 */
	public void cancelAllThumbnailImageRequests(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)timedMetadata ;
	 */
	public List timedMetadata(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setBackgroundColor:(UIColor *)backgroundColor ;
	 */
	public void setBackgroundColor(UIColor backgroundColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIColor *)backgroundColor ;
	 */
	public UIColor backgroundColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMovieControlMode:(MPMovieControlMode)movieControlMode ;
	 */
	public void setMovieControlMode(int movieControlMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MPMovieControlMode)movieControlMode ;
	 */
	public int movieControlMode(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */

	/**
	 * @property(nonatomic, readonly) BOOL isPreparedToPlay;
	 */
	public boolean getIsPreparedToPlay(){
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

	/**
	 * @property(nonatomic) float currentPlaybackRate;
	 */
	public float getCurrentPlaybackRate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float currentPlaybackRate;
	 */
	public void setCurrentPlaybackRate(float currentPlaybackRate){
		throw new RuntimeException("Stub");
	}
}
