package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UITableViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract void willDisplayCell(UITableView tableView, UITableViewCell cell, NSIndexPath indexPath);

	/**
	 * - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract float heightForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
	 */
	public abstract float heightForHeaderInSection(UITableView tableView, int section);

	/**
	 * - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section;
	 */
	public abstract float heightForFooterInSection(UITableView tableView, int section);

	/**
	 * - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;
	 */
	public abstract UIView viewForHeaderInSection(UITableView tableView, int section);

	/**
	 * - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section;
	 */
	public abstract UIView viewForFooterInSection(UITableView tableView, int section);

	/**
	 * - (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath ;
	 */
	public abstract int accessoryTypeForRowWithIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract void accessoryButtonTappedForRowWithIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract NSIndexPath willSelectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSIndexPath *)tableView:(UITableView *)tableView willDeselectRowAtIndexPath:(NSIndexPath *)indexPath ;
	 */
	public abstract NSIndexPath willDeselectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract void didSelectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath ;
	 */
	public abstract void didDeselectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract int editingStyleForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath ;
	 */
	public abstract String titleForDeleteConfirmationButtonForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract boolean shouldIndentWhileEditingRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView*)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract void willBeginEditingRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView*)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract void didEndEditingRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath;
	 */
	public abstract NSIndexPath targetIndexPathForMoveFromRowAtIndexPath(UITableView tableView, NSIndexPath sourceIndexPath, NSIndexPath proposedDestinationIndexPath);

	/**
	 * - (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract int indentationLevelForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);
}
