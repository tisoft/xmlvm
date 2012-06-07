package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITableViewCell extends UIView {

	/*
	 * Constructors
	 */
	public UITableViewCell(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier ;
	 */
	public UITableViewCell(int style, String reuseIdentifier) {}

	/**
	 * - (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier ;
	 */
	public UITableViewCell(CGRect frame, String reuseIdentifier) {}

	/** Default constructor */
	public UITableViewCell() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly,retain) UIImageView *imageView ;
	 */
	public UIImageView getImageView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UILabel *textLabel ;
	 */
	public UILabel getTextLabel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UILabel *detailTextLabel ;
	 */
	public UILabel getDetailTextLabel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIView *contentView;
	 */
	public UIView getContentView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *backgroundView;
	 */
	public UIView getBackgroundView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *backgroundView;
	 */
	public void setBackgroundView(UIView backgroundView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *selectedBackgroundView;
	 */
	public UIView getSelectedBackgroundView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *selectedBackgroundView;
	 */
	public void setSelectedBackgroundView(UIView selectedBackgroundView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,copy) NSString *reuseIdentifier;
	 */
	public String getReuseIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITableViewCellSelectionStyle selectionStyle;
	 */
	public int getSelectionStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITableViewCellSelectionStyle selectionStyle;
	 */
	public void setSelectionStyle(int selectionStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isSelected) BOOL selected;
	 */
	public boolean isSelected(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isSelected) BOOL selected;
	 */
	public void setSelected(boolean selected){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHighlighted) BOOL highlighted;
	 */
	public boolean isHighlighted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHighlighted) BOOL highlighted;
	 */
	public void setHighlighted(boolean highlighted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UITableViewCellEditingStyle editingStyle;
	 */
	public int getEditingStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsReorderControl;
	 */
	public boolean getShowsReorderControl(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsReorderControl;
	 */
	public void setShowsReorderControl(boolean showsReorderControl){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL shouldIndentWhileEditing;
	 */
	public boolean getShouldIndentWhileEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL shouldIndentWhileEditing;
	 */
	public void setShouldIndentWhileEditing(boolean shouldIndentWhileEditing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITableViewCellAccessoryType accessoryType;
	 */
	public int getAccessoryType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITableViewCellAccessoryType accessoryType;
	 */
	public void setAccessoryType(int accessoryType){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *accessoryView;
	 */
	public UIView getAccessoryView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *accessoryView;
	 */
	public void setAccessoryView(UIView accessoryView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITableViewCellAccessoryType editingAccessoryType;
	 */
	public int getEditingAccessoryType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITableViewCellAccessoryType editingAccessoryType;
	 */
	public void setEditingAccessoryType(int editingAccessoryType){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *editingAccessoryView;
	 */
	public UIView getEditingAccessoryView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *editingAccessoryView;
	 */
	public void setEditingAccessoryView(UIView editingAccessoryView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger indentationLevel;
	 */
	public int getIndentationLevel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger indentationLevel;
	 */
	public void setIndentationLevel(int indentationLevel){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat indentationWidth;
	 */
	public float getIndentationWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat indentationWidth;
	 */
	public void setIndentationWidth(float indentationWidth){
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
	 * @property(nonatomic,readonly) BOOL showingDeleteConfirmation;
	 */
	public boolean getShowingDeleteConfirmation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *text ;
	 */
	public String getText(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *text ;
	 */
	public void setText(String text){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIFont *font ;
	 */
	public UIFont getFont(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIFont *font ;
	 */
	public void setFont(UIFont font){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextAlignment textAlignment ;
	 */
	public int getTextAlignment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextAlignment textAlignment ;
	 */
	public void setTextAlignment(int textAlignment){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UILineBreakMode lineBreakMode ;
	 */
	public int getLineBreakMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UILineBreakMode lineBreakMode ;
	 */
	public void setLineBreakMode(int lineBreakMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *textColor ;
	 */
	public UIColor getTextColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *textColor ;
	 */
	public void setTextColor(UIColor textColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *selectedTextColor ;
	 */
	public UIColor getSelectedTextColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *selectedTextColor ;
	 */
	public void setSelectedTextColor(UIColor selectedTextColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *image ;
	 */
	public UIImage getImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *image ;
	 */
	public void setImage(UIImage image){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *selectedImage ;
	 */
	public UIImage getSelectedImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *selectedImage ;
	 */
	public void setSelectedImage(UIImage selectedImage){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL hidesAccessoryWhenEditing ;
	 */
	public boolean getHidesAccessoryWhenEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL hidesAccessoryWhenEditing ;
	 */
	public void setHidesAccessoryWhenEditing(boolean hidesAccessoryWhenEditing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id target ;
	 */
	public Object getTarget(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id target ;
	 */
	public void setTarget(Object target){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) SEL editAction ;
	 */
	public SEL getEditAction(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) SEL editAction ;
	 */
	public void setEditAction(SEL editAction){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) SEL accessoryAction ;
	 */
	public SEL getAccessoryAction(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) SEL accessoryAction ;
	 */
	public void setAccessoryAction(SEL accessoryAction){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)prepareForReuse;
	 */
	public void prepareForReuse(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setSelected:(BOOL)selected animated:(BOOL)animated;
	 */
	public void setSelected(boolean selected, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
	 */
	public void setHighlighted(boolean highlighted, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setEditing:(BOOL)editing animated:(BOOL)animated;
	 */
	public void setEditing(boolean editing, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willTransitionToState:(UITableViewCellStateMask)state ;
	 */
	public void willTransitionToState(int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didTransitionToState:(UITableViewCellStateMask)state ;
	 */
	public void didTransitionToState(int state){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
