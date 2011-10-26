package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSCoder extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSCoder() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)encodeCMTime:(CMTime)time forKey:(NSString *)key ;
	 */
	public void encodeCMTime(CMTime time, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CMTime)decodeCMTimeForKey:(NSString *)key ;
	 */
	public CMTime decodeCMTimeForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeCMTimeRange:(CMTimeRange)timeRange forKey:(NSString *)key ;
	 */
	public void encodeCMTimeRange(CMTimeRange timeRange, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CMTimeRange)decodeCMTimeRangeForKey:(NSString *)key ;
	 */
	public CMTimeRange decodeCMTimeRangeForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeCMTimeMapping:(CMTimeMapping)timeMapping forKey:(NSString *)key ;
	 */
	public void encodeCMTimeMapping(CMTimeMapping timeMapping, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CMTimeMapping)decodeCMTimeMappingForKey:(NSString *)key ;
	 */
	public CMTimeMapping decodeCMTimeMappingForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeValueOfObjCType:(const char *)type at:(const void *)addr;
	 */
	public void encodeValueOfObjCType(byte[] type, byte[] addr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeDataObject:(NSData *)data;
	 */
	public void encodeDataObject(NSData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)decodeValueOfObjCType:(const char *)type at:(void *)data;
	 */
	public void decodeValueOfObjCType(byte[] type, byte[] data){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)decodeDataObject;
	 */
	public NSData decodeDataObject(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)versionForClassName:(NSString *)className;
	 */
	public int versionForClassName(String className){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeObject:(id)object;
	 */
	public void encodeObject(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeRootObject:(id)rootObject;
	 */
	public void encodeRootObject(Object rootObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeBycopyObject:(id)anObject;
	 */
	public void encodeBycopyObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeByrefObject:(id)anObject;
	 */
	public void encodeByrefObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeConditionalObject:(id)object;
	 */
	public void encodeConditionalObject(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeValuesOfObjCTypes:(const char *)types, ...;
	 */
	public void encodeValuesOfObjCTypes(byte[]... types){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeArrayOfObjCType:(const char *)type count:(NSUInteger)count at:(const void *)array;
	 */
	public void encodeArrayOfObjCType(byte[] type, int count, byte[] array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeBytes:(const void *)byteaddr length:(NSUInteger)length;
	 */
	public void encodeBytes(byte[] byteaddr, int length){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)decodeObject;
	 */
	public Object decodeObject(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)decodeValuesOfObjCTypes:(const char *)types, ...;
	 */
	public void decodeValuesOfObjCTypes(byte[]... types){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)decodeArrayOfObjCType:(const char *)itemType count:(NSUInteger)count at:(void *)array;
	 */
	public void decodeArrayOfObjCType(byte[] itemType, int count, byte[] array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void *)decodeBytesWithReturnedLength:(NSUInteger *)lengthp;
	 */
	public byte[] decodeBytesWithReturnedLength(int[] lengthp){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodePropertyList:(id)aPropertyList;
	 */
	public void encodePropertyList(Object aPropertyList){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)decodePropertyList;
	 */
	public Object decodePropertyList(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setObjectZone:(NSZone *)zone;
	 */
	public void setObjectZone(NSZone zone){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSZone *)objectZone;
	 */
	public NSZone objectZone(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (unsigned)systemVersion;
	 */
	public int systemVersion(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)allowsKeyedCoding;
	 */
	public boolean allowsKeyedCoding(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeObject:(id)objv forKey:(NSString *)key;
	 */
	public void encodeObject(Object objv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeConditionalObject:(id)objv forKey:(NSString *)key;
	 */
	public void encodeConditionalObject(Object objv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeBool:(BOOL)boolv forKey:(NSString *)key;
	 */
	public void encodeBool(boolean boolv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeInt:(int)intv forKey:(NSString *)key;
	 */
	public void encodeInt(int intv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeInt32:(int32_t)intv forKey:(NSString *)key;
	 */
	public void encodeInt32(int intv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeInt64:(int64_t)intv forKey:(NSString *)key;
	 */
	public void encodeInt64(long intv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeFloat:(float)realv forKey:(NSString *)key;
	 */
	public void encodeFloat(float realv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeDouble:(double)realv forKey:(NSString *)key;
	 */
	public void encodeDouble(double realv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeBytes:(const uint8_t *)bytesp length:(NSUInteger)lenv forKey:(NSString *)key;
	 */
	public void encodeBytes(byte[] bytesp, int lenv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)containsValueForKey:(NSString *)key;
	 */
	public boolean containsValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)decodeObjectForKey:(NSString *)key;
	 */
	public Object decodeObjectForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)decodeBoolForKey:(NSString *)key;
	 */
	public boolean decodeBoolForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int)decodeIntForKey:(NSString *)key;
	 */
	public int decodeIntForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int32_t)decodeInt32ForKey:(NSString *)key;
	 */
	public int decodeInt32ForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int64_t)decodeInt64ForKey:(NSString *)key;
	 */
	public long decodeInt64ForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (float)decodeFloatForKey:(NSString *)key;
	 */
	public float decodeFloatForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (double)decodeDoubleForKey:(NSString *)key;
	 */
	public double decodeDoubleForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (const uint8_t *)decodeBytesForKey:(NSString *)key returnedLength:(NSUInteger *)lengthp;
	 */
	public byte[] decodeBytesForKey(String key, int[] lengthp){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeInteger:(NSInteger)intv forKey:(NSString *)key;
	 */
	public void encodeInteger(int intv, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)decodeIntegerForKey:(NSString *)key;
	 */
	public int decodeIntegerForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeNXObject:(id)object ;
	 */
	public void encodeNXObject(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)decodeNXObject ;
	 */
	public Object decodeNXObject(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeCGPoint:(CGPoint)point forKey:(NSString *)key;
	 */
	public void encodeCGPoint(CGPoint point, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeCGSize:(CGSize)size forKey:(NSString *)key;
	 */
	public void encodeCGSize(CGSize size, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeCGRect:(CGRect)rect forKey:(NSString *)key;
	 */
	public void encodeCGRect(CGRect rect, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeCGAffineTransform:(CGAffineTransform)transform forKey:(NSString *)key;
	 */
	public void encodeCGAffineTransform(CGAffineTransform transform, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)encodeUIEdgeInsets:(UIEdgeInsets)insets forKey:(NSString *)key;
	 */
	public void encodeUIEdgeInsets(UIEdgeInsets insets, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)decodeCGPointForKey:(NSString *)key;
	 */
	public CGPoint decodeCGPointForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)decodeCGSizeForKey:(NSString *)key;
	 */
	public CGSize decodeCGSizeForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)decodeCGRectForKey:(NSString *)key;
	 */
	public CGRect decodeCGRectForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGAffineTransform)decodeCGAffineTransformForKey:(NSString *)key;
	 */
	public CGAffineTransform decodeCGAffineTransformForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIEdgeInsets)decodeUIEdgeInsetsForKey:(NSString *)key;
	 */
	public UIEdgeInsets decodeUIEdgeInsetsForKey(String key){
		throw new RuntimeException("Stub");
	}
}
