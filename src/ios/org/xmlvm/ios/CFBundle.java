package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFBundle {

	/*
	 * Static methods
	 */

	/**
	 * CFBundleRef CFBundleGetMainBundle(void);
	 */
	public static CFBundle getMainBundle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFBundleRef CFBundleGetBundleWithIdentifier(CFStringRef bundleID);
	 */
	public static CFBundle getBundleWithIdentifier(String bundleID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleGetAllBundles(void);
	 */
	public static CFArray getAllBundles(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID CFBundleGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCreateBundlesFromDirectory(CFAllocatorRef allocator, CFURLRef directoryURL, CFStringRef bundleType);
	 */
	public static CFArray createBundlesFromDirectory(CFAllocator allocator, CFURL directoryURL, String bundleType){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFBundleCopyInfoDictionaryInDirectory(CFURLRef bundleURL);
	 */
	public static CFDictionary copyInfoDictionaryInDirectory(CFURL bundleURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBundleGetPackageInfoInDirectory(CFURLRef url, UInt32 *packageType, UInt32 *packageCreator);
	 */
	public static byte getPackageInfoInDirectory(CFURL url, int[] packageType, int[] packageCreator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopyResourceURLInDirectory(CFURLRef bundleURL, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName);
	 */
	public static CFURL copyResourceURLInDirectory(CFURL bundleURL, String resourceName, String resourceType, String subDirName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCopyResourceURLsOfTypeInDirectory(CFURLRef bundleURL, CFStringRef resourceType, CFStringRef subDirName);
	 */
	public static CFArray copyResourceURLsOfTypeInDirectory(CFURL bundleURL, String resourceType, String subDirName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCopyPreferredLocalizationsFromArray(CFArrayRef locArray);
	 */
	public static CFArray copyPreferredLocalizationsFromArray(CFArray locArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCopyLocalizationsForPreferences(CFArrayRef locArray, CFArrayRef prefArray) ;
	 */
	public static CFArray copyLocalizationsForPreferences(CFArray locArray, CFArray prefArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFBundleCopyInfoDictionaryForURL(CFURLRef url) ;
	 */
	public static CFDictionary copyInfoDictionaryForURL(CFURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCopyLocalizationsForURL(CFURLRef url) ;
	 */
	public static CFArray copyLocalizationsForURL(CFURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCopyExecutableArchitecturesForURL(CFURLRef url) ;
	 */
	public static CFArray copyExecutableArchitecturesForURL(CFURL url){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFBundleRef CFBundleCreate(CFAllocatorRef allocator, CFURLRef bundleURL);
	 */
	public CFBundle(CFAllocator allocator, CFURL bundleURL) {}

	/** Default constructor */
	CFBundle() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFURLRef CFBundleCopyBundleURL(CFBundleRef bundle);
	 */
	public CFURL copyBundleURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef CFBundleGetValueForInfoDictionaryKey(CFBundleRef bundle, CFStringRef key);
	 */
	public byte[] getValueForInfoDictionaryKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFBundleGetInfoDictionary(CFBundleRef bundle);
	 */
	public CFDictionary getInfoDictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFBundleGetLocalInfoDictionary(CFBundleRef bundle);
	 */
	public CFDictionary getLocalInfoDictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBundleGetPackageInfo(CFBundleRef bundle, UInt32 *packageType, UInt32 *packageCreator);
	 */
	public void getPackageInfo(int[] packageType, int[] packageCreator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFBundleGetIdentifier(CFBundleRef bundle);
	 */
	public String getIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * UInt32 CFBundleGetVersionNumber(CFBundleRef bundle);
	 */
	public int getVersionNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFBundleGetDevelopmentRegion(CFBundleRef bundle);
	 */
	public String getDevelopmentRegion(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopySupportFilesDirectoryURL(CFBundleRef bundle);
	 */
	public CFURL copySupportFilesDirectoryURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopyResourcesDirectoryURL(CFBundleRef bundle);
	 */
	public CFURL copyResourcesDirectoryURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopyPrivateFrameworksURL(CFBundleRef bundle);
	 */
	public CFURL copyPrivateFrameworksURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopySharedFrameworksURL(CFBundleRef bundle);
	 */
	public CFURL copySharedFrameworksURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopySharedSupportURL(CFBundleRef bundle);
	 */
	public CFURL copySharedSupportURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopyBuiltInPlugInsURL(CFBundleRef bundle);
	 */
	public CFURL copyBuiltInPlugInsURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopyResourceURL(CFBundleRef bundle, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName);
	 */
	public CFURL copyResourceURL(String resourceName, String resourceType, String subDirName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCopyResourceURLsOfType(CFBundleRef bundle, CFStringRef resourceType, CFStringRef subDirName);
	 */
	public CFArray copyResourceURLsOfType(String resourceType, String subDirName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFBundleCopyLocalizedString(CFBundleRef bundle, CFStringRef key, CFStringRef value, CFStringRef tableName) ;
	 */
	public String copyLocalizedString(String key, String value, String tableName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCopyBundleLocalizations(CFBundleRef bundle);
	 */
	public CFArray copyBundleLocalizations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopyResourceURLForLocalization(CFBundleRef bundle, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName, CFStringRef localizationName);
	 */
	public CFURL copyResourceURLForLocalization(String resourceName, String resourceType, String subDirName, String localizationName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCopyResourceURLsOfTypeForLocalization(CFBundleRef bundle, CFStringRef resourceType, CFStringRef subDirName, CFStringRef localizationName);
	 */
	public CFArray copyResourceURLsOfTypeForLocalization(String resourceType, String subDirName, String localizationName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopyExecutableURL(CFBundleRef bundle);
	 */
	public CFURL copyExecutableURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFBundleCopyExecutableArchitectures(CFBundleRef bundle) ;
	 */
	public CFArray copyExecutableArchitectures(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBundlePreflightExecutable(CFBundleRef bundle, CFErrorRef *error) ;
	 */
	public byte preflightExecutable(Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBundleLoadExecutableAndReturnError(CFBundleRef bundle, CFErrorRef *error) ;
	 */
	public byte loadExecutableAndReturnError(Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBundleLoadExecutable(CFBundleRef bundle);
	 */
	public byte loadExecutable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBundleIsExecutableLoaded(CFBundleRef bundle);
	 */
	public byte isExecutableLoaded(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBundleUnloadExecutable(CFBundleRef bundle);
	 */
	public void unloadExecutable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *CFBundleGetFunctionPointerForName(CFBundleRef bundle, CFStringRef functionName);
	 */
	public byte[] getFunctionPointerForName(String functionName){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBundleGetFunctionPointersForNames(CFBundleRef bundle, CFArrayRef functionNames, void *ftbl[]);
	 */
	public void getFunctionPointersForNames(CFArray functionNames, byte[][] ftbl){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *CFBundleGetDataPointerForName(CFBundleRef bundle, CFStringRef symbolName);
	 */
	public byte[] getDataPointerForName(String symbolName){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBundleGetDataPointersForNames(CFBundleRef bundle, CFArrayRef symbolNames, void *stbl[]);
	 */
	public void getDataPointersForNames(CFArray symbolNames, byte[][] stbl){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef CFBundleCopyAuxiliaryExecutableURL(CFBundleRef bundle, CFStringRef executableName);
	 */
	public CFURL copyAuxiliaryExecutableURL(String executableName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPlugInRef CFBundleGetPlugIn(CFBundleRef bundle);
	 */
	public CFBundle getPlugIn(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFBundleRefNum CFBundleOpenBundleResourceMap(CFBundleRef bundle);
	 */
	public short openBundleResourceMap(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFBundleOpenBundleResourceFiles(CFBundleRef bundle, CFBundleRefNum *refNum, CFBundleRefNum *localizedRefNum);
	 */
	public int openBundleResourceFiles(short[] refNum, short[] localizedRefNum){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBundleCloseBundleResourceMap(CFBundleRef bundle, CFBundleRefNum refNum);
	 */
	public void closeBundleResourceMap(short refNum){
		throw new RuntimeException("Stub");
	}
}
