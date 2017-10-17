// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.ViewGroup;
import com.android.launcher3.folder.FolderPagedView;
import com.android.launcher3.util.FocusLogic;
import android.view.KeyEvent;
import android.view.View;
import com.android.launcher3.folder.Folder;
import android.view.View$OnKeyListener;

public class FocusHelper$PagedFolderKeyEventListener implements View$OnKeyListener
{
    private final Folder mFolder;
    
    public FocusHelper$PagedFolderKeyEventListener(final Folder mFolder) {
        this.mFolder = mFolder;
    }
    
    public void handleNoopKey(final int n, final View view) {
        if (n == 20) {
            this.mFolder.mFolderName.requestFocus();
            FocusHelper.playSoundEffect(n, view);
        }
    }
    
    public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
        final boolean shouldConsume = FocusLogic.shouldConsume(n);
        if (keyEvent.getAction() == 1) {
            return shouldConsume;
        }
        if (!(view.getParent() instanceof ShortcutAndWidgetContainer)) {
            return false;
        }
        final ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer)view.getParent();
        final CellLayout cellLayout = (CellLayout)shortcutAndWidgetContainer.getParent();
        final int indexOfChild = shortcutAndWidgetContainer.indexOfChild(view);
        final FolderPagedView folderPagedView = (FolderPagedView)cellLayout.getParent();
        final int indexOfChild2 = folderPagedView.indexOfChild((View)cellLayout);
        final int pageCount = folderPagedView.getPageCount();
        final boolean rtl = Utilities.isRtl(view.getResources());
        final int[][] sparseMatrix = FocusLogic.createSparseMatrix(cellLayout);
        final int handleKeyEvent = FocusLogic.handleKeyEvent(n, sparseMatrix, indexOfChild, indexOfChild2, pageCount, rtl);
        if (handleKeyEvent == -1) {
            this.handleNoopKey(n, view);
            return shouldConsume;
        }
        View view2 = null;
        switch (handleKeyEvent) {
            default: {
                view2 = shortcutAndWidgetContainer.getChildAt(handleKeyEvent);
                break;
            }
            case -5:
            case -2: {
                final ShortcutAndWidgetContainer cellLayoutChildrenForIndex = FocusHelper.getCellLayoutChildrenForIndex(folderPagedView, indexOfChild2 - 1);
                if (cellLayoutChildrenForIndex != null) {
                    final int cellY = ((CellLayout$LayoutParams)view.getLayoutParams()).cellY;
                    folderPagedView.snapToPage(indexOfChild2 - 1);
                    int n2;
                    if ((handleKeyEvent == -5 && true) ^ cellLayoutChildrenForIndex.invertLayoutHorizontally()) {
                        n2 = 0;
                    }
                    else {
                        n2 = sparseMatrix.length - 1;
                    }
                    view2 = cellLayoutChildrenForIndex.getChildAt(n2, cellY);
                    break;
                }
                break;
            }
            case -3: {
                final ShortcutAndWidgetContainer cellLayoutChildrenForIndex2 = FocusHelper.getCellLayoutChildrenForIndex(folderPagedView, indexOfChild2 - 1);
                if (cellLayoutChildrenForIndex2 != null) {
                    folderPagedView.snapToPage(indexOfChild2 - 1);
                    view2 = cellLayoutChildrenForIndex2.getChildAt(0, 0);
                    break;
                }
                break;
            }
            case -4: {
                final ShortcutAndWidgetContainer cellLayoutChildrenForIndex3 = FocusHelper.getCellLayoutChildrenForIndex(folderPagedView, indexOfChild2 - 1);
                if (cellLayoutChildrenForIndex3 != null) {
                    folderPagedView.snapToPage(indexOfChild2 - 1);
                    view2 = cellLayoutChildrenForIndex3.getChildAt(sparseMatrix.length - 1, sparseMatrix[0].length - 1);
                    break;
                }
                break;
            }
            case -8: {
                final ShortcutAndWidgetContainer cellLayoutChildrenForIndex4 = FocusHelper.getCellLayoutChildrenForIndex(folderPagedView, indexOfChild2 + 1);
                if (cellLayoutChildrenForIndex4 != null) {
                    folderPagedView.snapToPage(indexOfChild2 + 1);
                    view2 = cellLayoutChildrenForIndex4.getChildAt(0, 0);
                    break;
                }
                break;
            }
            case -10:
            case -9: {
                final ShortcutAndWidgetContainer cellLayoutChildrenForIndex5 = FocusHelper.getCellLayoutChildrenForIndex(folderPagedView, indexOfChild2 + 1);
                if (cellLayoutChildrenForIndex5 != null) {
                    folderPagedView.snapToPage(indexOfChild2 + 1);
                    view2 = FocusLogic.getAdjacentChildInNextFolderPage(cellLayoutChildrenForIndex5, view, handleKeyEvent);
                    break;
                }
                break;
            }
            case -6: {
                view2 = cellLayout.getChildAt(0, 0);
                break;
            }
            case -7: {
                view2 = folderPagedView.getLastItem();
                break;
            }
        }
        if (view2 != null) {
            view2.requestFocus();
            FocusHelper.playSoundEffect(n, view);
        }
        else {
            this.handleNoopKey(n, view);
        }
        return shouldConsume;
    }
}
