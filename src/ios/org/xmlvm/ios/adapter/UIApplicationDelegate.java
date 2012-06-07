package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIApplicationDelegate implements org.xmlvm.ios.UIApplicationDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)applicationDidFinishLaunching:(UIApplication *)application;
	 */
	public void applicationDidFinishLaunching(UIApplication application){};
	/**
	 * - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions ;
	 */
	public boolean didFinishLaunchingWithOptions(UIApplication arg0, Map<String, Object> arg1){
		return true;
	}
	/**
	 * - (void)applicationDidBecomeActive:(UIApplication *)application;
	 */
	public void applicationDidBecomeActive(UIApplication application){};
	/**
	 * - (void)applicationWillResignActive:(UIApplication *)application;
	 */
	public void applicationWillResignActive(UIApplication application){};
	/**
	 * - (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url;
	 */
	public boolean handleOpenURL(UIApplication application, NSURL url){
		return true;
	}
	/**
	 * - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation ;
	 */
	public boolean openURL(UIApplication application, NSURL url, String sourceApplication, Object annotation){
		return false;
	}
	/**
	 * - (void)applicationDidReceiveMemoryWarning:(UIApplication *)application;
	 */
	public void applicationDidReceiveMemoryWarning(UIApplication application){};
	/**
	 * - (void)applicationWillTerminate:(UIApplication *)application;
	 */
	public void applicationWillTerminate(UIApplication application){};
	/**
	 * - (void)applicationSignificantTimeChange:(UIApplication *)application;
	 */
	public void applicationSignificantTimeChange(UIApplication application){};
	/**
	 * - (void)application:(UIApplication *)application willChangeStatusBarOrientation:(UIInterfaceOrientation)newStatusBarOrientation duration:(NSTimeInterval)duration;
	 */
	public void willChangeStatusBarOrientation(UIApplication application, int newStatusBarOrientation, double duration){};
	/**
	 * - (void)application:(UIApplication *)application didChangeStatusBarOrientation:(UIInterfaceOrientation)oldStatusBarOrientation;
	 */
	public void didChangeStatusBarOrientation(UIApplication application, int oldStatusBarOrientation){};
	/**
	 * - (void)application:(UIApplication *)application willChangeStatusBarFrame:(CGRect)newStatusBarFrame;
	 */
	public void willChangeStatusBarFrame(UIApplication application, CGRect newStatusBarFrame){};
	/**
	 * - (void)application:(UIApplication *)application didChangeStatusBarFrame:(CGRect)oldStatusBarFrame;
	 */
	public void didChangeStatusBarFrame(UIApplication application, CGRect oldStatusBarFrame){};
	/**
	 * - (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken ;
	 */
	public void didRegisterForRemoteNotificationsWithDeviceToken(UIApplication application, NSData deviceToken){};
	/**
	 * - (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error ;
	 */
	public void didFailToRegisterForRemoteNotificationsWithError(UIApplication application, NSError error){};
	/**
	 * - (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo ;
	 */
	public void didReceiveRemoteNotification(UIApplication application, Map userInfo){};
	/**
	 * - (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification ;
	 */
	public void didReceiveLocalNotification(UIApplication application, UILocalNotification notification){};
	/**
	 * - (void)applicationDidEnterBackground:(UIApplication *)application ;
	 */
	public void applicationDidEnterBackground(UIApplication application){};
	/**
	 * - (void)applicationWillEnterForeground:(UIApplication *)application ;
	 */
	public void applicationWillEnterForeground(UIApplication application){};
	/**
	 * - (void)applicationProtectedDataWillBecomeUnavailable:(UIApplication *)application ;
	 */
	public void applicationProtectedDataWillBecomeUnavailable(UIApplication application){};
	/**
	 * - (void)applicationProtectedDataDidBecomeAvailable:(UIApplication *)application ;
	 */
	public void applicationProtectedDataDidBecomeAvailable(UIApplication application){};}
