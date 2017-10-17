// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Bundle;
import com.android.launcher3.graphics.DrawableFactory;
import android.graphics.drawable.Drawable$Callback;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.graphics.PorterDuff$Mode;
import android.graphics.Color;
import android.text.StaticLayout;
import android.text.Layout$Alignment;
import com.android.launcher3.model.PackageItemInfo;
import android.widget.RemoteViews;
import android.util.TypedValue;
import com.android.launcher3.util.Themes;
import android.view.ContextThemeWrapper;
import android.content.Context;
import android.text.Layout;
import android.graphics.Rect;
import android.text.TextPaint;
import android.graphics.Bitmap;
import android.view.View;
import android.graphics.drawable.Drawable;
import android.view.View$OnClickListener;

public class PendingAppWidgetHostView extends LauncherAppWidgetHostView implements View$OnClickListener, IconCache$ItemInfoUpdateReceiver
{
    private Drawable mCenterDrawable;
    private View$OnClickListener mClickListener;
    private View mDefaultView;
    private final boolean mDisabledForSafeMode;
    private boolean mDrawableSizeChanged;
    private Bitmap mIcon;
    private final LauncherAppWidgetInfo mInfo;
    private Launcher mLauncher;
    private final TextPaint mPaint;
    private final Rect mRect;
    private Drawable mSettingIconDrawable;
    private Layout mSetupTextLayout;
    private final int mStartState;
    
    public PendingAppWidgetHostView(final Context context, final LauncherAppWidgetInfo mInfo, final IconCache iconCache, final boolean mDisabledForSafeMode) {
        super((Context)new ContextThemeWrapper(context, 2131886086));
        this.mRect = new Rect();
        this.mLauncher = Launcher.getLauncher(context);
        this.mInfo = mInfo;
        this.mStartState = mInfo.restoreStatus;
        this.mDisabledForSafeMode = mDisabledForSafeMode;
        (this.mPaint = new TextPaint()).setColor(Themes.getAttrColor(this.getContext(), 16842806));
        this.mPaint.setTextSize(TypedValue.applyDimension(0, (float)this.mLauncher.getDeviceProfile().iconTextSizePx, this.getResources().getDisplayMetrics()));
        this.setBackgroundResource(2130837584);
        this.setWillNotDraw(false);
        this.setElevation(this.getResources().getDimension(2131427442));
        this.updateAppWidget(null);
        this.setOnClickListener((View$OnClickListener)this.mLauncher);
        if (mInfo.pendingItemInfo == null) {
            mInfo.pendingItemInfo = new PackageItemInfo(mInfo.providerName.getPackageName());
            mInfo.pendingItemInfo.user = mInfo.user;
            iconCache.updateIconInBackground(this, mInfo.pendingItemInfo);
        }
        else {
            this.reapplyItemInfo(mInfo.pendingItemInfo);
        }
    }
    
    private void updateDrawableBounds() {
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        final int paddingTop = this.getPaddingTop();
        final int paddingBottom = this.getPaddingBottom();
        final int paddingLeft = this.getPaddingLeft();
        final int paddingRight = this.getPaddingRight();
        final int dimensionPixelSize = this.getResources().getDimensionPixelSize(2131427441);
        final int n = this.getWidth() - paddingLeft - paddingRight - dimensionPixelSize * 2;
        final int n2 = this.getHeight() - paddingTop - paddingBottom - dimensionPixelSize * 2;
        if (this.mSettingIconDrawable == null) {
            final int min = Math.min(deviceProfile.iconSizePx, Math.min(n, n2));
            this.mRect.set(0, 0, min, min);
            this.mRect.offsetTo((this.getWidth() - this.mRect.width()) / 2, (this.getHeight() - this.mRect.height()) / 2);
            this.mCenterDrawable.setBounds(this.mRect);
        }
        else {
            float n3 = Math.max(0, Math.min(n, n2));
            final int max = Math.max(n, n2);
            if (1.8f * n3 > max) {
                n3 = max / 1.8f;
            }
            final int n4 = (int)Math.min(n3, deviceProfile.iconSizePx);
            final int n5 = (this.getHeight() - n4) / 2;
            this.mSetupTextLayout = null;
            int n6;
            if (n > 0) {
                this.mSetupTextLayout = (Layout)new StaticLayout(this.getResources().getText(2131492930), this.mPaint, n, Layout$Alignment.ALIGN_CENTER, 1.0f, 0.0f, true);
                final int height = this.mSetupTextLayout.getHeight();
                if (height + n4 * 1.8f + deviceProfile.iconDrawablePaddingPx < n2) {
                    n6 = (this.getHeight() - height - deviceProfile.iconDrawablePaddingPx - n4) / 2;
                }
                else {
                    this.mSetupTextLayout = null;
                    n6 = n5;
                }
            }
            else {
                n6 = n5;
            }
            this.mRect.set(0, 0, n4, n4);
            this.mRect.offset((this.getWidth() - n4) / 2, n6);
            this.mCenterDrawable.setBounds(this.mRect);
            this.mRect.left = paddingLeft + dimensionPixelSize;
            this.mRect.right = this.mRect.left + (int)(n4 * 0.4f);
            this.mRect.top = paddingTop + dimensionPixelSize;
            this.mRect.bottom = this.mRect.top + (int)(n4 * 0.4f);
            this.mSettingIconDrawable.setBounds(this.mRect);
            if (this.mSetupTextLayout != null) {
                this.mRect.left = paddingLeft + dimensionPixelSize;
                this.mRect.top = this.mCenterDrawable.getBounds().bottom + deviceProfile.iconDrawablePaddingPx;
            }
        }
    }
    
