package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITableView extends UIScrollView {

	/*
	 * Constructors
	 */
	public UITableView(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style;
	 */
	public UITableView(CGRect frame, int style) {}

	/** Default constructor */
	public UITableView() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly) UITableViewStyle style;
	 */
	public int getStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id <UITableViewDataSource> dataSource;
	 */
	public UITableViewDataSource getDataSource(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id <UITableViewDataSource> dataSource;
	 */
	public void setDataSource(UITableViewDataSource arg0){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id <UITableViewDelegate> delegate;
	 */
	public UITableViewDelegate getTableDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id <UITableViewDelegate> delegate;
	 */
	public void setDelegate(UITableViewDelegate arg0){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat rowHeight;
	 */
	public float getRowHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat rowHeight;
	 */
	public void setRowHeight(float rowHeight){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat sectionHeaderHeight;
	 */
	public float getSectionHeaderHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat sectionHeaderHeight;
	 */
	public void setSectionHeaderHeight(float sectionHeaderHeight){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat sectionFooterHeight;
	 */
	public float getSectionFooterHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat sectionFooterHeight;
	 */
	public void setSectionFooterHeight(float sectionFooterHeight){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readwrite, retain) UIView *backgroundView ;
	 */
	public UIView getBackgroundView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readwrite, retain) UIView *backgroundView ;
	 */
	public void setBackgroundView(UIView backgroundView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEditing) BOOL editing;
	 */
	public boolean isEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEditing) BOOL editing;
	 */
	public void setEditing(boolean editing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsSelection ;
	 */
	public boolean getAllowsSelection(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsSelection ;
	 */
	public void setAllowsSelection(boolean allowsSelection){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsSelectionDuringEditing;
	 */
	public boolean getAllowsSelectionDuringEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsSelectionDuringEditing;
	 */
	public void setAllowsSelectionDuringEditing(boolean allowsSelectionDuringEditing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger sectionIndexMinimumDisplayRowCount;
	 */
	public int getSectionIndexMinimumDisplayRowCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger sectionIndexMinimumDisplayRowCount;
	 */
	public void setSectionIndexMinimumDisplayRowCount(int sectionIndexMinimumDisplayRowCount){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITableViewCellSeparatorStyle separatorStyle;
	 */
	public int getSeparatorStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITableViewCellSeparatorStyle separatorStyle;
	 */
	public void setSeparatorStyle(int separatorStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *separatorColor;
	 */
	public UIColor getSeparatorColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *separatorColor;
	 */
	public void setSeparatorColor(UIColor separatorColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *tableHeaderView;
	 */
	public UIView getTableHeaderView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *tableHeaderView;
	 */
	public void setTableHeaderView(UIView tableHeaderView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *tableFooterView;
	 */
	public UIView getTableFooterView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *tableFooterView;
	 */
	public void setTableFooterView(UIView tableFooterView){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)reloadData;
	 */
	public void reloadData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reloadSectionIndexTitles ;
	 */
	public void reloadSectionIndexTitles(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)numberOfSections;
	 */
	public int numberOfSections(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)numberOfRowsInSection:(NSInteger)section;
	 */
	public int numberOfRowsInSection(int section){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)rectForSection:(NSInteger)section;
	 */
	public CGRect rectForSection(int section){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)rectForHeaderInSection:(NSInteger)section;
	 */
	public CGRect rectForHeaderInSection(int section){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)rectForFooterInSection:(NSInteger)section;
	 */
	public CGRect rectForFooterInSection(int section){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)rectForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public CGRect rectForRowAtIndexPath(NSIndexPath indexPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexPath *)indexPathForRowAtPoint:(CGPoint)point;
	 */
	public NSIndexPath indexPathForRowAtPoint(CGPoint point){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexPath *)indexPathForCell:(UITableViewCell *)cell;
	 */
	public NSIndexPath indexPathForCell(UITableViewCell cell){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)indexPathsForRowsInRect:(CGRect)rect;
	 */
	public List<NSIndexPath> indexPathsForRowsInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UITableViewCell *)cellForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public UITableViewCell cellForRowAtIndexPath(NSIndexPath indexPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)visibleCells;
	 */
	public List visibleCells(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)indexPathsForVisibleRows;
	 */
	public List indexPathsForVisibleRows(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scrollToRowAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;
	 */
	public void scrollToRowAtIndexPath(NSIndexPath indexPath, int scrollPosition, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scrollToNearestSelectedRowAtScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;
	 */
	public void scrollToNearestSelectedRowAtScrollPosition(int scrollPosition, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)beginUpdates;
	 */
	public void beginUpdates(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endUpdates;
	 */
	public void endUpdates(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation;
	 */
	public void insertSections(NSIndexSet sections, int animation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)deleteSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation;
	 */
	public void deleteSections(NSIndexSet sections, int animation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reloadSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation ;
	 */
	public void reloadSections(NSIndexSet sections, int animation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
	 */
	public void insertRowsAtIndexPaths(List indexPaths, int animation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)deleteRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
	 */
	public void deleteRowsAtIndexPaths(List indexPaths, int animation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reloadRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation ;
	 */
	public void reloadRowsAtIndexPaths(List indexPaths, int animation){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setEditing:(BOOL)editing animated:(BOOL)animated;
	 */
	public void setEditing(boolean editing, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexPath *)indexPathForSelectedRow;
	 */
	public NSIndexPath indexPathForSelectedRow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)selectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UITableViewScrollPosition)scrollPosition;
	 */
	public void selectRowAtIndexPath(NSIndexPath indexPath, boolean animated, int scrollPosition){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)deselectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated;
	 */
	public void deselectRowAtIndexPath(NSIndexPath indexPath, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UITableViewCell *)dequeueReusableCellWithIdentifier:(NSString *)identifier;
	 */
	public UITableViewCell dequeueReusableCellWithIdentifier(String identifier){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
