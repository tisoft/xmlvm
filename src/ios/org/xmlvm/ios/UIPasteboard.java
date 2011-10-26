package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIPasteboard extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIPasteboard *)generalPasteboard;
	 */
	public static UIPasteboard generalPasteboard(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIPasteboard *)pasteboardWithName:(NSString *)pasteboardName create:(BOOL)create;
	 */
	public static UIPasteboard pasteboardWithName(String pasteboardName, boolean create){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIPasteboard *)pasteboardWithUniqueName;
	 */
	public static UIPasteboard pasteboardWithUniqueName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)removePasteboardWithName:(NSString *)pasteboardName;
	 */
	public static void removePasteboardWithName(String pasteboardName){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIPasteboard() {}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly,nonatomic) NSString *name;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isPersistent,nonatomic) BOOL persistent;
	 */
	public boolean isPersistent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isPersistent,nonatomic) BOOL persistent;
	 */
	public void setPersistent(boolean persistent){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly,nonatomic) NSInteger changeCount;
	 */
	public int getChangeCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly,nonatomic) NSInteger numberOfItems;
	 */
	public int getNumberOfItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *items;
	 */
	public List getItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *items;
	 */
	public void setItems(List items){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *string;
	 */
	public String getString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *string;
	 */
	public void setString(String string){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *strings;
	 */
	public List getStrings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *strings;
	 */
	public void setStrings(List strings){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSURL *URL;
	 */
	public NSURL getURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSURL *URL;
	 */
	public void setURL(NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *URLs;
	 */
	public List getURLs(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *URLs;
	 */
	public void setURLs(List URLs){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) UIImage *image;
	 */
	public UIImage getImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) UIImage *image;
	 */
	public void setImage(UIImage image){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *images;
	 */
	public List getImages(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *images;
	 */
	public void setImages(List images){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) UIColor *color;
	 */
	public UIColor getColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) UIColor *color;
	 */
	public void setColor(UIColor color){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *colors;
	 */
	public List getColors(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *colors;
	 */
	public void setColors(List colors){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSArray *)pasteboardTypes;
	 */
	public List pasteboardTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)containsPasteboardTypes:(NSArray *)pasteboardTypes;
	 */
	public boolean containsPasteboardTypes(List pasteboardTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)dataForPasteboardType:(NSString *)pasteboardType;
	 */
	public NSData dataForPasteboardType(String pasteboardType){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)valueForPasteboardType:(NSString *)pasteboardType;
	 */
	public Object valueForPasteboardType(String pasteboardType){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValue:(id)value forPasteboardType:(NSString *)pasteboardType;
	 */
	public void setValue(Object value, String pasteboardType){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setData:(NSData *)data forPasteboardType:(NSString *)pasteboardType;
	 */
	public void setData(NSData data, String pasteboardType){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)pasteboardTypesForItemSet:(NSIndexSet*)itemSet;
	 */
	public List pasteboardTypesForItemSet(NSIndexSet itemSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)containsPasteboardTypes:(NSArray *)pasteboardTypes inItemSet:(NSIndexSet *)itemSet;
	 */
	public boolean containsPasteboardTypes(List pasteboardTypes, NSIndexSet itemSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexSet *)itemSetWithPasteboardTypes:(NSArray *)pasteboardTypes;
	 */
	public NSIndexSet itemSetWithPasteboardTypes(List pasteboardTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)valuesForPasteboardType:(NSString *)pasteboardType inItemSet:(NSIndexSet *)itemSet;
	 */
	public List valuesForPasteboardType(String pasteboardType, NSIndexSet itemSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)dataForPasteboardType:(NSString *)pasteboardType inItemSet:(NSIndexSet *)itemSet;
	 */
	public List dataForPasteboardType(String pasteboardType, NSIndexSet itemSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addItems:(NSArray *)items;
	 */
	public void addItems(List items){
		throw new RuntimeException("Stub");
	}
}
