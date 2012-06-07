package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMediaLibrary extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (MPMediaLibrary *)defaultMediaLibrary;
	 */
	public static MPMediaLibrary defaultMediaLibrary(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MPMediaLibrary() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSDate *lastModifiedDate;
	 */
	public NSDate getLastModifiedDate(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)beginGeneratingLibraryChangeNotifications;
	 */
	public void beginGeneratingLibraryChangeNotifications(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endGeneratingLibraryChangeNotifications;
	 */
	public void endGeneratingLibraryChangeNotifications(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
