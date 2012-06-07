package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIPrintInfo extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIPrintInfo *)printInfo;
	 */
	public static UIPrintInfo printInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIPrintInfo *)printInfoWithDictionary:(NSDictionary *)dictionary;
	 */
	public static UIPrintInfo printInfoWithDictionary(Map dictionary){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UIPrintInfo() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,copy) NSString *printerID;
	 */
	public String getPrinterID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *printerID;
	 */
	public void setPrinterID(String printerID){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *jobName;
	 */
	public String getJobName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *jobName;
	 */
	public void setJobName(String jobName){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIPrintInfoOutputType outputType;
	 */
	public int getOutputType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIPrintInfoOutputType outputType;
	 */
	public void setOutputType(int outputType){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIPrintInfoOrientation orientation;
	 */
	public int getOrientation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIPrintInfoOrientation orientation;
	 */
	public void setOrientation(int orientation){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIPrintInfoDuplex duplex;
	 */
	public int getDuplex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIPrintInfoDuplex duplex;
	 */
	public void setDuplex(int duplex){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSDictionary *)dictionaryRepresentation;
	 */
	public Map dictionaryRepresentation(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
