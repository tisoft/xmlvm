package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ABMultiValue extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * ABMutableMultiValueRef ABMultiValueCreateMutable(ABPropertyType type);
	 */
	public static ABMutableMultiValue createMutable(int type){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABMultiValueAddValueAndLabel(ABMutableMultiValueRef multiValue, CFTypeRef value, CFStringRef label, ABMultiValueIdentifier *outIdentifier);
	 */
	public static boolean addValueAndLabel(ABMutableMultiValue multiValue, byte[] value, String label, int[] outIdentifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABMultiValueInsertValueAndLabelAtIndex(ABMutableMultiValueRef multiValue, CFTypeRef value, CFStringRef label, CFIndex index, ABMultiValueIdentifier *outIdentifier);
	 */
	public static boolean insertValueAndLabelAtIndex(ABMutableMultiValue multiValue, byte[] value, String label, long index, int[] outIdentifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABMultiValueRemoveValueAndLabelAtIndex(ABMutableMultiValueRef multiValue, CFIndex index);
	 */
	public static boolean removeValueAndLabelAtIndex(ABMutableMultiValue multiValue, long index){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABMultiValueReplaceValueAtIndex(ABMutableMultiValueRef multiValue, CFTypeRef value, CFIndex index);
	 */
	public static boolean replaceValueAtIndex(ABMutableMultiValue multiValue, byte[] value, long index){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABMultiValueReplaceLabelAtIndex(ABMutableMultiValueRef multiValue, CFStringRef label, CFIndex index);
	 */
	public static boolean replaceLabelAtIndex(ABMutableMultiValue multiValue, String label, long index){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	ABMultiValue() {}

	/*
	 * Instance methods
	 */

	/**
	 * ABPropertyType ABMultiValueGetPropertyType(ABMultiValueRef multiValue);
	 */
	public int getPropertyType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex ABMultiValueGetCount(ABMultiValueRef multiValue);
	 */
	public long getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef ABMultiValueCopyValueAtIndex(ABMultiValueRef multiValue, CFIndex index);
	 */
	public byte[] copyValueAtIndex(long index){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABMultiValueCopyArrayOfAllValues(ABMultiValueRef multiValue);
	 */
	public CFArray copyArrayOfAllValues(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef ABMultiValueCopyLabelAtIndex(ABMultiValueRef multiValue, CFIndex index);
	 */
	public String copyLabelAtIndex(long index){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex ABMultiValueGetIndexForIdentifier(ABMultiValueRef multiValue, ABMultiValueIdentifier identifier);
	 */
	public long getIndexForIdentifier(int identifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABMultiValueIdentifier ABMultiValueGetIdentifierAtIndex(ABMultiValueRef multiValue, CFIndex index);
	 */
	public int getIdentifierAtIndex(long index){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex ABMultiValueGetFirstIndexOfValue(ABMultiValueRef multiValue, CFTypeRef value);
	 */
	public long getFirstIndexOfValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABMutableMultiValueRef ABMultiValueCreateMutableCopy(ABMultiValueRef multiValue);
	 */
	public ABMutableMultiValue createMutableCopy(){
		throw new RuntimeException("Stub");
	}
}
