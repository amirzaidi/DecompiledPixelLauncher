// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import android.view.accessibility.AccessibilityEvent;
import android.os.Bundle;
import java.util.List;
import com.android.launcher3.Launcher;
import android.view.View;
import com.android.launcher3.CellLayout;
import android.graphics.Rect;
import android.content.Context;
import android.view.View$OnClickListener;
import android.support.v4.widget.a;

public abstract class DragAndDropAccessibilityDelegate extends a implements View$OnClickListener
{
    private static final int[] sTempArray;
    protected final Context mContext;
    protected final LauncherAccessibilityDelegate mDelegate;
    private final Rect mTempRect;
    protected final CellLayout mView;
    
    static {
        sTempArray = new int[2];
    }
    
    public DragAndDropAccessibilityDelegate(final CellLayout mView) {
        super((View)mView);
        this.mTempRect = new Rect();
        this.mView = mView;
        this.mContext = this.mView.getContext();
        this.mDelegate = Launcher.getLauncher(this.mContext).getAccessibilityDelegate();
    }
    
    private Rect getItemBounds(final int n) {
        final int n2 = n % this.mView.getCountX();
        final int n3 = n / this.mView.getCountX();
        final LauncherAccessibilityDelegate$DragInfo dragInfo = this.mDelegate.getDragInfo();
        this.mView.cellToRect(n2, n3, dragInfo.info.spanX, dragInfo.info.spanY, this.mTempRect);
        return this.mTempRect;
    }
    
    protected abstract String getConfirmationForIconDrop(final int p0);
    
    protected abstract String getLocationDescriptionForIconDrop(final int p0);
    
    protected int getVirtualViewAt(final float n, final float n2) {
        if (n >= 0.0f && n2 >= 0.0f && n <= this.mView.getMeasuredWidth() && n2 <= this.mView.getMeasuredHeight()) {
            this.mView.pointToCellExact((int)n, (int)n2, DragAndDropAccessibilityDelegate.sTempArray);
            return this.intersectsValidDropTarget(DragAndDropAccessibilityDelegate.sTempArray[0] + DragAndDropAccessibilityDelegate.sTempArray[1] * this.mView.getCountX());
        }
        return -1 << -1;
    }
    
    protected void getVisibleVirtualViews(final List list) {
        for (int n = this.mView.getCountY() * this.mView.getCountX(), i = 0; i < n; ++i) {
            if (this.intersectsValidDropTarget(i) == i) {
                list.add(i);
            }
        }
    }
    
    protected abstract int intersectsValidDropTarget(final int p0);
    
    public void onClick(final View view) {
        this.onPerformActionForVirtualView(this.getFocusedVirtualView(), 16, null);
    }
    
    protected boolean onPerformActionForVirtualView(final int n, final int n2, final Bundle bundle) {
        if (n2 == 16 && n != -1 << -1) {
            this.mDelegate.handleAccessibleDrop((View)this.mView, this.getItemBounds(n), this.getConfirmationForIconDrop(n));
            return true;
        }
        return false;
    }
    
    protected void onPopulateEventForVirtualView(final int n, final AccessibilityEvent accessibilityEvent) {
        if (n == -1 << -1) {
            throw new IllegalArgumentException("Invalid virtual view id");
        }
        accessibilityEvent.setContentDescription((CharSequence)this.mContext.getString(2131492966));
    }
    
    protected void onPopulateNodeForVirtualView(final int n, final android.support.v4.view.a.a a) {
        final boolean b = true;
        if (n == -1 << -1) {
            throw new IllegalArgumentException("Invalid virtual view id");
        }
        a.setContentDescription(this.getLocationDescriptionForIconDrop(n));
        a.aeg(this.getItemBounds(n));
        a.adW(16);
        a.adX(b);
        a.adR(b);
    }
}
