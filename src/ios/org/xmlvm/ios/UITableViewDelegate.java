package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UITableViewDelegate")
public interface UITableViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableViewCell", name = "willDisplayCell"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "forRowAtIndexPath")
	})
	public abstract void willDisplayCell(UITableView tableView, UITableViewCell cell, NSIndexPath indexPath);

	/**
	 * - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "heightForRowAtIndexPath")
	})
	public abstract float heightForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "heightForHeaderInSection")
	})
	public abstract float heightForHeaderInSection(UITableView tableView, int section);

	/**
	 * - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "heightForFooterInSection")
	})
	public abstract float heightForFooterInSection(UITableView tableView, int section);

	/**
	 * - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "viewForHeaderInSection")
	})
	public abstract UIView viewForHeaderInSection(UITableView tableView, int section);

	/**
	 * - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "viewForFooterInSection")
	})
	public abstract UIView viewForFooterInSection(UITableView tableView, int section);

	/**
	 * - (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "accessoryTypeForRowWithIndexPath")
	})
	public abstract int accessoryTypeForRowWithIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "accessoryButtonTappedForRowWithIndexPath")
	})
	public abstract void accessoryButtonTappedForRowWithIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "willSelectRowAtIndexPath")
	})
	public abstract NSIndexPath willSelectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSIndexPath *)tableView:(UITableView *)tableView willDeselectRowAtIndexPath:(NSIndexPath *)indexPath ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "willDeselectRowAtIndexPath")
	})
	public abstract NSIndexPath willDeselectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "didSelectRowAtIndexPath")
	})
	public abstract void didSelectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "didDeselectRowAtIndexPath")
	})
	public abstract void didDeselectRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "editingStyleForRowAtIndexPath")
	})
	public abstract int editingStyleForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "titleForDeleteConfirmationButtonForRowAtIndexPath")
	})
	public abstract String titleForDeleteConfirmationButtonForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "shouldIndentWhileEditingRowAtIndexPath")
	})
	public abstract boolean shouldIndentWhileEditingRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView*)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "willBeginEditingRowAtIndexPath")
	})
	public abstract void willBeginEditingRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView*)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "didEndEditingRowAtIndexPath")
	})
	public abstract void didEndEditingRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "targetIndexPathForMoveFromRowAtIndexPath"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "toProposedIndexPath")
	})
	public abstract NSIndexPath targetIndexPathForMoveFromRowAtIndexPath(UITableView tableView, NSIndexPath sourceIndexPath, NSIndexPath proposedDestinationIndexPath);

	/**
	 * - (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "indentationLevelForRowAtIndexPath")
	})
	public abstract int indentationLevelForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/*
	 * Interface Properties
	 */
}
