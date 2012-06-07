package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UITableViewDelegate implements org.xmlvm.ios.UITableViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public void willDisplayCell(UITableView tableView, UITableViewCell cell, NSIndexPath indexPath){};
	/**
	 * - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public float heightForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){
		return tableView.getRowHeight();
	}
	/**
	 * - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
	 */
	public float heightForHeaderInSection(UITableView tableView, int section){
		return tableView.getStyle()==0? 10:22;
	}
	/**
	 * - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section;
	 */
	public float heightForFooterInSection(UITableView tableView, int section){
		return 0;
	}
	/**
	 * - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;
	 */
	public UIView viewForHeaderInSection(UITableView tableView, int section){
		return null;
	}
	/**
	 * - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section;
	 */
	public UIView viewForFooterInSection(UITableView tableView, int section){
		return null;
	}
	/**
	 * - (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath ;
	 */
	public int accessoryTypeForRowWithIndexPath(UITableView tableView, NSIndexPath indexPath){
		return 0;
	}
	/**
	 * - (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath;
	 */
	public void accessoryButtonTappedForRowWithIndexPath(UITableView tableView, NSIndexPath indexPath){};
	/**
	 * - (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public NSIndexPath willSelectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){
		return indexPath;
	}
	/**
	 * - (NSIndexPath *)tableView:(UITableView *)tableView willDeselectRowAtIndexPath:(NSIndexPath *)indexPath ;
	 */
	public NSIndexPath willDeselectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){
		return null;
	}
	/**
	 * - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public void didSelectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){};
	/**
	 * - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath ;
	 */
	public void didDeselectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){};
	/**
	 * - (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public int editingStyleForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){
		return 0;
	}
	/**
	 * - (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath ;
	 */
	public String titleForDeleteConfirmationButtonForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){
		return null;
	}
	/**
	 * - (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public boolean shouldIndentWhileEditingRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){
		return true;
	}
	/**
	 * - (void)tableView:(UITableView*)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public void willBeginEditingRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){};
	/**
	 * - (void)tableView:(UITableView*)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public void didEndEditingRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){};
	/**
	 * - (NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath;
	 */
	public NSIndexPath targetIndexPathForMoveFromRowAtIndexPath(UITableView tableView, NSIndexPath sourceIndexPath, NSIndexPath proposedDestinationIndexPath){
		return null;
	}
	/**
	 * - (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public int indentationLevelForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){
		return 0;
	}
	/*
	 * Interface Properties
	 */
}
