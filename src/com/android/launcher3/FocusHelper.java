// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.FocusLogic;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;

public class FocusHelper
{
    static ShortcutAndWidgetContainer getCellLayoutChildrenForIndex(final ViewGroup viewGroup, final int n) {
        return ((CellLayout)viewGroup.getChildAt(n)).getShortcutsAndWidgets();
    }
    
    private static View getFirstFocusableIconInReadingOrder(final CellLayout cellLayout, final boolean b) {
        final int countX = cellLayout.getCountX();
        for (int i = 0; i < cellLayout.getCountY(); ++i) {
            int n;
            if (b) {
                n = -1;
            }
            else {
                n = 1;
            }
            int n2;
            if (b) {
                n2 = countX - 1;
            }
            else {
                n2 = 0;
            }
            while (n2 >= 0 && n2 < countX) {
                final View child = cellLayout.getChildAt(n2, i);
                if (child != null && child.isFocusable()) {
                    return child;
                }
                n2 += n;
            }
        }
        return null;
    }
    
    private static View getFirstFocusableIconInReverseReadingOrder(final CellLayout cellLayout, final boolean b) {
        final int countX = cellLayout.getCountX();
        for (int i = cellLayout.getCountY() - 1; i >= 0; --i) {
            int n;
            if (b) {
                n = 1;
            }
            else {
                n = -1;
            }
            int n2;
            if (b) {
                n2 = 0;
            }
            else {
                n2 = countX - 1;
            }
            while (n2 >= 0 && n2 < countX) {
                final View child = cellLayout.getChildAt(n2, i);
                if (child != null && child.isFocusable()) {
                    return child;
                }
                n2 += n;
            }
        }
        return null;
    }
    
