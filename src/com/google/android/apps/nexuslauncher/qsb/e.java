// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.widget.FrameLayout$LayoutParams;
import com.android.launcher3.DeviceProfile;
import android.view.View$MeasureSpec;
import com.android.launcher3.LauncherAppState;
import android.content.ActivityNotFoundException;
import android.os.Process;
import android.content.ComponentName;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.Intent;
import android.graphics.Bitmap$Config;
import com.android.launcher3.Utilities;
import android.graphics.Xfermode;
import android.graphics.PorterDuffXfermode;
import android.graphics.PorterDuff$Mode;
import android.graphics.Color;
import com.android.launcher3.graphics.ShadowGenerator$Builder;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import com.android.launcher3.Launcher;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import android.view.View$OnClickListener;
import com.android.launcher3.DeviceProfile$LauncherLayoutChangeListener;
import android.widget.FrameLayout;

public abstract class e extends FrameLayout implements DeviceProfile$LauncherLayoutChangeListener, View$OnClickListener, SharedPreferences$OnSharedPreferenceChangeListener
{
    protected final NexusLauncherActivity cb;
    protected int cc;
    protected View cd;
    private final RectF ce;
    private final Rect cf;
    protected Bitmap mShadowBitmap;
    protected final Paint mShadowPaint;
    
    public e(final Context context) {
        this(context, null);
    }
    
