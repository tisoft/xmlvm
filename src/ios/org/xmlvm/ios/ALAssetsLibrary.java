package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ALAssetsLibrary extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public ALAssetsLibrary() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)enumerateGroupsWithTypes:(ALAssetsGroupType)types usingBlock:(ALAssetsLibraryGroupsEnumerationResultsBlock)enumerationBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock;
	 */
	public void enumerateGroupsWithTypes(int types, Object enumerationBlock, Object failureBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)assetForURL:(NSURL *)assetURL resultBlock:(ALAssetsLibraryAssetForURLResultBlock)resultBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock;
	 */
	public void assetForURL(NSURL assetURL, Object resultBlock, Object failureBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)writeImageToSavedPhotosAlbum:(CGImageRef)imageRef orientation:(ALAssetOrientation)orientation completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock;
	 */
	public void writeImageToSavedPhotosAlbum(CGImage imageRef, int orientation, Object completionBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)writeImageToSavedPhotosAlbum:(CGImageRef)imageRef metadata:(NSDictionary *)metadata completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock ;
	 */
	public void writeImageToSavedPhotosAlbum(CGImage imageRef, Map metadata, Object completionBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)writeImageDataToSavedPhotosAlbum:(NSData *)imageData metadata:(NSDictionary *)metadata completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock ;
	 */
	public void writeImageDataToSavedPhotosAlbum(NSData imageData, Map metadata, Object completionBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)writeVideoAtPathToSavedPhotosAlbum:(NSURL *)videoPathURL completionBlock:(ALAssetsLibraryWriteVideoCompletionBlock)completionBlock;
	 */
	public void writeVideoAtPathToSavedPhotosAlbum(NSURL videoPathURL, Object completionBlock){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)videoAtPathIsCompatibleWithSavedPhotosAlbum:(NSURL *)videoPathURL;
	 */
	public boolean videoAtPathIsCompatibleWithSavedPhotosAlbum(NSURL videoPathURL){
		throw new RuntimeException("Stub");
	}
}
