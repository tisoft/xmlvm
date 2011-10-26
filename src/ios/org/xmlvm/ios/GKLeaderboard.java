package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKLeaderboard extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (void)loadCategoriesWithCompletionHandler:(void(^)(NSArray *categories, NSArray *titles, NSError *error))completionHandler;
	 */
	public static void loadCategoriesWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public GKLeaderboard() {}

	/**
	 * - (id)initWithPlayerIDs:(NSArray *)playerIDs;
	 */
	public GKLeaderboard(List playerIDs) {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) GKLeaderboardTimeScope timeScope;
	 */
	public int getTimeScope(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) GKLeaderboardTimeScope timeScope;
	 */
	public void setTimeScope(int timeScope){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) GKLeaderboardPlayerScope playerScope;
	 */
	public int getPlayerScope(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) GKLeaderboardPlayerScope playerScope;
	 */
	public void setPlayerScope(int playerScope){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSString *category;
	 */
	public String getCategory(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSString *category;
	 */
	public void setCategory(String category){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) NSString *title;
	 */
	public String getTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) NSRange range;
	 */
	public NSRange getRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) NSRange range;
	 */
	public void setRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) NSArray *scores;
	 */
	public List getScores(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, assign) NSUInteger maxRange;
	 */
	public int getMaxRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) GKScore *localPlayerScore;
	 */
	public GKScore getLocalPlayerScore(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, getter=isLoading) BOOL loading;
	 */
	public boolean isLoading(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)loadScoresWithCompletionHandler:(void(^)(NSArray *scores, NSError *error))completionHandler;
	 */
	public void loadScoresWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}
}
