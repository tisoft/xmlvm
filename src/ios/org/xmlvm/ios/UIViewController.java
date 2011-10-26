package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIViewController extends UIResponder {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
	 */
	public UIViewController(String nibNameOrNil, NSBundle nibBundleOrNil) {}

	/** Default constructor */
	UIViewController() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly,retain) UINavigationItem *navigationItem;
	 */
	public UINavigationItem getNavigationItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL hidesBottomBarWhenPushed;
	 */
	public boolean getHidesBottomBarWhenPushed(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL hidesBottomBarWhenPushed;
	 */
	public void setHidesBottomBarWhenPushed(boolean hidesBottomBarWhenPushed){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UINavigationController *navigationController;
	 */
	public UINavigationController getNavigationController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSArray *toolbarItems ;
	 */
	public List getToolbarItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSArray *toolbarItems ;
	 */
	public void setToolbarItems(List toolbarItems){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readwrite) CGSize contentSizeForViewInPopover ;
	 */
	public CGSize getContentSizeForViewInPopover(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readwrite) CGSize contentSizeForViewInPopover ;
	 */
	public void setContentSizeForViewInPopover(CGSize contentSizeForViewInPopover){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readwrite,getter=isModalInPopover) BOOL modalInPopover ;
	 */
	public boolean isModalInPopover(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readwrite,getter=isModalInPopover) BOOL modalInPopover ;
	 */
	public void setModalInPopover(boolean modalInPopover){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UISplitViewController *splitViewController;
	 */
	public UISplitViewController getSplitViewController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UITabBarItem *tabBarItem;
	 */
	public UITabBarItem getTabBarItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UITabBarItem *tabBarItem;
	 */
	public void setTabBarItem(UITabBarItem tabBarItem){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UITabBarController *tabBarController;
	 */
	public UITabBarController getTabBarController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *view;
	 */
	public UIView getView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *view;
	 */
	public void setView(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, copy) NSString *nibName;
	 */
	public String getNibName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) NSBundle *nibBundle;
	 */
	public NSBundle getNibBundle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *title;
	 */
	public String getTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *title;
	 */
	public void setTitle(String title){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIViewController *modalViewController;
	 */
	public UIViewController getModalViewController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) UIModalTransitionStyle modalTransitionStyle ;
	 */
	public int getModalTransitionStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) UIModalTransitionStyle modalTransitionStyle ;
	 */
	public void setModalTransitionStyle(int modalTransitionStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) UIModalPresentationStyle modalPresentationStyle ;
	 */
	public int getModalPresentationStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) UIModalPresentationStyle modalPresentationStyle ;
	 */
	public void setModalPresentationStyle(int modalPresentationStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) BOOL wantsFullScreenLayout ;
	 */
	public boolean getWantsFullScreenLayout(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) BOOL wantsFullScreenLayout ;
	 */
	public void setWantsFullScreenLayout(boolean wantsFullScreenLayout){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIViewController *parentViewController;
	 */
	public UIViewController getParentViewController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIInterfaceOrientation interfaceOrientation;
	 */
	public int getInterfaceOrientation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEditing) BOOL editing;
	 */
	public boolean isEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEditing) BOOL editing;
	 */
	public void setEditing(boolean editing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) UISearchDisplayController *searchDisplayController;
	 */
	public UISearchDisplayController getSearchDisplayController(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)presentMoviePlayerViewControllerAnimated:(MPMoviePlayerViewController *)moviePlayerViewController;
	 */
	public void presentMoviePlayerViewControllerAnimated(MPMoviePlayerViewController moviePlayerViewController){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dismissMoviePlayerViewControllerAnimated;
	 */
	public void dismissMoviePlayerViewControllerAnimated(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setToolbarItems:(NSArray *)toolbarItems animated:(BOOL)animated ;
	 */
	public void setToolbarItems(List toolbarItems, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)loadView;
	 */
	public void loadView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)viewDidLoad;
	 */
	public void viewDidLoad(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)viewDidUnload ;
	 */
	public void viewDidUnload(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isViewLoaded ;
	 */
	public boolean isViewLoaded(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)viewWillAppear:(BOOL)animated;
	 */
	public void viewWillAppear(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)viewDidAppear:(BOOL)animated;
	 */
	public void viewDidAppear(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)viewWillDisappear:(BOOL)animated;
	 */
	public void viewWillDisappear(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)viewDidDisappear:(BOOL)animated;
	 */
	public void viewDidDisappear(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didReceiveMemoryWarning;
	 */
	public void didReceiveMemoryWarning(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)presentModalViewController:(UIViewController *)modalViewController animated:(BOOL)animated;
	 */
	public void presentModalViewController(UIViewController modalViewController, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dismissModalViewControllerAnimated:(BOOL)animated;
	 */
	public void dismissModalViewControllerAnimated(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)disablesAutomaticKeyboardDismissal ;
	 */
	public boolean disablesAutomaticKeyboardDismissal(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation;
	 */
	public boolean shouldAutorotateToInterfaceOrientation(int toInterfaceOrientation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIView *)rotatingHeaderView;
	 */
	public UIView rotatingHeaderView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIView *)rotatingFooterView;
	 */
	public UIView rotatingFooterView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration;
	 */
	public void willRotateToInterfaceOrientation(int toInterfaceOrientation, double duration){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation;
	 */
	public void didRotateFromInterfaceOrientation(int fromInterfaceOrientation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration ;
	 */
	public void willAnimateRotationToInterfaceOrientation(int toInterfaceOrientation, double duration){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration;
	 */
	public void willAnimateFirstHalfOfRotationToInterfaceOrientation(int toInterfaceOrientation, double duration){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation;
	 */
	public void didAnimateFirstHalfOfRotationToInterfaceOrientation(int toInterfaceOrientation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation duration:(NSTimeInterval)duration;
	 */
	public void willAnimateSecondHalfOfRotationFromInterfaceOrientation(int fromInterfaceOrientation, double duration){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setEditing:(BOOL)editing animated:(BOOL)animated;
	 */
	public void setEditing(boolean editing, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIBarButtonItem *)editButtonItem;
	 */
	public UIBarButtonItem editButtonItem(){
		throw new RuntimeException("Stub");
	}
}
