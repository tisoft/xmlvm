package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMediaQuery extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (MPMediaQuery *)albumsQuery;
	 */
	public static MPMediaQuery albumsQuery(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMediaQuery *)artistsQuery;
	 */
	public static MPMediaQuery artistsQuery(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMediaQuery *)songsQuery;
	 */
	public static MPMediaQuery songsQuery(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMediaQuery *)playlistsQuery;
	 */
	public static MPMediaQuery playlistsQuery(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMediaQuery *)podcastsQuery;
	 */
	public static MPMediaQuery podcastsQuery(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMediaQuery *)audiobooksQuery;
	 */
	public static MPMediaQuery audiobooksQuery(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMediaQuery *)compilationsQuery;
	 */
	public static MPMediaQuery compilationsQuery(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMediaQuery *)composersQuery;
	 */
	public static MPMediaQuery composersQuery(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (MPMediaQuery *)genresQuery;
	 */
	public static MPMediaQuery genresQuery(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public MPMediaQuery() {}

	/**
	 * - (id)initWithFilterPredicates:(NSSet *)filterPredicates;
	 */
	public MPMediaQuery(Set filterPredicates) {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, retain) NSSet *filterPredicates;
	 */
	public Set getFilterPredicates(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSSet *filterPredicates;
	 */
	public void setFilterPredicates(Set filterPredicates){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *items;
	 */
	public List getItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *collections;
	 */
	public List getCollections(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMediaGrouping groupingType;
	 */
	public int getGroupingType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MPMediaGrouping groupingType;
	 */
	public void setGroupingType(int groupingType){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *itemSections ;
	 */
	public List getItemSections(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *collectionSections ;
	 */
	public List getCollectionSections(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)addFilterPredicate:(MPMediaPredicate *)predicate;
	 */
	public void addFilterPredicate(MPMediaPredicate predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeFilterPredicate:(MPMediaPredicate *)predicate;
	 */
	public void removeFilterPredicate(MPMediaPredicate predicate){
		throw new RuntimeException("Stub");
	}
}
