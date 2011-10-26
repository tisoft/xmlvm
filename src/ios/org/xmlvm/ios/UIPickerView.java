package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIPickerView extends UIView {

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIPickerView() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<UIPickerViewDataSource> dataSource;
	 */
	public UIPickerViewDataSource getDataSource(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIPickerViewDataSource> dataSource;
	 */
	public void setDataSource(UIPickerViewDataSource dataSource){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIPickerViewDelegate> delegate;
	 */
	public UIPickerViewDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIPickerViewDelegate> delegate;
	 */
	public void setDelegate(UIPickerViewDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsSelectionIndicator;
	 */
	public boolean getShowsSelectionIndicator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsSelectionIndicator;
	 */
	public void setShowsSelectionIndicator(boolean showsSelectionIndicator){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSInteger numberOfComponents;
	 */
	public int getNumberOfComponents(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)numberOfRowsInComponent:(NSInteger)component;
	 */
	public int numberOfRowsInComponent(int component){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGSize)rowSizeForComponent:(NSInteger)component;
	 */
	public CGSize rowSizeForComponent(int component){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIView *)viewForRow:(NSInteger)row forComponent:(NSInteger)component;
	 */
	public UIView viewForRow(int row, int component){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reloadAllComponents;
	 */
	public void reloadAllComponents(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reloadComponent:(NSInteger)component;
	 */
	public void reloadComponent(int component){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)selectRow:(NSInteger)row inComponent:(NSInteger)component animated:(BOOL)animated;
	 */
	public void selectRow(int row, int component, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)selectedRowInComponent:(NSInteger)component;
	 */
	public int selectedRowInComponent(int component){
		throw new RuntimeException("Stub");
	}
}
