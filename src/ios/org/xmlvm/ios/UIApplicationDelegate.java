package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSDictionary.class})
@org.xmlvm.XMLVMDelegate(protocolType = "UIApplicationDelegate")
public interface UIApplicationDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)applicationDidFinishLaunching:(UIApplication *)application;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationDidFinishLaunching", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationDidFinishLaunching(UIApplication application);

	/**
	 * - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDictionary", name = "didFinishLaunchingWithOptions")
	})
	public abstract boolean didFinishLaunchingWithOptions(UIApplication arg0, Map<String, Object> arg1);

	/**
	 * - (void)applicationDidBecomeActive:(UIApplication *)application;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationDidBecomeActive", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationDidBecomeActive(UIApplication application);

	/**
	 * - (void)applicationWillResignActive:(UIApplication *)application;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationWillResignActive", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationWillResignActive(UIApplication application);

	/**
	 * - (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURL", name = "handleOpenURL")
	})
	public abstract boolean handleOpenURL(UIApplication application, NSURL url);

	/**
	 * - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURL", name = "openURL"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "sourceApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "annotation")
	})
	public abstract boolean openURL(UIApplication application, NSURL url, String sourceApplication, Object annotation);

	/**
	 * - (void)applicationDidReceiveMemoryWarning:(UIApplication *)application;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationDidReceiveMemoryWarning", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationDidReceiveMemoryWarning(UIApplication application);

	/**
	 * - (void)applicationWillTerminate:(UIApplication *)application;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationWillTerminate", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationWillTerminate(UIApplication application);

	/**
	 * - (void)applicationSignificantTimeChange:(UIApplication *)application;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationSignificantTimeChange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationSignificantTimeChange(UIApplication application);

	/**
	 * - (void)application:(UIApplication *)application willChangeStatusBarOrientation:(UIInterfaceOrientation)newStatusBarOrientation duration:(NSTimeInterval)duration;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "willChangeStatusBarOrientation"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "double", isStruct = true, name = "duration")
	})
	public abstract void willChangeStatusBarOrientation(UIApplication application, int newStatusBarOrientation, double duration);

	/**
	 * - (void)application:(UIApplication *)application didChangeStatusBarOrientation:(UIInterfaceOrientation)oldStatusBarOrientation;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didChangeStatusBarOrientation")
	})
	public abstract void didChangeStatusBarOrientation(UIApplication application, int oldStatusBarOrientation);

	/**
	 * - (void)application:(UIApplication *)application willChangeStatusBarFrame:(CGRect)newStatusBarFrame;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CGRect", isStruct = true, name = "willChangeStatusBarFrame")
	})
	public abstract void willChangeStatusBarFrame(UIApplication application, CGRect newStatusBarFrame);

	/**
	 * - (void)application:(UIApplication *)application didChangeStatusBarFrame:(CGRect)oldStatusBarFrame;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CGRect", isStruct = true, name = "didChangeStatusBarFrame")
	})
	public abstract void didChangeStatusBarFrame(UIApplication application, CGRect oldStatusBarFrame);

	/**
	 * - (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSData", name = "didRegisterForRemoteNotificationsWithDeviceToken")
	})
	public abstract void didRegisterForRemoteNotificationsWithDeviceToken(UIApplication application, NSData deviceToken);

	/**
	 * - (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailToRegisterForRemoteNotificationsWithError")
	})
	public abstract void didFailToRegisterForRemoteNotificationsWithError(UIApplication application, NSError error);

	/**
	 * - (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDictionary", name = "didReceiveRemoteNotification")
	})
	public abstract void didReceiveRemoteNotification(UIApplication application, Map userInfo);

	/**
	 * - (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "application", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UILocalNotification", name = "didReceiveLocalNotification")
	})
	public abstract void didReceiveLocalNotification(UIApplication application, UILocalNotification notification);

	/**
	 * - (void)applicationDidEnterBackground:(UIApplication *)application ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationDidEnterBackground", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationDidEnterBackground(UIApplication application);

	/**
	 * - (void)applicationWillEnterForeground:(UIApplication *)application ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationWillEnterForeground", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationWillEnterForeground(UIApplication application);

	/**
	 * - (void)applicationProtectedDataWillBecomeUnavailable:(UIApplication *)application ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationProtectedDataWillBecomeUnavailable", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationProtectedDataWillBecomeUnavailable(UIApplication application);

	/**
	 * - (void)applicationProtectedDataDidBecomeAvailable:(UIApplication *)application ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "applicationProtectedDataDidBecomeAvailable", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIApplication")
	})
	public abstract void applicationProtectedDataDidBecomeAvailable(UIApplication application);
}