    public e(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public e(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.cf = new Rect();
        this.ce = new RectF();
        this.mShadowPaint = new Paint(1);
        this.cc = 0;
        this.cb = (NexusLauncherActivity)Launcher.getLauncher(context);
    }
    
    private void bD(final Bitmap bitmap, final Canvas canvas, final int left, final int right, final float left2, final float right2) {
        this.cf.left = left;
        this.cf.right = right;
        this.ce.left = left2;
        this.ce.right = right2;
        canvas.drawBitmap(bitmap, this.cf, this.ce, this.mShadowPaint);
    }
    
    private void bG(final SharedPreferences sharedPreferences) {
        final View cd = this.cd;
        int visibility;
        if (sharedPreferences.getBoolean("opa_enabled", true)) {
            visibility = 8;
        }
        else {
            visibility = 0;
        }
        cd.setVisibility(visibility);
        this.requestLayout();
    }
    
    protected final void bA(final int n) {
        ((UserEventDispatcherImpl)this.cb.getUserEventDispatcher()).bo(n);
    }
    
    protected Bitmap bB(final float shadowBlur, final float keyShadowDistance, final int color) {
        final int n = this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
        final int n2 = n + 20;
        final ShadowGenerator$Builder shadowGenerator$Builder = new ShadowGenerator$Builder(color);
        shadowGenerator$Builder.shadowBlur = shadowBlur;
        shadowGenerator$Builder.keyShadowDistance = keyShadowDistance;
        shadowGenerator$Builder.keyShadowAlpha = shadowGenerator$Builder.ambientShadowAlpha;
        Bitmap bitmap = shadowGenerator$Builder.createPill(n2, n);
        if (Color.alpha(color) < 255) {
            final Canvas canvas = new Canvas(bitmap);
            final Paint paint = new Paint();
            paint.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.CLEAR));
            canvas.drawRoundRect(shadowGenerator$Builder.bounds, (float)(n / 2), (float)(n / 2), paint);
            paint.setXfermode((Xfermode)null);
            paint.setColor(color);
            canvas.drawRoundRect(shadowGenerator$Builder.bounds, (float)(n / 2), (float)(n / 2), paint);
            canvas.setBitmap((Bitmap)null);
        }
        if (Utilities.isAtLeastO()) {
            bitmap = bitmap.copy(Bitmap$Config.HARDWARE, false);
        }
        return bitmap;
    }
    
    protected void bC(final Bitmap bitmap, final Canvas canvas) {
        final int n = this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
        final int n2 = n + 20;
        final int width = bitmap.getWidth();
        final int height = bitmap.getHeight();
        this.cf.top = 0;
        this.cf.bottom = height;
        this.ce.top = this.getPaddingTop() - (height - n) / 2;
        this.ce.bottom = height + this.ce.top;
        final float n3 = (width - n2) / 2;
        final int n4 = width / 2;
        final float n5 = this.getPaddingLeft() - n3;
        this.bD(bitmap, canvas, 0, n4, n5, n5 + n4);
        final float n6 = this.getWidth() - this.getPaddingRight() + n3;
        this.bD(bitmap, canvas, n4, width, n6 - n4, n6);
        this.bD(bitmap, canvas, n4 - 5, n4 + 5, n5 + n4, n6 - n4);
    }
    
    protected SharedPreferences bE() {
        (this.cd = this.findViewById(2131624001)).setOnClickListener((View$OnClickListener)this);
        final SharedPreferences devicePrefs = Utilities.getDevicePrefs(this.getContext());
        this.bG(devicePrefs);
        return devicePrefs;
    }
    
    protected void bF(final String s) {
        try {
            final Context context = this.getContext();
            try {
                context.startActivity(new Intent(s).addFlags(268468224).setPackage("com.google.android.googlequicksearchbox"));
            }
            catch (ActivityNotFoundException ex) {
                LauncherAppsCompat.getInstance(this.getContext()).showAppDetailsForProfile(new ComponentName("com.google.android.googlequicksearchbox", ".SearchActivity"), Process.myUserHandle());
            }
        }
        catch (ActivityNotFoundException ex2) {}
    }
    
    protected abstract int bw(final int p0);
    
    protected abstract void by();
    
    public void bz(final int cc) {
        if (this.cc != cc) {
            this.cc = cc;
            this.mShadowBitmap = null;
            this.invalidate();
        }
    }
    
    public void draw(final Canvas canvas) {
        if (this.mShadowBitmap == null) {
            final int iconBitmapSize = LauncherAppState.getIDP(this.getContext()).iconBitmapSize;
            this.mShadowBitmap = this.bB(iconBitmapSize * 0.010416667f, iconBitmapSize * 0.020833334f, this.cc);
        }
        this.bC(this.mShadowBitmap, canvas);
        super.draw(canvas);
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.cb.getDeviceProfile().addLauncherLayoutChangedListener(this);
        this.bE().registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
    }
    
    public void onClick(final View view) {
        if (view == this.cd) {
            this.bF("android.intent.action.VOICE_ASSIST");
        }
    }
    
    protected void onDetachedFromWindow() {
        this.cb.getDeviceProfile().removeLauncherLayoutChangedListener(this);
        Utilities.getDevicePrefs(this.getContext()).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        super.onDetachedFromWindow();
    }
    
    public void onLauncherLayoutChanged() {
        this.requestLayout();
    }
    
    protected void onMeasure(final int n, final int n2) {
        this.by();
        final DeviceProfile deviceProfile = this.cb.getDeviceProfile();
        final int bw = this.bw(View$MeasureSpec.getSize(n));
        final int calculateCellWidth = DeviceProfile.calculateCellWidth(bw, deviceProfile.inv.numHotseatIcons);
        final int round = Math.round(deviceProfile.iconSizePx * 0.92f);
        this.setMeasuredDimension(bw - (calculateCellWidth - round) + this.getPaddingLeft() + this.getPaddingRight(), View$MeasureSpec.getSize(n2));
        for (int i = this.getChildCount() - 1; i >= 0; --i) {
            final View child = this.getChildAt(i);
            this.measureChildWithMargins(child, n, 0, n2, 0);
            if (child.getMeasuredWidth() <= round) {
                final FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams)child.getLayoutParams();
                final int n3 = (round - child.getMeasuredWidth()) / 2;
                frameLayout$LayoutParams.rightMargin = n3;
                frameLayout$LayoutParams.leftMargin = n3;
            }
        }
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("opa_enabled".equals(s)) {
            this.bG(sharedPreferences);
        }
    }
}