    private void updateSettingColor() {
        final int n = 1;
        final int dominantColorByHue = Utilities.findDominantColorByHue(this.mIcon, 20);
        final float[] array = new float[3];
        Color.colorToHSV(dominantColorByHue, array);
        array[n] = Math.min(array[n], 0.7f);
        array[2] = 1.0f;
        this.mSettingIconDrawable.setColorFilter(Color.HSVToColor(array), PorterDuff$Mode.SRC_IN);
    }
    
    public void applyState() {
        if (this.mCenterDrawable != null) {
            this.mCenterDrawable.setLevel(Math.max(this.mInfo.installProgress, 0));
        }
    }
    
    protected View getDefaultView() {
        if (this.mDefaultView == null) {
            (this.mDefaultView = this.mInflater.inflate(2130968592, (ViewGroup)this, false)).setOnClickListener((View$OnClickListener)this);
            this.applyState();
        }
        return this.mDefaultView;
    }
    
    public boolean isReadyForClickSetup() {
        int hasRestoreFlag = 1;
        if (!this.mInfo.hasRestoreFlag(2)) {
            if (!this.mInfo.hasRestoreFlag(4)) {
                hasRestoreFlag = (this.mInfo.hasRestoreFlag(hasRestoreFlag) ? 1 : 0);
            }
        }
        else {
            hasRestoreFlag = 0;
        }
        return hasRestoreFlag != 0;
    }
    
    public boolean isReinflateRequired() {
        return this.mStartState != this.mInfo.restoreStatus;
    }
    
    public void onClick(final View view) {
        if (this.mClickListener != null) {
            this.mClickListener.onClick((View)this);
        }
    }
    
    protected void onDraw(final Canvas canvas) {
        if (this.mCenterDrawable == null) {
            return;
        }
        if (this.mDrawableSizeChanged) {
            this.updateDrawableBounds();
            this.mDrawableSizeChanged = false;
        }
        this.mCenterDrawable.draw(canvas);
        if (this.mSettingIconDrawable != null) {
            this.mSettingIconDrawable.draw(canvas);
        }
        if (this.mSetupTextLayout != null) {
            canvas.save();
            canvas.translate((float)this.mRect.left, (float)this.mRect.top);
            this.mSetupTextLayout.draw(canvas);
            canvas.restore();
        }
    }
    
    protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        this.mDrawableSizeChanged = true;
    }
    
    public void reapplyItemInfo(final ItemInfoWithIcon itemInfoWithIcon) {
        final boolean b = true;
        final Bitmap iconBitmap = itemInfoWithIcon.iconBitmap;
        if (this.mIcon == iconBitmap) {
            return;
        }
        this.mIcon = iconBitmap;
        if (this.mCenterDrawable != null) {
            this.mCenterDrawable.setCallback((Drawable$Callback)null);
            this.mCenterDrawable = null;
        }
        if (this.mIcon != null) {
            final DrawableFactory value = DrawableFactory.get(this.getContext());
            if (this.mDisabledForSafeMode) {
                final FastBitmapDrawable icon = value.newIcon(this.mIcon, this.mInfo);
                icon.setIsDisabled(b);
                this.mCenterDrawable = icon;
                this.mSettingIconDrawable = null;
            }
            else if (this.isReadyForClickSetup()) {
                this.mCenterDrawable = value.newIcon(this.mIcon, this.mInfo);
                this.mSettingIconDrawable = this.getResources().getDrawable(2130837572).mutate();
                this.updateSettingColor();
            }
            else {
                (this.mCenterDrawable = DrawableFactory.get(this.getContext()).newPendingIcon(this.mIcon, this.getContext())).setCallback((Drawable$Callback)this);
                this.mSettingIconDrawable = null;
                this.applyState();
            }
            this.mDrawableSizeChanged = b;
        }
        this.invalidate();
    }
    
    public void setOnClickListener(final View$OnClickListener mClickListener) {
        this.mClickListener = mClickListener;
    }
    
    public void updateAppWidgetSize(final Bundle bundle, final int n, final int n2, final int n3, final int n4) {
    }
    
    protected boolean verifyDrawable(final Drawable drawable) {
        return drawable == this.mCenterDrawable || super.verifyDrawable(drawable);
    }
}
