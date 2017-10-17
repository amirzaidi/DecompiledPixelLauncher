// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View$MeasureSpec;
import android.view.View;
import android.content.Context;
import android.app.WallpaperManager;
import android.view.ViewGroup;

public class ShortcutAndWidgetContainer extends ViewGroup
{
    private int mCellHeight;
    private int mCellWidth;
    private final int mContainerType;
    private int mCountX;
    private boolean mInvertIfRtl;
    private Launcher mLauncher;
    private final int[] mTmpCellXY;
    private final WallpaperManager mWallpaperManager;
    
    public ShortcutAndWidgetContainer(final Context context, final int mContainerType) {
        super(context);
        this.mTmpCellXY = new int[2];
        this.mInvertIfRtl = false;
        this.mLauncher = Launcher.getLauncher(context);
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        this.mContainerType = mContainerType;
    }
    
    public void cancelLongPress() {
        super.cancelLongPress();
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            this.getChildAt(i).cancelLongPress();
        }
    }
    
    int getCellContentHeight() {
        return Math.min(this.getMeasuredHeight(), this.mLauncher.getDeviceProfile().getCellHeight(this.mContainerType));
    }
    
    public View getChildAt(final int n, final int n2) {
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)child.getLayoutParams();
            if (cellLayout$LayoutParams.cellX <= n && n < cellLayout$LayoutParams.cellX + cellLayout$LayoutParams.cellHSpan && cellLayout$LayoutParams.cellY <= n2 && n2 < cellLayout$LayoutParams.cellVSpan + cellLayout$LayoutParams.cellY) {
                return child;
            }
        }
        return null;
    }
    
    public boolean invertLayoutHorizontally() {
        return this.mInvertIfRtl && Utilities.isRtl(this.getResources());
    }
    
    public void measureChild(final View view) {
        final int n = 1073741824;
        final float n2 = 2.0f;
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
        if (!cellLayout$LayoutParams.isFullscreen) {
            final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            if (view instanceof LauncherAppWidgetHostView) {
                cellLayout$LayoutParams.setup(this.mCellWidth, this.mCellHeight, this.invertLayoutHorizontally(), this.mCountX, deviceProfile.appWidgetScale.x, deviceProfile.appWidgetScale.y);
            }
            else {
                cellLayout$LayoutParams.setup(this.mCellWidth, this.mCellHeight, this.invertLayoutHorizontally(), this.mCountX);
                final int n3 = (int)Math.max(0.0f, (cellLayout$LayoutParams.height - this.getCellContentHeight()) / n2);
                final int n4 = (int)(deviceProfile.edgeMarginPx / n2);
                view.setPadding(n4, n3, n4, 0);
            }
        }
        else {
            cellLayout$LayoutParams.x = 0;
            cellLayout$LayoutParams.y = 0;
            cellLayout$LayoutParams.width = this.getMeasuredWidth();
            cellLayout$LayoutParams.height = this.getMeasuredHeight();
        }
        view.measure(View$MeasureSpec.makeMeasureSpec(cellLayout$LayoutParams.width, n), View$MeasureSpec.makeMeasureSpec(cellLayout$LayoutParams.height, n));
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)child.getLayoutParams();
                if (child instanceof LauncherAppWidgetHostView) {
                    final LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView)child;
                    final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
                    final float x = deviceProfile.appWidgetScale.x;
                    final float y = deviceProfile.appWidgetScale.y;
                    launcherAppWidgetHostView.setScaleToFit(Math.min(x, y));
                    launcherAppWidgetHostView.setTranslationForCentering(-(cellLayout$LayoutParams.width - x * cellLayout$LayoutParams.width) / 2.0f, -(cellLayout$LayoutParams.height - y * cellLayout$LayoutParams.height) / 2.0f);
                }
                final int x2 = cellLayout$LayoutParams.x;
                final int y2 = cellLayout$LayoutParams.y;
                child.layout(x2, y2, cellLayout$LayoutParams.width + x2, cellLayout$LayoutParams.height + y2);
                if (cellLayout$LayoutParams.dropped) {
                    cellLayout$LayoutParams.dropped = false;
                    final int[] mTmpCellXY = this.mTmpCellXY;
                    this.getLocationOnScreen(mTmpCellXY);
                    this.mWallpaperManager.sendWallpaperCommand(this.getWindowToken(), "android.home.drop", x2 + mTmpCellXY[0] + cellLayout$LayoutParams.width / 2, cellLayout$LayoutParams.height / 2 + (y2 + mTmpCellXY[1]), 0, (Bundle)null);
                }
            }
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int childCount = this.getChildCount();
        this.setMeasuredDimension(View$MeasureSpec.getSize(n), View$MeasureSpec.getSize(n2));
        for (int i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                this.measureChild(child);
            }
        }
    }
    
    public void requestChildFocus(final View view, final View view2) {
        super.requestChildFocus(view, view2);
        if (view != null) {
            final Rect rect = new Rect();
            view.getDrawingRect(rect);
            this.requestRectangleOnScreen(rect);
        }
    }
    
    public void setCellDimensions(final int mCellWidth, final int mCellHeight, final int mCountX, final int n) {
        this.mCellWidth = mCellWidth;
        this.mCellHeight = mCellHeight;
        this.mCountX = mCountX;
    }
    
    public void setInvertIfRtl(final boolean mInvertIfRtl) {
        this.mInvertIfRtl = mInvertIfRtl;
    }
    
    public void setupLp(final View view) {
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
        if (view instanceof LauncherAppWidgetHostView) {
            final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            cellLayout$LayoutParams.setup(this.mCellWidth, this.mCellHeight, this.invertLayoutHorizontally(), this.mCountX, deviceProfile.appWidgetScale.x, deviceProfile.appWidgetScale.y);
        }
        else {
            cellLayout$LayoutParams.setup(this.mCellWidth, this.mCellHeight, this.invertLayoutHorizontally(), this.mCountX);
        }
    }
    
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
