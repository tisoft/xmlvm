package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSUserDefaults extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSUserDefaults *)standardUserDefaults;
	 */
	public static NSUserDefaults standardUserDefaults(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)resetStandardUserDefaults;
	 */
	public static void resetStandardUserDefaults(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSUserDefaults() {}

	/**
	 * - (id)initWithUser:(NSString *)username;
	 */
	public NSUserDefaults(String username) {}

	/*
	 * Instance methods
	 */

	/**
	 * - (id)objectForKey:(NSString *)defaultName;
	 */
	public Object objectForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setObject:(id)value forKey:(NSString *)defaultName;
	 */
	public void setObject(Object value, String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObjectForKey:(NSString *)defaultName;
	 */
	public void removeObjectForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)stringForKey:(NSString *)defaultName;
	 */
	public String stringForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)arrayForKey:(NSString *)defaultName;
	 */
	public List arrayForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)dictionaryForKey:(NSString *)defaultName;
	 */
	public Map dictionaryForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)dataForKey:(NSString *)defaultName;
	 */
	public NSData dataForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)stringArrayForKey:(NSString *)defaultName;
	 */
	public List stringArrayForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)integerForKey:(NSString *)defaultName;
	 */
	public int integerForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (float)floatForKey:(NSString *)defaultName;
	 */
	public float floatForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (double)doubleForKey:(NSString *)defaultName;
	 */
	public double doubleForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)boolForKey:(NSString *)defaultName;
	 */
	public boolean boolForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLForKey:(NSString *)defaultName ;
	 */
	public NSURL URLForKey(String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setInteger:(NSInteger)value forKey:(NSString *)defaultName;
	 */
	public void setInteger(int value, String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFloat:(float)value forKey:(NSString *)defaultName;
	 */
	public void setFloat(float value, String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDouble:(double)value forKey:(NSString *)defaultName;
	 */
	public void setDouble(double value, String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setBool:(BOOL)value forKey:(NSString *)defaultName;
	 */
	public void setBool(boolean value, String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setURL:(NSURL *)url forKey:(NSString *)defaultName ;
	 */
	public void setURL(NSURL url, String defaultName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)registerDefaults:(NSDictionary *)registrationDictionary;
	 */
	public void registerDefaults(Map registrationDictionary){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addSuiteNamed:(NSString *)suiteName;
	 */
	public void addSuiteNamed(String suiteName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeSuiteNamed:(NSString *)suiteName;
	 */
	public void removeSuiteNamed(String suiteName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)dictionaryRepresentation;
	 */
	public Map dictionaryRepresentation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)volatileDomainNames;
	 */
	public List volatileDomainNames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)volatileDomainForName:(NSString *)domainName;
	 */
	public Map volatileDomainForName(String domainName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVolatileDomain:(NSDictionary *)domain forName:(NSString *)domainName;
	 */
	public void setVolatileDomain(Map domain, String domainName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeVolatileDomainForName:(NSString *)domainName;
	 */
	public void removeVolatileDomainForName(String domainName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)persistentDomainNames;
	 */
	public List persistentDomainNames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)persistentDomainForName:(NSString *)domainName;
	 */
	public Map persistentDomainForName(String domainName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPersistentDomain:(NSDictionary *)domain forName:(NSString *)domainName;
	 */
	public void setPersistentDomain(Map domain, String domainName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removePersistentDomainForName:(NSString *)domainName;
	 */
	public void removePersistentDomainForName(String domainName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)synchronize;
	 */
	public boolean synchronize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)objectIsForcedForKey:(NSString *)key;
	 */
	public boolean objectIsForcedForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)objectIsForcedForKey:(NSString *)key inDomain:(NSString *)domain;
	 */
	public boolean objectIsForcedForKey(String key, String domain){
		throw new RuntimeException("Stub");
	}
}
