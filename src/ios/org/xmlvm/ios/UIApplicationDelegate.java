package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIApplicationDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)applicationDidFinishLaunching:(UIApplication *)application;
	 */
	public abstract void applicationDidFinishLaunching(UIApplication application);

	/**
	 * - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions ;
	 */
	public abstract boolean didFinishLaunchingWithOptions(UIApplication application, Map launchOptions);

	/**
	 * - (void)applicationDidBecomeActive:(UIApplication *)application;
	 */
	public abstract void applicationDidBecomeActive(UIApplication application);

	/**
	 * - (void)applicationWillResignActive:(UIApplication *)application;
	 */
	public abstract void applicationWillResignActive(UIApplication application);

	/**
	 * - (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url;
	 */
	public abstract boolean handleOpenURL(UIApplication application, NSURL url);

	/**
	 * - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation ;
	 */
	public abstract boolean openURL(UIApplication application, NSURL url, String sourceApplication, Object annotation);

	/**
	 * - (void)applicationDidReceiveMemoryWarning:(UIApplication *)application;
	 */
	public abstract void applicationDidReceiveMemoryWarning(UIApplication application);

	/**
	 * - (void)applicationWillTerminate:(UIApplication *)application;
	 */
	public abstract void applicationWillTerminate(UIApplication application);

	/**
	 * - (void)applicationSignificantTimeChange:(UIApplication *)application;
	 */
	public abstract void applicationSignificantTimeChange(UIApplication application);

	/**
	 * - (void)application:(UIApplication *)application willChangeStatusBarOrientation:(UIInterfaceOrientation)newStatusBarOrientation duration:(NSTimeInterval)duration;
	 */
	public abstract void willChangeStatusBarOrientation(UIApplication application, int newStatusBarOrientation, double duration);

	/**
	 * - (void)application:(UIApplication *)application didChangeStatusBarOrientation:(UIInterfaceOrientation)oldStatusBarOrientation;
	 */
	public abstract void didChangeStatusBarOrientation(UIApplication application, int oldStatusBarOrientation);

	/**
	 * - (void)application:(UIApplication *)application willChangeStatusBarFrame:(CGRect)newStatusBarFrame;
	 */
	public abstract void willChangeStatusBarFrame(UIApplication application, CGRect newStatusBarFrame);

	/**
	 * - (void)application:(UIApplication *)application didChangeStatusBarFrame:(CGRect)oldStatusBarFrame;
	 */
	public abstract void didChangeStatusBarFrame(UIApplication application, CGRect oldStatusBarFrame);

	/**
	 * - (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken ;
	 */
	public abstract void didRegisterForRemoteNotificationsWithDeviceToken(UIApplication application, NSData deviceToken);

	/**
	 * - (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error ;
	 */
	public abstract void didFailToRegisterForRemoteNotificationsWithError(UIApplication application, NSError error);

	/**
	 * - (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo ;
	 */
	public abstract void didReceiveRemoteNotification(UIApplication application, Map userInfo);

	/**
	 * - (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification ;
	 */
	public abstract void didReceiveLocalNotification(UIApplication application, UILocalNotification notification);

	/**
	 * - (void)applicationDidEnterBackground:(UIApplication *)application ;
	 */
	public abstract void applicationDidEnterBackground(UIApplication application);

	/**
	 * - (void)applicationWillEnterForeground:(UIApplication *)application ;
	 */
	public abstract void applicationWillEnterForeground(UIApplication application);

	/**
	 * - (void)applicationProtectedDataWillBecomeUnavailable:(UIApplication *)application ;
	 */
	public abstract void applicationProtectedDataWillBecomeUnavailable(UIApplication application);

	/**
	 * - (void)applicationProtectedDataDidBecomeAvailable:(UIApplication *)application ;
	 */
	public abstract void applicationProtectedDataDidBecomeAvailable(UIApplication application);
}
