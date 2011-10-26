package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIApplication extends UIResponder {

	/*
	 * Static methods
	 */

	/**
	 * + (UIApplication *)sharedApplication;
	 */
	public static UIApplication sharedApplication(){
		throw new RuntimeException("Stub");
	}

	/**
	 * int UIApplicationMain(int argc, char *argv[], NSString *principalClassName, NSString *delegateClassName);
	 */
	public static int main(int argc, byte[][] argv, String principalClassName, String delegateClassName){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIApplication() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<UIApplicationDelegate> delegate;
	 */
	public UIApplicationDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIApplicationDelegate> delegate;
	 */
	public void setDelegate(UIApplicationDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isIdleTimerDisabled) BOOL idleTimerDisabled;
	 */
	public boolean isIdleTimerDisabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isIdleTimerDisabled) BOOL idleTimerDisabled;
	 */
	public void setIdleTimerDisabled(boolean idleTimerDisabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIWindow *keyWindow;
	 */
	public UIWindow getKeyWindow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSArray *windows;
	 */
	public List getWindows(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isNetworkActivityIndicatorVisible) BOOL networkActivityIndicatorVisible;
	 */
	public boolean isNetworkActivityIndicatorVisible(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isNetworkActivityIndicatorVisible) BOOL networkActivityIndicatorVisible;
	 */
	public void setNetworkActivityIndicatorVisible(boolean networkActivityIndicatorVisible){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIStatusBarStyle statusBarStyle;
	 */
	public int getStatusBarStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIStatusBarStyle statusBarStyle;
	 */
	public void setStatusBarStyle(int statusBarStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isStatusBarHidden) BOOL statusBarHidden;
	 */
	public boolean isStatusBarHidden(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isStatusBarHidden) BOOL statusBarHidden;
	 */
	public void setStatusBarHidden(boolean statusBarHidden){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIInterfaceOrientation statusBarOrientation;
	 */
	public int getStatusBarOrientation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIInterfaceOrientation statusBarOrientation;
	 */
	public void setStatusBarOrientation(int statusBarOrientation){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSTimeInterval statusBarOrientationAnimationDuration;
	 */
	public double getStatusBarOrientationAnimationDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGRect statusBarFrame;
	 */
	public CGRect getStatusBarFrame(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger applicationIconBadgeNumber;
	 */
	public int getApplicationIconBadgeNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger applicationIconBadgeNumber;
	 */
	public void setApplicationIconBadgeNumber(int applicationIconBadgeNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL applicationSupportsShakeToEdit ;
	 */
	public boolean getApplicationSupportsShakeToEdit(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL applicationSupportsShakeToEdit ;
	 */
	public void setApplicationSupportsShakeToEdit(boolean applicationSupportsShakeToEdit){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIApplicationState applicationState ;
	 */
	public int getApplicationState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSTimeInterval backgroundTimeRemaining ;
	 */
	public double getBackgroundTimeRemaining(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isProtectedDataAvailable) BOOL protectedDataAvailable ;
	 */
	public boolean isProtectedDataAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *scheduledLocalNotifications ;
	 */
	public List getScheduledLocalNotifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *scheduledLocalNotifications ;
	 */
	public void setScheduledLocalNotifications(List scheduledLocalNotifications){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isProximitySensingEnabled) BOOL proximitySensingEnabled ;
	 */
	public boolean isProximitySensingEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isProximitySensingEnabled) BOOL proximitySensingEnabled ;
	 */
	public void setProximitySensingEnabled(boolean proximitySensingEnabled){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)beginIgnoringInteractionEvents;
	 */
	public void beginIgnoringInteractionEvents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endIgnoringInteractionEvents;
	 */
	public void endIgnoringInteractionEvents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isIgnoringInteractionEvents;
	 */
	public boolean isIgnoringInteractionEvents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)openURL:(NSURL*)url;
	 */
	public boolean openURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canOpenURL:(NSURL *)url ;
	 */
	public boolean canOpenURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sendEvent:(UIEvent *)event;
	 */
	public void sendEvent(UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)sendAction:(SEL)action to:(id)target from:(id)sender forEvent:(UIEvent *)event;
	 */
	public boolean sendAction(SEL action, Object target, Object sender, UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle animated:(BOOL)animated;
	 */
	public void setStatusBarStyle(int statusBarStyle, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStatusBarHidden:(BOOL)hidden withAnimation:(UIStatusBarAnimation)animation ;
	 */
	public void setStatusBarHidden(boolean hidden, int animation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStatusBarOrientation:(UIInterfaceOrientation)interfaceOrientation animated:(BOOL)animated;
	 */
	public void setStatusBarOrientation(int interfaceOrientation, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIBackgroundTaskIdentifier)beginBackgroundTaskWithExpirationHandler:(void(^)(void))handler ;
	 */
	public int beginBackgroundTaskWithExpirationHandler(Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endBackgroundTask:(UIBackgroundTaskIdentifier)identifier ;
	 */
	public void endBackgroundTask(int identifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setKeepAliveTimeout:(NSTimeInterval)timeout handler:(void(^)(void))keepAliveHandler ;
	 */
	public boolean setKeepAliveTimeout(double timeout, Object keepAliveHandler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)clearKeepAliveTimeout ;
	 */
	public void clearKeepAliveTimeout(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)registerForRemoteNotificationTypes:(UIRemoteNotificationType)types ;
	 */
	public void registerForRemoteNotificationTypes(int types){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)unregisterForRemoteNotifications ;
	 */
	public void unregisterForRemoteNotifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIRemoteNotificationType)enabledRemoteNotificationTypes ;
	 */
	public int enabledRemoteNotificationTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)presentLocalNotificationNow:(UILocalNotification *)notification ;
	 */
	public void presentLocalNotificationNow(UILocalNotification notification){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scheduleLocalNotification:(UILocalNotification *)notification ;
	 */
	public void scheduleLocalNotification(UILocalNotification notification){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelLocalNotification:(UILocalNotification *)notification ;
	 */
	public void cancelLocalNotification(UILocalNotification notification){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelAllLocalNotifications ;
	 */
	public void cancelAllLocalNotifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)beginReceivingRemoteControlEvents ;
	 */
	public void beginReceivingRemoteControlEvents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endReceivingRemoteControlEvents ;
	 */
	public void endReceivingRemoteControlEvents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated ;
	 */
	public void setStatusBarHidden(boolean hidden, boolean animated){
		throw new RuntimeException("Stub");
	}
}