    static boolean handleHotseatButtonKeyEvent(final View view, int n, final KeyEvent keyEvent) {
        final boolean shouldConsume = FocusLogic.shouldConsume(n);
        if (keyEvent.getAction() == 1 || (shouldConsume ^ true)) {
            return shouldConsume;
        }
        final DeviceProfile deviceProfile = Launcher.getLauncher(view.getContext()).getDeviceProfile();
        final Workspace workspace = (Workspace)view.getRootView().findViewById(2131623973);
        final ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer)view.getParent();
        final CellLayout cellLayout = (CellLayout)shortcutAndWidgetContainer.getParent();
        final ItemInfo itemInfo = (ItemInfo)view.getTag();
        final int nextPage = workspace.getNextPage();
        final int childCount = workspace.getChildCount();
        final int indexOfChild = shortcutAndWidgetContainer.indexOfChild(view);
        final int cellX = ((CellLayout$LayoutParams)cellLayout.getShortcutsAndWidgets().getChildAt(indexOfChild).getLayoutParams()).cellX;
        final CellLayout cellLayout2 = (CellLayout)workspace.getChildAt(nextPage);
        if (cellLayout2 == null) {
            return shouldConsume;
        }
        final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout2.getShortcutsAndWidgets();
        int[][] array;
        int n2;
        ShortcutAndWidgetContainer shortcutAndWidgetContainer2;
        int n3;
        if (n == 19 && (deviceProfile.isVerticalBarLayout() ^ true)) {
            array = FocusLogic.createSparseMatrixWithHotseat(cellLayout2, cellLayout, deviceProfile);
            n2 = indexOfChild + shortcutsAndWidgets.getChildCount();
            shortcutAndWidgetContainer2 = shortcutsAndWidgets;
            n3 = n;
        }
        else if (n == 21 && deviceProfile.isVerticalBarLayout()) {
            array = FocusLogic.createSparseMatrixWithHotseat(cellLayout2, cellLayout, deviceProfile);
            n2 = indexOfChild + shortcutsAndWidgets.getChildCount();
            shortcutAndWidgetContainer2 = shortcutsAndWidgets;
            n3 = n;
        }
        else if (n == 22 && deviceProfile.isVerticalBarLayout()) {
            n = 93;
            array = null;
            shortcutAndWidgetContainer2 = null;
            n2 = indexOfChild;
            n3 = n;
        }
        else {
            array = FocusLogic.createSparseMatrix(cellLayout);
            shortcutAndWidgetContainer2 = shortcutAndWidgetContainer;
            n2 = indexOfChild;
            n3 = n;
        }
        int handleKeyEvent = FocusLogic.handleKeyEvent(n3, array, n2, nextPage, childCount, Utilities.isRtl(view.getResources()));
        View child = null;
        switch (handleKeyEvent) {
            default: {
                child = null;
                break;
            }
            case -8: {
                shortcutAndWidgetContainer2 = getCellLayoutChildrenForIndex(workspace, nextPage + 1);
                final View child2 = shortcutAndWidgetContainer2.getChildAt(0);
                workspace.snapToPage(nextPage + 1);
                child = child2;
                break;
            }
            case -3: {
                shortcutAndWidgetContainer2 = getCellLayoutChildrenForIndex(workspace, nextPage - 1);
                final View child3 = shortcutAndWidgetContainer2.getChildAt(0);
                workspace.snapToPage(nextPage - 1);
                child = child3;
                break;
            }
            case -4: {
                shortcutAndWidgetContainer2 = getCellLayoutChildrenForIndex(workspace, nextPage - 1);
                final View child4 = shortcutAndWidgetContainer2.getChildAt(shortcutAndWidgetContainer2.getChildCount() - 1);
                workspace.snapToPage(nextPage - 1);
                child = child4;
                break;
            }
            case -5:
            case -2: {
                workspace.snapToPage(nextPage - 1);
                if (((CellLayout$LayoutParams)((CellLayout)workspace.getPageAt(nextPage - 1)).getShortcutsAndWidgets().getChildAt(0).getLayoutParams()).isFullscreen) {
                    workspace.getPageAt(nextPage - 1).requestFocus();
                }
                child = null;
                break;
            }
            case -10:
            case -9: {
                workspace.snapToPage(nextPage + 1);
                if (((CellLayout$LayoutParams)((CellLayout)workspace.getPageAt(nextPage + 1)).getShortcutsAndWidgets().getChildAt(0).getLayoutParams()).isFullscreen) {
                    workspace.getPageAt(nextPage + 1).requestFocus();
                }
                child = null;
                break;
            }
        }
        if (shortcutAndWidgetContainer2 == shortcutsAndWidgets && handleKeyEvent >= shortcutsAndWidgets.getChildCount()) {
            handleKeyEvent -= shortcutsAndWidgets.getChildCount();
        }
        if (shortcutAndWidgetContainer2 != null) {
            if (child == null && handleKeyEvent >= 0) {
                child = shortcutAndWidgetContainer2.getChildAt(handleKeyEvent);
            }
            if (child != null) {
                child.requestFocus();
                playSoundEffect(n3, view);
            }
        }
        return shouldConsume;
    }
    
    static boolean handleIconKeyEvent(final View view, final int n, final KeyEvent keyEvent) {
        final boolean shouldConsume = FocusLogic.shouldConsume(n);
        if (keyEvent.getAction() == 1 || (shouldConsume ^ true)) {
            return shouldConsume;
        }
        final DeviceProfile deviceProfile = Launcher.getLauncher(view.getContext()).getDeviceProfile();
        final ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer)view.getParent();
        final CellLayout cellLayout = (CellLayout)shortcutAndWidgetContainer.getParent();
        final Workspace workspace = (Workspace)cellLayout.getParent();
        final ViewGroup viewGroup = (ViewGroup)workspace.getParent();
        Object o = viewGroup.findViewById(2131624014);
        final Hotseat hotseat = (Hotseat)viewGroup.findViewById(2131623974);
        final ItemInfo itemInfo = (ItemInfo)view.getTag();
        final int indexOfChild = shortcutAndWidgetContainer.indexOfChild(view);
        final int indexOfChild2 = workspace.indexOfChild((View)cellLayout);
        final int childCount = workspace.getChildCount();
        final CellLayout cellLayout2 = (CellLayout)hotseat.getChildAt(0);
        final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout2.getShortcutsAndWidgets();
        int[][] array;
        if (n == 20 && (deviceProfile.isVerticalBarLayout() ^ true)) {
            array = FocusLogic.createSparseMatrixWithHotseat(cellLayout, cellLayout2, deviceProfile);
        }
        else if (n == 22 && deviceProfile.isVerticalBarLayout()) {
            array = FocusLogic.createSparseMatrixWithHotseat(cellLayout, cellLayout2, deviceProfile);
        }
        else {
            array = FocusLogic.createSparseMatrix(cellLayout);
        }
        final int handleKeyEvent = FocusLogic.handleKeyEvent(n, array, indexOfChild, indexOfChild2, childCount, Utilities.isRtl(view.getResources()));
        final boolean rtl = Utilities.isRtl(view.getResources());
        View view2 = null;
        final CellLayout cellLayout3 = (CellLayout)workspace.getChildAt(indexOfChild2);
        Object o2 = null;
        switch (handleKeyEvent) {
            default: {
                if (handleKeyEvent >= 0 && handleKeyEvent < shortcutAndWidgetContainer.getChildCount()) {
                    view2 = shortcutAndWidgetContainer.getChildAt(handleKeyEvent);
                }
                else if (shortcutAndWidgetContainer.getChildCount() <= handleKeyEvent && handleKeyEvent < shortcutAndWidgetContainer.getChildCount() + shortcutsAndWidgets.getChildCount()) {
                    view2 = shortcutsAndWidgets.getChildAt(handleKeyEvent - shortcutAndWidgetContainer.getChildCount());
                }
                o2 = view2;
                break;
            }
            case -1: {
                if (n != 19) {
                    o = null;
                }
                o2 = o;
                break;
            }
            case -10:
            case -2: {
                int n2 = indexOfChild2 - 1;
                if (handleKeyEvent == -10) {
                    n2 = indexOfChild2 + 1;
                }
                final int cellY = ((CellLayout$LayoutParams)view.getLayoutParams()).cellY;
                final ShortcutAndWidgetContainer cellLayoutChildrenForIndex = getCellLayoutChildrenForIndex(workspace, n2);
                if (cellLayoutChildrenForIndex != null) {
                    final CellLayout cellLayout4 = (CellLayout)cellLayoutChildrenForIndex.getParent();
                    final int handleKeyEvent2 = FocusLogic.handleKeyEvent(n, FocusLogic.createSparseMatrixWithPivotColumn(cellLayout4, cellLayout4.getCountX(), cellY), 100, n2, childCount, Utilities.isRtl(view.getResources()));
                    if (handleKeyEvent2 == -8) {
                        view2 = handleNextPageFirstItem(workspace, cellLayout2, indexOfChild2, rtl);
                    }
                    else if (handleKeyEvent2 == -4) {
                        view2 = handlePreviousPageLastItem(workspace, cellLayout2, indexOfChild2, rtl);
                    }
                    else {
                        view2 = cellLayoutChildrenForIndex.getChildAt(handleKeyEvent2);
                    }
                }
                o2 = view2;
                break;
            }
            case -3: {
                o2 = getFirstFocusableIconInReadingOrder((CellLayout)workspace.getChildAt(indexOfChild2 - 1), rtl);
                if (o2 == null) {
                    o2 = getFirstFocusableIconInReadingOrder(cellLayout2, rtl);
                    workspace.snapToPage(indexOfChild2 - 1);
                    break;
                }
                break;
            }
            case -4: {
                o2 = handlePreviousPageLastItem(workspace, cellLayout2, indexOfChild2, rtl);
                break;
            }
            case -8: {
                o2 = handleNextPageFirstItem(workspace, cellLayout2, indexOfChild2, rtl);
                break;
            }
            case -9:
            case -5: {
                int n3 = indexOfChild2 + 1;
                if (handleKeyEvent == -5) {
                    n3 = indexOfChild2 - 1;
                }
                final int cellY2 = ((CellLayout$LayoutParams)view.getLayoutParams()).cellY;
                final ShortcutAndWidgetContainer cellLayoutChildrenForIndex2 = getCellLayoutChildrenForIndex(workspace, n3);
                if (cellLayoutChildrenForIndex2 != null) {
                    final int handleKeyEvent3 = FocusLogic.handleKeyEvent(n, FocusLogic.createSparseMatrixWithPivotColumn((CellLayout)cellLayoutChildrenForIndex2.getParent(), -1, cellY2), 100, n3, childCount, Utilities.isRtl(view.getResources()));
                    if (handleKeyEvent3 == -8) {
                        view2 = handleNextPageFirstItem(workspace, cellLayout2, indexOfChild2, rtl);
                    }
                    else if (handleKeyEvent3 == -4) {
                        view2 = handlePreviousPageLastItem(workspace, cellLayout2, indexOfChild2, rtl);
                    }
                    else {
                        view2 = cellLayoutChildrenForIndex2.getChildAt(handleKeyEvent3);
                    }
                }
                o2 = view2;
                break;
            }
            case -6: {
                o2 = getFirstFocusableIconInReadingOrder(cellLayout3, rtl);
                if (o2 == null) {
                    o2 = getFirstFocusableIconInReadingOrder(cellLayout2, rtl);
                    break;
                }
                break;
            }
            case -7: {
                o2 = getFirstFocusableIconInReverseReadingOrder(cellLayout3, rtl);
                if (o2 == null) {
                    o2 = getFirstFocusableIconInReverseReadingOrder(cellLayout2, rtl);
                    break;
                }
                break;
            }
        }
        if (o2 != null) {
            ((View)o2).requestFocus();
            playSoundEffect(n, view);
        }
        return shouldConsume;
    }
    
    private static View handleNextPageFirstItem(final Workspace workspace, final CellLayout cellLayout, final int n, final boolean b) {
        if (n + 1 >= workspace.getPageCount()) {
            return null;
        }
        View view = getFirstFocusableIconInReadingOrder((CellLayout)workspace.getChildAt(n + 1), b);
        if (view == null) {
            view = getFirstFocusableIconInReadingOrder(cellLayout, b);
            workspace.snapToPage(n + 1);
        }
        return view;
    }
    
    private static View handlePreviousPageLastItem(final Workspace workspace, final CellLayout cellLayout, final int n, final boolean b) {
        if (n - 1 < 0) {
            return null;
        }
        View view = getFirstFocusableIconInReverseReadingOrder((CellLayout)workspace.getChildAt(n - 1), b);
        if (view == null) {
            view = getFirstFocusableIconInReverseReadingOrder(cellLayout, b);
            workspace.snapToPage(n - 1);
        }
        return view;
    }
    
    static void playSoundEffect(final int n, final View view) {
        switch (n) {
            case 21: {
                view.playSoundEffect(1);
                break;
            }
            case 22: {
                view.playSoundEffect(3);
                break;
            }
            case 20:
            case 93:
            case 123: {
                view.playSoundEffect(4);
                break;
            }
            case 19:
            case 92:
            case 122: {
                view.playSoundEffect(2);
                break;
            }
        }
    }
}
