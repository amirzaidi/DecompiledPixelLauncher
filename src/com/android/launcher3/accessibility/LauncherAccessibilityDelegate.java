// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import com.android.launcher3.AppWidgetResizeFrame;
import com.android.launcher3.CellLayout$LayoutParams;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.BubbleTextView;
import android.content.DialogInterface$OnClickListener;
import android.content.Context;
import android.app.AlertDialog$Builder;
import android.os.Handler;
import com.android.launcher3.UninstallDropTarget$DropTargetResultCallback;
import android.os.Bundle;
import com.android.launcher3.DropTarget$DragObject;
import android.text.TextUtils;
import com.android.launcher3.Workspace;
import android.util.Log;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.Folder;
import android.graphics.Rect;
import com.android.launcher3.CellLayout$CellInfo;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.AppInfo;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.InfoDropTarget;
import com.android.launcher3.UninstallDropTarget;
import com.android.launcher3.DeleteDropTarget;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.ItemInfo;
import android.view.accessibility.AccessibilityNodeInfo;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.CellLayout;
import com.android.launcher3.LauncherAppWidgetHostView;
import java.util.ArrayList;
import com.android.launcher3.LauncherAppWidgetInfo;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import com.android.launcher3.Launcher;
import android.util.SparseArray;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.view.View$AccessibilityDelegate;

public class LauncherAccessibilityDelegate extends View$AccessibilityDelegate implements DragController$DragListener
{
    protected final SparseArray mActions;
    private LauncherAccessibilityDelegate$DragInfo mDragInfo;
    final Launcher mLauncher;
    
    public LauncherAccessibilityDelegate(final Launcher mLauncher) {
        final int n = 2131623946;
        final int n2 = 2131623945;
        final int n3 = 2131623944;
        final int n4 = 2131623943;
        final int n5 = 2131623942;
        this.mActions = new SparseArray();
        this.mDragInfo = null;
        this.mLauncher = mLauncher;
        this.mActions.put(n5, (Object)new AccessibilityNodeInfo$AccessibilityAction(n5, mLauncher.getText(2131492917)));
        this.mActions.put(n3, (Object)new AccessibilityNodeInfo$AccessibilityAction(n3, mLauncher.getText(2131492919)));
        this.mActions.put(n4, (Object)new AccessibilityNodeInfo$AccessibilityAction(n4, mLauncher.getText(2131492918)));
        this.mActions.put(n2, (Object)new AccessibilityNodeInfo$AccessibilityAction(n2, mLauncher.getText(2131492965)));
        this.mActions.put(n, (Object)new AccessibilityNodeInfo$AccessibilityAction(n, mLauncher.getText(2131492969)));
        this.mActions.put(2131623947, (Object)new AccessibilityNodeInfo$AccessibilityAction(2131623947, mLauncher.getText(2131492979)));
        this.mActions.put(2131623950, (Object)new AccessibilityNodeInfo$AccessibilityAction(2131623950, mLauncher.getText(2131492983)));
        this.mActions.put(2131623951, (Object)new AccessibilityNodeInfo$AccessibilityAction(2131623951, mLauncher.getText(2131492989)));
    }
    
