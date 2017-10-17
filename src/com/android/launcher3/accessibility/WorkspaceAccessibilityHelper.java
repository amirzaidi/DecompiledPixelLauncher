// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.Launcher;
import android.support.v4.view.a.a;
import com.android.launcher3.AppInfo;
import java.util.Iterator;
import android.text.TextUtils;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.ItemInfo;
import android.content.Context;
import android.view.View;
import com.android.launcher3.CellLayout;
import android.graphics.Rect;

public class WorkspaceAccessibilityHelper extends DragAndDropAccessibilityDelegate
{
    private final int[] mTempCords;
    private final Rect mTempRect;
    
    public WorkspaceAccessibilityHelper(final CellLayout cellLayout) {
        super(cellLayout);
        this.mTempRect = new Rect();
        this.mTempCords = new int[2];
    }
    
    public static String getDescriptionForDropOver(final View view, final Context context) {
        ShortcutInfo shortcutInfo = null;
        final int n = 1;
        final ItemInfo itemInfo = (ItemInfo)view.getTag();
        if (itemInfo instanceof ShortcutInfo) {
            final Object[] array = new Object[n];
            array[0] = ((FolderInfo)itemInfo).title;
            return context.getString(2131492977, array);
        }
        if (itemInfo instanceof FolderInfo) {
            if (TextUtils.isEmpty(((FolderInfo)itemInfo).title)) {
                for (ShortcutInfo shortcutInfo2 : ((FolderInfo)itemInfo).contents) {
                    if (shortcutInfo != null && shortcutInfo.rank <= shortcutInfo2.rank) {
                        shortcutInfo2 = shortcutInfo;
                    }
                    shortcutInfo = shortcutInfo2;
                }
                if (shortcutInfo != null) {
                    final Object[] array2 = new Object[n];
                    array2[0] = shortcutInfo.title;
                    return context.getString(2131492975, array2);
                }
            }
            final Object[] array3 = new Object[n];
            array3[0] = ((FolderInfo)itemInfo).title;
            return context.getString(2131492974, array3);
        }
        return "";
    }
    
    protected String getConfirmationForIconDrop(final int n) {
        final int n2 = n % this.mView.getCountX();
        final int n3 = n / this.mView.getCountX();
        final LauncherAccessibilityDelegate$DragInfo dragInfo = this.mDelegate.getDragInfo();
        final View child = this.mView.getChildAt(n2, n3);
        if (child == null || child == dragInfo.item) {
            return this.mContext.getString(2131492973);
        }
        final ItemInfo itemInfo = (ItemInfo)child.getTag();
        if (itemInfo instanceof AppInfo || itemInfo instanceof ShortcutInfo) {
            return this.mContext.getString(2131492978);
        }
        if (itemInfo instanceof FolderInfo) {
            return this.mContext.getString(2131492976);
        }
        return "";
    }
    
    protected String getLocationDescriptionForIconDrop(final int n) {
        final int n2 = n % this.mView.getCountX();
        final int n3 = n / this.mView.getCountX();
        final LauncherAccessibilityDelegate$DragInfo dragInfo = this.mDelegate.getDragInfo();
        final View child = this.mView.getChildAt(n2, n3);
        if (child == null || child == dragInfo.item) {
            return this.mView.getItemMoveDescription(n2, n3);
        }
        return getDescriptionForDropOver(child, this.mContext);
    }
    
    protected int intersectsValidDropTarget(final int n) {
        final int countX = this.mView.getCountX();
        final int countY = this.mView.getCountY();
        final int n2 = n % countX;
        final int n3 = n / countX;
        final LauncherAccessibilityDelegate$DragInfo dragInfo = this.mDelegate.getDragInfo();
        if (dragInfo.dragType == LauncherAccessibilityDelegate$DragType.WIDGET && (this.mView.acceptsWidget() ^ true)) {
            return -1;
        }
        if (dragInfo.dragType == LauncherAccessibilityDelegate$DragType.WIDGET) {
            final int spanX = dragInfo.info.spanX;
            final int spanY = dragInfo.info.spanY;
            for (int i = 0; i < spanX; ++i) {
                for (int j = 0; j < spanY; ++j) {
                    int n4 = 1;
                    final int n5 = n2 - i;
                    final int n6 = n3 - j;
                    if (n5 >= 0 && n6 >= 0) {
                        for (int n7 = n5; n7 < n5 + spanX && n4 != 0; ++n7) {
                            for (int k = n6; k < n6 + spanY; ++k) {
                                if (n7 >= countX || k >= countY || this.mView.isOccupied(n7, k)) {
                                    n4 = 0;
                                    break;
                                }
                            }
                        }
                        if (n4 != 0) {
                            return countX * n6 + n5;
                        }
                    }
                }
            }
            return -1;
        }
        final View child = this.mView.getChildAt(n2, n3);
        if (child == null || child == dragInfo.item) {
            return n;
        }
        if (dragInfo.dragType != LauncherAccessibilityDelegate$DragType.FOLDER) {
            final ItemInfo itemInfo = (ItemInfo)child.getTag();
            if (itemInfo instanceof AppInfo || itemInfo instanceof FolderInfo || itemInfo instanceof ShortcutInfo) {
                return n;
            }
        }
        return -1;
    }
    
    protected void onPopulateNodeForVirtualView(final int n, final android.support.v4.view.a.a a) {
        final int n2 = 1;
        super.onPopulateNodeForVirtualView(n, a);
        final DragLayer dragLayer = Launcher.getLauncher(this.mView.getContext()).getDragLayer();
        this.mTempCords[this.mTempCords[n2] = 0] = 0;
        final float descendantCoordRelativeToSelf = dragLayer.getDescendantCoordRelativeToSelf((View)this.mView, this.mTempCords);
        a.adM(this.mTempRect);
        this.mTempRect.left = this.mTempCords[0] + (int)(this.mTempRect.left * descendantCoordRelativeToSelf);
        this.mTempRect.right = this.mTempCords[0] + (int)(this.mTempRect.right * descendantCoordRelativeToSelf);
        this.mTempRect.top = this.mTempCords[n2] + (int)(this.mTempRect.top * descendantCoordRelativeToSelf);
        this.mTempRect.bottom = (int)(descendantCoordRelativeToSelf * this.mTempRect.bottom) + this.mTempCords[n2];
        a.adV(this.mTempRect);
    }
}
