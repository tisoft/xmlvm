package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSString.class,Class.class})
public class NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSArray *)classFallbacksForKeyedArchiver;
	 */
	public static List classFallbacksForKeyedArchiver(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (Class)classForKeyedUnarchiver;
	 */
	public static Class classForKeyedUnarchiver(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)accessInstanceVariablesDirectly;
	 */
	public static boolean accessInstanceVariablesDirectly(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)useStoredAccessor ;
	 */
	public static boolean useStoredAccessor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key ;
	 */
	public static Set keyPathsForValuesAffectingValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key;
	 */
	public static boolean automaticallyNotifiesObserversForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setKeys:(NSArray *)keys triggerChangeNotificationsForDependentKey:(NSString *)dependentKey ;
	 */
	public static void setKeys(List keys, String dependentKey){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)load;
	 */
	public static void load(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)initialize;
	 */
	public static void initialize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)allocWithZone:(NSZone *)zone;
	 */
	public static Object allocWithZone(NSZone zone){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)alloc;
	 */
	public static Object alloc(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)copyWithZone:(NSZone *)zone;
	 */
	public static Object copyWithZone(NSZone zone){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)mutableCopyWithZone:(NSZone *)zone;
	 */
	public static Object mutableCopyWithZone(NSZone zone){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (Class)superclass;
	 */
	public static Class superclassStatic(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (Class)class;
	 */
	public static Class getClassStatic(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)instancesRespondToSelector:(SEL)aSelector;
	 */
	public static boolean instancesRespondToSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)conformsToProtocol:(Protocol *)protocol;
	 */
	public static boolean conformsToProtocolStatic(Protocol protocol){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (IMP)instanceMethodForSelector:(SEL)aSelector;
	 */
	public static IMP instanceMethodForSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSMethodSignature *)instanceMethodSignatureForSelector:(SEL)aSelector;
	 */
	public static NSMethodSignature instanceMethodSignatureForSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSString *)description;
	 */
	public static String descriptionStatic(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)isSubclassOfClass:(Class)aClass ;
	 */
	public static boolean isSubclassOfClass(Class aClass){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)resolveClassMethod:(SEL)sel ;
	 */
	public static boolean resolveClassMethod(SEL sel){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)resolveInstanceMethod:(SEL)sel ;
	 */
	public static boolean resolveInstanceMethod(SEL sel){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSInteger)version;
	 */
	public static int version(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setVersion:(NSInteger)aVersion;
	 */
	public static void setVersion(int aVersion){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)poseAsClass:(Class)aClass UNAVAILABLE_ATTRIBUTE ;
	 */
	public static void poseAsClass(Class aClass){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)cancelPreviousPerformRequestsWithTarget:(id)aTarget selector:(SEL)aSelector object:(id)anArgument;
	 */
	public static void cancelPreviousPerformRequestsWithTarget(Object aTarget, SEL aSelector, Object anArgument){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)cancelPreviousPerformRequestsWithTarget:(id)aTarget;
	 */
	public static void cancelPreviousPerformRequestsWithTarget(Object aTarget){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSObject() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) BOOL isAccessibilityElement;
	 */
	public boolean getIsAccessibilityElement(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL isAccessibilityElement;
	 */
	public void setIsAccessibilityElement(boolean isAccessibilityElement){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *accessibilityLabel;
	 */
	public String getAccessibilityLabel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *accessibilityLabel;
	 */
	public void setAccessibilityLabel(String accessibilityLabel){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *accessibilityHint;
	 */
	public String getAccessibilityHint(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *accessibilityHint;
	 */
	public void setAccessibilityHint(String accessibilityHint){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *accessibilityValue;
	 */
	public String getAccessibilityValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *accessibilityValue;
	 */
	public void setAccessibilityValue(String accessibilityValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIAccessibilityTraits accessibilityTraits;
	 */
	public long getAccessibilityTraits(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIAccessibilityTraits accessibilityTraits;
	 */
	public void setAccessibilityTraits(long accessibilityTraits){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGRect accessibilityFrame;
	 */
	public CGRect getAccessibilityFrame(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGRect accessibilityFrame;
	 */
	public void setAccessibilityFrame(CGRect accessibilityFrame){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSString *accessibilityLanguage;
	 */
	public String getAccessibilityLanguage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSString *accessibilityLanguage;
	 */
	public void setAccessibilityLanguage(String accessibilityLanguage){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)attemptRecoveryFromError:(NSError *)error optionIndex:(NSUInteger)recoveryOptionIndex delegate:(id)delegate didRecoverSelector:(SEL)didRecoverSelector contextInfo:(void *)contextInfo;
	 */
	public void attemptRecoveryFromError(NSError error, int recoveryOptionIndex, Object delegate, SEL didRecoverSelector, byte[] contextInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)attemptRecoveryFromError:(NSError *)error optionIndex:(NSUInteger)recoveryOptionIndex;
	 */
	public boolean attemptRecoveryFromError(NSError error, int recoveryOptionIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fm shouldProceedAfterError:(NSDictionary *)errorInfo ;
	 */
	public boolean fileManager(NSFileManager fm, Map errorInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)fileManager:(NSFileManager *)fm willProcessPath:(NSString *)path ;
	 */
	public void fileManagerWillProcessPath(NSFileManager fm, String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldCopyItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath;
	 */
	public boolean fileManagerShouldCopyItemAtPath(NSFileManager fileManager, String srcPath, String dstPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldCopyItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL ;
	 */
	public boolean fileManagerShouldCopyItemAtURL(NSFileManager fileManager, NSURL srcURL, NSURL dstURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldProceedAfterError:(NSError *)error copyingItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath;
	 */
	public boolean fileManagerCopyingItemAtPath(NSFileManager fileManager, NSError error, String srcPath, String dstPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldProceedAfterError:(NSError *)error copyingItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL ;
	 */
	public boolean fileManagerCopyingItemAtURL(NSFileManager fileManager, NSError error, NSURL srcURL, NSURL dstURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldMoveItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath;
	 */
	public boolean fileManagerShouldMoveItemAtPath(NSFileManager fileManager, String srcPath, String dstPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldMoveItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL ;
	 */
	public boolean fileManagerShouldMoveItemAtURL(NSFileManager fileManager, NSURL srcURL, NSURL dstURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldProceedAfterError:(NSError *)error movingItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath;
	 */
	public boolean fileManagerMovingItemAtPath(NSFileManager fileManager, NSError error, String srcPath, String dstPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldProceedAfterError:(NSError *)error movingItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL ;
	 */
	public boolean fileManagerMovingItemAtURL(NSFileManager fileManager, NSError error, NSURL srcURL, NSURL dstURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldLinkItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath;
	 */
	public boolean fileManagerShouldLinkItemAtPath(NSFileManager fileManager, String srcPath, String dstPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldLinkItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL ;
	 */
	public boolean fileManagerShouldLinkItemAtURL(NSFileManager fileManager, NSURL srcURL, NSURL dstURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldProceedAfterError:(NSError *)error linkingItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath;
	 */
	public boolean fileManagerLinkingItemAtPath(NSFileManager fileManager, NSError error, String srcPath, String dstPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldProceedAfterError:(NSError *)error linkingItemAtURL:(NSURL *)srcURL toURL:(NSURL *)dstURL ;
	 */
	public boolean fileManagerLinkingItemAtURL(NSFileManager fileManager, NSError error, NSURL srcURL, NSURL dstURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldRemoveItemAtPath:(NSString *)path;
	 */
	public boolean fileManagerShouldRemoveItemAtPath(NSFileManager fileManager, String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldRemoveItemAtURL:(NSURL *)URL ;
	 */
	public boolean fileManager(NSFileManager fileManager, NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldProceedAfterError:(NSError *)error removingItemAtPath:(NSString *)path;
	 */
	public boolean fileManager(NSFileManager fileManager, NSError error, String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileManager:(NSFileManager *)fileManager shouldProceedAfterError:(NSError *)error removingItemAtURL:(NSURL *)URL ;
	 */
	public boolean fileManager(NSFileManager fileManager, NSError error, NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (Class)classForKeyedArchiver;
	 */
	public Class classForKeyedArchiver(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)replacementObjectForKeyedArchiver:(NSKeyedArchiver *)archiver;
	 */
	public Object replacementObjectForKeyedArchiver(NSKeyedArchiver archiver){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)valueForKey:(NSString *)key;
	 */
	public Object valueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValue:(id)value forKey:(NSString *)key ;
	 */
	public void setValueForKey(Object value, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)validateValue:(id *)ioValue forKey:(NSString *)inKey error:(NSError **)outError ;
	 */
	public boolean validateValueForKey(Object[] ioValue, String inKey, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSMutableArray *)mutableArrayValueForKey:(NSString *)key ;
	 */
	public List mutableArrayValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSMutableSet *)mutableSetValueForKey:(NSString *)key ;
	 */
	public Set mutableSetValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)valueForKeyPath:(NSString *)keyPath;
	 */
	public Object valueForKeyPath(String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValue:(id)value forKeyPath:(NSString *)keyPath ;
	 */
	public void setValueForKeyPath(Object value, String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)validateValue:(id *)ioValue forKeyPath:(NSString *)inKeyPath error:(NSError **)outError ;
	 */
	public boolean validateValueForKeyPath(Object[] ioValue, String inKeyPath, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSMutableArray *)mutableArrayValueForKeyPath:(NSString *)keyPath ;
	 */
	public List mutableArrayValueForKeyPath(String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSMutableSet *)mutableSetValueForKeyPath:(NSString *)keyPath ;
	 */
	public Set mutableSetValueForKeyPath(String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)valueForUndefinedKey:(NSString *)key ;
	 */
	public Object valueForUndefinedKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValue:(id)value forUndefinedKey:(NSString *)key ;
	 */
	public void setValueForUndefinedKey(Object value, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNilValueForKey:(NSString *)key ;
	 */
	public void setNilValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)dictionaryWithValuesForKeys:(NSArray *)keys ;
	 */
	public Map dictionaryWithValuesForKeys(List keys){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues ;
	 */
	public void setValuesForKeysWithDictionary(Map keyedValues){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)storedValueForKey:(NSString *)key ;
	 */
	public Object storedValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)takeStoredValue:(id)value forKey:(NSString *)key ;
	 */
	public void takeStoredValue(Object value, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)takeValue:(id)value forKey:(NSString *)key ;
	 */
	public void takeValueForKey(Object value, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)takeValue:(id)value forKeyPath:(NSString *)keyPath ;
	 */
	public void takeValueForKeyPath(Object value, String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)handleQueryWithUnboundKey:(NSString *)key ;
	 */
	public Object handleQueryWithUnboundKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)handleTakeValue:(id)value forUnboundKey:(NSString *)key ;
	 */
	public void handleTakeValue(Object value, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)unableToSetNilForKey:(NSString *)key ;
	 */
	public void unableToSetNilForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)valuesForKeys:(NSArray *)keys ;
	 */
	public Map valuesForKeys(List keys){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)takeValuesFromDictionary:(NSDictionary *)properties ;
	 */
	public void takeValuesFromDictionary(Map properties){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;
	 */
	public void observeValueForKeyPath(String keyPath, Object object, Map change, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;
	 */
	public void addObserver(NSObject observer, String keyPath, int options, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath;
	 */
	public void removeObserver(NSObject observer, String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willChangeValueForKey:(NSString *)key;
	 */
	public void willChangeValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didChangeValueForKey:(NSString *)key;
	 */
	public void didChangeValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willChange:(NSKeyValueChange)changeKind valuesAtIndexes:(NSIndexSet *)indexes forKey:(NSString *)key;
	 */
	public void willChange(int changeKind, NSIndexSet indexes, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didChange:(NSKeyValueChange)changeKind valuesAtIndexes:(NSIndexSet *)indexes forKey:(NSString *)key;
	 */
	public void didChange(int changeKind, NSIndexSet indexes, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willChangeValueForKey:(NSString *)key withSetMutation:(NSKeyValueSetMutationKind)mutationKind usingObjects:(NSSet *)objects ;
	 */
	public void willChangeValueForKey(String key, int mutationKind, Set objects){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didChangeValueForKey:(NSString *)key withSetMutation:(NSKeyValueSetMutationKind)mutationKind usingObjects:(NSSet *)objects ;
	 */
	public void didChangeValueForKey(String key, int mutationKind, Set objects){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setObservationInfo:(void *)observationInfo;
	 */
	public void setObservationInfo(byte[] observationInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void *)observationInfo;
	 */
	public byte[] observationInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEqual:(id)object;
	 */
	public boolean isEqual(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)hash;
	 */
	public int hash(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (Class)superclass;
	 */
	public Class superclass(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (Class)class;
	 */
	public Class getClassInstance(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)self;
	 */
	public Object self(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSZone *)zone;
	 */
	public NSZone zone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)performSelector:(SEL)aSelector;
	 */
	public Object performSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)performSelector:(SEL)aSelector withObject:(id)object;
	 */
	public Object performSelector(SEL aSelector, Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)performSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2;
	 */
	public Object performSelector(SEL aSelector, Object object1, Object object2){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isProxy;
	 */
	public boolean isProxy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isKindOfClass:(Class)aClass;
	 */
	public boolean isKindOfClass(Class aClass){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isMemberOfClass:(Class)aClass;
	 */
	public boolean isMemberOfClass(Class aClass){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)conformsToProtocol:(Protocol *)aProtocol;
	 */
	public boolean conformsToProtocol(Protocol aProtocol){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)respondsToSelector:(SEL)aSelector;
	 */
	public boolean respondsToSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)retain;
	 */
	public Object retain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (oneway void)release;
	 */
	public void release(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)autorelease;
	 */
	public Object autorelease(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)retainCount;
	 */
	public int retainCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)description;
	 */
	public String description(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dealloc;
	 */
	public void dealloc(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)finalize ;
	 */
	public void finalize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)copy;
	 */
	public Object copy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)mutableCopy;
	 */
	public Object mutableCopy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (IMP)methodForSelector:(SEL)aSelector;
	 */
	public IMP methodForSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)doesNotRecognizeSelector:(SEL)aSelector;
	 */
	public void doesNotRecognizeSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)forwardingTargetForSelector:(SEL)aSelector;
	 */
	public Object forwardingTargetForSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)forwardInvocation:(NSInvocation *)anInvocation;
	 */
	public void forwardInvocation(NSInvocation anInvocation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector;
	 */
	public NSMethodSignature methodSignatureForSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (Class)classForCoder;
	 */
	public Class classForCoder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)replacementObjectForCoder:(NSCoder *)aCoder;
	 */
	public Object replacementObjectForCoder(NSCoder aCoder){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)awakeAfterUsingCoder:(NSCoder *)aDecoder;
	 */
	public Object awakeAfterUsingCoder(NSCoder aDecoder){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)autoContentAccessingProxy ;
	 */
	public Object autoContentAccessingProxy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay inModes:(NSArray *)modes;
	 */
	public void performSelector(SEL aSelector, Object anArgument, double delay, List modes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay;
	 */
	public void performSelector(SEL aSelector, Object anArgument, double delay){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array;
	 */
	public void performSelectorOnMainThread(SEL aSelector, Object arg, boolean wait, List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait;
	 */
	public void performSelectorOnMainThread(SEL aSelector, Object arg, boolean wait){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array;
	 */
	public void performSelector(SEL aSelector, NSThread thr, Object arg, boolean wait, List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait;
	 */
	public void performSelector(SEL aSelector, NSThread thr, Object arg, boolean wait){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)performSelectorInBackground:(SEL)aSelector withObject:(id)arg;
	 */
	public void performSelectorInBackground(SEL aSelector, Object arg){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)URL:(NSURL *)sender resourceDataDidBecomeAvailable:(NSData *)newBytes ;
	 */
	public void URL(NSURL sender, NSData newBytes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)URLResourceDidFinishLoading:(NSURL *)sender ;
	 */
	public void URLResourceDidFinishLoading(NSURL sender){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)URLResourceDidCancelLoading:(NSURL *)sender ;
	 */
	public void URLResourceDidCancelLoading(NSURL sender){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)URL:(NSURL *)sender resourceDidFailLoadingWithReason:(NSString *)reason ;
	 */
	public void URL(NSURL sender, String reason){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURLRequest *)connection:(NSURLConnection *)connection willSendRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)response;
	 */
	public NSURLRequest connection(NSURLConnection connection, NSURLRequest request, NSURLResponse response){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInputStream *)connection:(NSURLConnection *)connection needNewBodyStream:(NSURLRequest *)request ;
	 */
	public NSInputStream connection(NSURLConnection connection, NSURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)connection:(NSURLConnection *)connection canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)protectionSpace ;
	 */
	public boolean connection(NSURLConnection connection, NSURLProtectionSpace protectionSpace){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public void connectionDidReceiveAuthenticationChallenge(NSURLConnection connection, NSURLAuthenticationChallenge challenge){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)connection:(NSURLConnection *)connection didCancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
	 */
	public void connectionDidCancelAuthenticationChallenge(NSURLConnection connection, NSURLAuthenticationChallenge challenge){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)connectionShouldUseCredentialStorage:(NSURLConnection *)connection ;
	 */
	public boolean connectionShouldUseCredentialStorage(NSURLConnection connection){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response;
	 */
	public void connection(NSURLConnection connection, NSURLResponse response){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
	 */
	public void connection(NSURLConnection connection, NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)connection:(NSURLConnection *)connection didSendBodyData:(NSInteger)bytesWritten totalBytesWritten:(NSInteger)totalBytesWritten totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite ;
	 */
	public void connection(NSURLConnection connection, int bytesWritten, int totalBytesWritten, int totalBytesExpectedToWrite){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)connectionDidFinishLoading:(NSURLConnection *)connection;
	 */
	public void connectionDidFinishLoading(NSURLConnection connection){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error;
	 */
	public void connection(NSURLConnection connection, NSError error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSCachedURLResponse *)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse;
	 */
	public NSCachedURLResponse connection(NSURLConnection connection, NSCachedURLResponse cachedResponse){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)animationDidStart:(CAAnimation *)anim;
	 */
	public void animationDidStart(CAAnimation anim){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag;
	 */
	public void animationDidStop(CAAnimation anim, boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)displayLayer:(CALayer *)layer;
	 */
	public void displayLayer(CALayer layer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx;
	 */
	public void drawLayer(CALayer layer, CGContext ctx){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)layoutSublayersOfLayer:(CALayer *)layer;
	 */
	public void layoutSublayersOfLayer(CALayer layer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id<CAAction>)actionForLayer:(CALayer *)layer forKey:(NSString *)event;
	 */
	public org.xmlvm.ios.CAAction actionForLayer(CALayer layer, String event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)accessibilityElementCount;
	 */
	public int accessibilityElementCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)accessibilityElementAtIndex:(NSInteger)index;
	 */
	public Object accessibilityElementAtIndex(int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)indexOfAccessibilityElement:(id)element;
	 */
	public int indexOfAccessibilityElement(Object element){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)accessibilityElementDidBecomeFocused ;
	 */
	public void accessibilityElementDidBecomeFocused(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)accessibilityElementDidLoseFocus ;
	 */
	public void accessibilityElementDidLoseFocus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)accessibilityElementIsFocused ;
	 */
	public boolean accessibilityElementIsFocused(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)accessibilityIncrement ;
	 */
	public void accessibilityIncrement(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)accessibilityDecrement ;
	 */
	public void accessibilityDecrement(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)accessibilityScroll:(UIAccessibilityScrollDirection)direction ;
	 */
	public boolean accessibilityScroll(int direction){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)awakeFromNib;
	 */
	public void awakeFromNib(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cut:(id)sender ;
	 */
	public void cut(Object sender){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)copy:(id)sender ;
	 */
	public void copy(Object sender){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)paste:(id)sender ;
	 */
	public void paste(Object sender){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)select:(id)sender ;
	 */
	public void select(Object sender){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)selectAll:(id)sender ;
	 */
	public void selectAll(Object sender){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)delete:(id)sender ;
	 */
	public void delete(Object sender){
		throw new RuntimeException("Stub");
	}
}