    private ArrayList getSupportedResizeActions(final View view, final LauncherAppWidgetInfo launcherAppWidgetInfo) {
        final int n = 1;
        final ArrayList<Integer> list = new ArrayList<Integer>();
        final AppWidgetProviderInfo appWidgetInfo = ((LauncherAppWidgetHostView)view).getAppWidgetInfo();
        if (appWidgetInfo == null) {
            return list;
        }
        final CellLayout cellLayout = (CellLayout)view.getParent().getParent();
        if ((appWidgetInfo.resizeMode & 0x1) != 0x0) {
            if (cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX + launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.cellY, n, launcherAppWidgetInfo.spanY) || cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX - 1, launcherAppWidgetInfo.cellY, n, launcherAppWidgetInfo.spanY)) {
                list.add(2131492984);
            }
            if (launcherAppWidgetInfo.spanX > launcherAppWidgetInfo.minSpanX && launcherAppWidgetInfo.spanX > n) {
                list.add(2131492986);
            }
        }
        if ((appWidgetInfo.resizeMode & 0x2) != 0x0) {
            if (cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX, launcherAppWidgetInfo.cellY + launcherAppWidgetInfo.spanY, launcherAppWidgetInfo.spanX, n) || cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX, launcherAppWidgetInfo.cellY - 1, launcherAppWidgetInfo.spanX, n)) {
                list.add(2131492985);
            }
            if (launcherAppWidgetInfo.spanY > launcherAppWidgetInfo.minSpanY && launcherAppWidgetInfo.spanY > n) {
                list.add(2131492987);
            }
        }
        return list;
    }
    
    public void addSupportedActions(final View view, final AccessibilityNodeInfo accessibilityNodeInfo, final boolean b) {
        if (!(view.getTag() instanceof ItemInfo)) {
            return;
        }
        final ItemInfo itemInfo = (ItemInfo)view.getTag();
        if (!b && DeepShortcutManager.supportsShortcuts(itemInfo)) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623951));
        }
        if (DeleteDropTarget.supportsAccessibleDrop(itemInfo)) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623942));
        }
        if (UninstallDropTarget.supportsDrop(view.getContext(), itemInfo)) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623943));
        }
        if (InfoDropTarget.supportsDrop(view.getContext(), itemInfo)) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623944));
        }
        if (!b && (itemInfo instanceof ShortcutInfo || itemInfo instanceof LauncherAppWidgetInfo || itemInfo instanceof FolderInfo)) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623946));
            if (((LauncherAppWidgetInfo)itemInfo).container >= 0L) {
                accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623947));
            }
            else if (itemInfo instanceof LauncherAppWidgetInfo && !this.getSupportedResizeActions(view, (LauncherAppWidgetInfo)itemInfo).isEmpty()) {
                accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623950));
            }
        }
        if (itemInfo instanceof AppInfo || itemInfo instanceof PendingAddItemInfo) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623945));
        }
    }
    
    void announceConfirmation(final int n) {
        this.announceConfirmation(this.mLauncher.getResources().getString(n));
    }
    
    void announceConfirmation(final String s) {
        this.mLauncher.getDragLayer().announceForAccessibility((CharSequence)s);
    }
    
    public void beginAccessibleDrag(final View item, final ItemInfo info) {
        final boolean isAccessibleDrag = true;
        Folder folder = null;
        this.mDragInfo = new LauncherAccessibilityDelegate$DragInfo();
        this.mDragInfo.info = info;
        this.mDragInfo.item = item;
        this.mDragInfo.dragType = LauncherAccessibilityDelegate$DragType.ICON;
        if (info instanceof FolderInfo) {
            this.mDragInfo.dragType = LauncherAccessibilityDelegate$DragType.FOLDER;
        }
        else if (info instanceof LauncherAppWidgetInfo) {
            this.mDragInfo.dragType = LauncherAccessibilityDelegate$DragType.WIDGET;
        }
        final CellLayout$CellInfo cellLayout$CellInfo = new CellLayout$CellInfo(item, info);
        final Rect rect = new Rect();
        this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(item, rect);
        this.mLauncher.getDragController().prepareAccessibleDrag(rect.centerX(), rect.centerY());
        final Folder open = Folder.getOpen(this.mLauncher);
        if (open != null && !open.getItemsInReadingOrder().contains(item)) {
            open.close(isAccessibleDrag);
        }
        else {
            folder = open;
        }
        this.mLauncher.getDragController().addDragListener(this);
        final DragOptions dragOptions = new DragOptions();
        dragOptions.isAccessibleDrag = isAccessibleDrag;
        if (folder != null) {
            folder.startDrag(cellLayout$CellInfo.cell, dragOptions);
        }
        else {
            this.mLauncher.getWorkspace().startDrag(cellLayout$CellInfo, dragOptions);
        }
    }
    
    protected long findSpaceOnWorkspace(final ItemInfo itemInfo, final int[] array) {
        final Workspace workspace = this.mLauncher.getWorkspace();
        final ArrayList screenOrder = workspace.getScreenOrder();
        final int currentPage = workspace.getCurrentPage();
        long n = screenOrder.get(currentPage);
        boolean b = ((CellLayout)workspace.getPageAt(currentPage)).findCellForSpan(array, itemInfo.spanX, itemInfo.spanY);
        int n2;
        if (workspace.hasCustomContent()) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        while (!b && n2 < screenOrder.size()) {
            n = screenOrder.get(n2);
            b = ((CellLayout)workspace.getPageAt(n2)).findCellForSpan(array, itemInfo.spanX, itemInfo.spanY);
            ++n2;
        }
        if (b) {
            return n;
        }
        workspace.addExtraEmptyScreen();
        final long commitExtraEmptyScreen = workspace.commitExtraEmptyScreen();
        if (!workspace.getScreenWithId(commitExtraEmptyScreen).findCellForSpan(array, itemInfo.spanX, itemInfo.spanY)) {
            Log.wtf("LauncherAccessibilityDelegate", "Not enough space on an empty screen");
        }
        return commitExtraEmptyScreen;
    }
    
    public LauncherAccessibilityDelegate$DragInfo getDragInfo() {
        return this.mDragInfo;
    }
    
    public void handleAccessibleDrop(final View view, final Rect rect, final String s) {
        final int n = 1;
        if (!this.isInAccessibleDrag()) {
            return;
        }
        final int[] array = new int[2];
        if (rect == null) {
            array[0] = view.getWidth() / 2;
            array[n] = view.getHeight() / 2;
        }
        else {
            array[0] = rect.centerX();
            array[n] = rect.centerY();
        }
        this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(view, array);
        this.mLauncher.getDragController().completeAccessibleDrag(array);
        if (!TextUtils.isEmpty((CharSequence)s)) {
            this.announceConfirmation(s);
        }
    }
    
    public boolean isInAccessibleDrag() {
        return this.mDragInfo != null;
    }
    
    public void onDragEnd() {
        this.mLauncher.getDragController().removeDragListener(this);
        this.mDragInfo = null;
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        this.addSupportedActions(view, accessibilityNodeInfo, false);
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return (view.getTag() instanceof ItemInfo && this.performAction(view, (ItemInfo)view.getTag(), n)) || super.performAccessibilityAction(view, n, bundle);
    }
    
    public boolean performAction(final View view, final ItemInfo itemInfo, final int n) {
        final int n2 = 2;
        int n3 = 0;
        final int n4 = 1;
        if (n == 2131623942) {
            DeleteDropTarget.removeWorkspaceOrFolderItem(this.mLauncher, itemInfo, view);
            return n4 != 0;
        }
        if (n == 2131623944) {
            InfoDropTarget.startDetailsActivityForInfo(itemInfo, this.mLauncher, null);
            return n4 != 0;
        }
        if (n == 2131623943) {
            return UninstallDropTarget.startUninstallActivity(this.mLauncher, itemInfo);
        }
        if (n == 2131623946) {
            this.beginAccessibleDrag(view, itemInfo);
        }
        else {
            if (n == 2131623945) {
                final int[] array = new int[n2];
                this.mLauncher.showWorkspace(n4 != 0, new LauncherAccessibilityDelegate$1(this, itemInfo, this.findSpaceOnWorkspace(itemInfo, array), array));
                return n4 != 0;
            }
            if (n == 2131623947) {
                final Folder open = Folder.getOpen(this.mLauncher);
                open.close(n4 != 0);
                final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                open.getInfo().remove(shortcutInfo, false);
                final int[] array2 = new int[n2];
                this.mLauncher.getModelWriter().moveItemInDatabase(shortcutInfo, -100, this.findSpaceOnWorkspace(itemInfo, array2), array2[0], array2[n4]);
                new Handler().post((Runnable)new LauncherAccessibilityDelegate$2(this, itemInfo));
            }
            else {
                if (n == 2131623950) {
                    final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo)itemInfo;
                    final ArrayList supportedResizeActions = this.getSupportedResizeActions(view, launcherAppWidgetInfo);
                    final CharSequence[] array3 = new CharSequence[supportedResizeActions.size()];
                    for (int i = 0; i < supportedResizeActions.size(); ++i) {
                        array3[i] = this.mLauncher.getText((int)supportedResizeActions.get(i));
                    }
                    new AlertDialog$Builder((Context)this.mLauncher).setTitle(2131492983).setItems(array3, (DialogInterface$OnClickListener)new LauncherAccessibilityDelegate$3(this, supportedResizeActions, view, launcherAppWidgetInfo)).show();
                    return n4 != 0;
                }
                if (n == 2131623951) {
                    if (PopupContainerWithArrow.showForIcon((BubbleTextView)view) != null) {
                        n3 = n4;
                    }
                    return n3 != 0;
                }
            }
        }
        return false;
    }
    
    void performResizeAction(final int n, final View view, final LauncherAppWidgetInfo launcherAppWidgetInfo) {
        final int n2 = 1;
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
        final CellLayout cellLayout = (CellLayout)view.getParent().getParent();
        cellLayout.markCellsAsUnoccupiedForView(view);
        if (n == 2131492984) {
            if ((view.getLayoutDirection() == n2 && cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX - 1, launcherAppWidgetInfo.cellY, n2, launcherAppWidgetInfo.spanY)) || (cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX + launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.cellY, n2, launcherAppWidgetInfo.spanY) ^ true)) {
                --cellLayout$LayoutParams.cellX;
                --launcherAppWidgetInfo.cellX;
            }
            ++cellLayout$LayoutParams.cellHSpan;
            ++launcherAppWidgetInfo.spanX;
        }
        else if (n == 2131492986) {
            --cellLayout$LayoutParams.cellHSpan;
            --launcherAppWidgetInfo.spanX;
        }
        else if (n == 2131492985) {
            if (!cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX, launcherAppWidgetInfo.cellY + launcherAppWidgetInfo.spanY, launcherAppWidgetInfo.spanX, n2)) {
                --cellLayout$LayoutParams.cellY;
                --launcherAppWidgetInfo.cellY;
            }
            ++cellLayout$LayoutParams.cellVSpan;
            ++launcherAppWidgetInfo.spanY;
        }
        else if (n == 2131492987) {
            --cellLayout$LayoutParams.cellVSpan;
            --launcherAppWidgetInfo.spanY;
        }
        cellLayout.markCellsAsOccupiedForView(view);
        final Rect rect = new Rect();
        AppWidgetResizeFrame.getWidgetSizeRanges((Context)this.mLauncher, launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.spanY, rect);
        ((LauncherAppWidgetHostView)view).updateAppWidgetSize((Bundle)null, rect.left, rect.top, rect.right, rect.bottom);
        view.requestLayout();
        this.mLauncher.getModelWriter().updateItemInDatabase(launcherAppWidgetInfo);
        final Launcher mLauncher = this.mLauncher;
        final Object[] array = { launcherAppWidgetInfo.spanX, null };
        array[n2] = launcherAppWidgetInfo.spanY;
        this.announceConfirmation(mLauncher.getString(2131492988, array));
    }
}
