// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.dynamicui.ExtractedColors;
import android.view.View$OnLongClickListener;
import android.view.MotionEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import android.view.View;
import android.support.v4.b.a;
import com.android.launcher3.util.Themes;
import android.util.AttributeSet;
import android.content.Context;
import android.animation.ValueAnimator;
import android.graphics.drawable.ColorDrawable;
import com.android.launcher3.logging.UserEventDispatcher$LogContainerProvider;
import android.widget.FrameLayout;

public class Hotseat extends FrameLayout implements UserEventDispatcher$LogContainerProvider
{
    private ColorDrawable mBackground;
    private int mBackgroundColor;
    private ValueAnimator mBackgroundColorAnimator;
    private CellLayout mContent;
    private final boolean mHasVerticalHotseat;
    private Launcher mLauncher;
    
    public Hotseat(final Context context) {
        this(context, null);
    }
    
    public Hotseat(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public Hotseat(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mLauncher = Launcher.getLauncher(context);
        this.mHasVerticalHotseat = this.mLauncher.getDeviceProfile().isVerticalBarLayout();
        this.mBackgroundColor = a.asb(Themes.getAttrColor(context, 16843827), 0);
        this.mBackground = new ColorDrawable(this.mBackgroundColor);
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        launcherLogProto$Target.gridX = itemInfo.cellX;
        launcherLogProto$Target.gridY = itemInfo.cellY;
        launcherLogProto$Target2.containerType = 2;
    }
    
    public int getBackgroundDrawableColor() {
        return this.mBackgroundColor;
    }
    
    int getCellXFromOrder(int n) {
        if (this.mHasVerticalHotseat) {
            n = 0;
        }
        return n;
    }
    
    int getCellYFromOrder(final int n) {
        int n2;
        if (this.mHasVerticalHotseat) {
            n2 = this.mContent.getCountY() - (n + 1);
        }
        else {
            n2 = 0;
        }
        return n2;
    }
    
    public CellLayout getLayout() {
        return this.mContent;
    }
    
    int getOrderInHotseat(int n, final int n2) {
        if (this.mHasVerticalHotseat) {
            n = this.mContent.getCountY() - n2 - 1;
        }
        return n;
    }
    
    protected void onFinishInflate() {
        final int n = 1;
        super.onFinishInflate();
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        this.mContent = (CellLayout)this.findViewById(2131624009);
        if (deviceProfile.isVerticalBarLayout()) {
            this.mContent.setGridSize(n, deviceProfile.inv.numHotseatIcons);
        }
        else {
            this.mContent.setGridSize(deviceProfile.inv.numHotseatIcons, n);
        }
        this.resetLayout();
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        return !this.mLauncher.getWorkspace().workspaceIconsCanBeDragged() && (this.mLauncher.getAccessibilityDelegate().isInAccessibleDrag() ^ true);
    }
    
    void resetLayout() {
        this.mContent.removeAllViewsInLayout();
    }
    
    public void setBackgroundTransparent(final boolean b) {
        if (b) {
            this.mBackground.setAlpha(0);
        }
        else {
            this.mBackground.setAlpha(255);
        }
    }
    
    public void setOnLongClickListener(final View$OnLongClickListener onLongClickListener) {
        this.mContent.setOnLongClickListener(onLongClickListener);
    }
    
    public void updateColor(final ExtractedColors extractedColors, final boolean b) {
    }
}
