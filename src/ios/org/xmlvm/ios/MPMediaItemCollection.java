package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMediaItemCollection extends MPMediaEntity {

	/*
	 * Static methods
	 */

	/**
	 * + (MPMediaItemCollection *)collectionWithItems:(NSArray *)items;
	 */
	public static MPMediaItemCollection collectionWithItems(List items){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithItems:(NSArray *)items;
	 */
	public MPMediaItemCollection(List items) {}

	/** Default constructor */
	public MPMediaItemCollection() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSArray *items;
	 */
	public List getItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MPMediaItem *representativeItem;
	 */
	public MPMediaItem getRepresentativeItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSUInteger count;
	 */
	public int getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) MPMediaType mediaTypes;
	 */
	public int getMediaTypes(){
		throw new RuntimeException("Stub");
	}
}
