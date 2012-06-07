package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMoviePlayerViewController extends UIViewController {

	/*
	 * Constructors
	 */
	public MPMoviePlayerViewController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/**
	 * - (id)initWithContentURL:(NSURL *)contentURL;
	 */
	public MPMoviePlayerViewController(NSURL contentURL) {}

	/** Default constructor */
	public MPMoviePlayerViewController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) MPMoviePlayerController *moviePlayer;
	 */
	public MPMoviePlayerController getMoviePlayer(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation;
	 */
	public boolean shouldAutorotateToInterfaceOrientation(int toInterfaceOrientation){
		throw new RuntimeException("Stub");
	}
}
