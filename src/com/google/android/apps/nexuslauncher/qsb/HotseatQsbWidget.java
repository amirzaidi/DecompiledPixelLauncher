// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.content.IntentFilter;
import android.view.ViewGroup$MarginLayoutParams;
import com.android.launcher3.CellLayout;
import android.util.Property;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.animation.DecelerateInterpolator;
import android.animation.TimeInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.Animator$AnimatorListener;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import com.android.launcher3.Utilities;
import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.graphics.Rect;
import android.content.Intent;
import android.view.ViewGroup;
import android.view.View;
import android.view.ContextThemeWrapper;
import com.android.launcher3.Launcher;
import android.view.View$AccessibilityDelegate;
import android.view.View$OnClickListener;
import android.util.AttributeSet;
import android.content.Context;
import android.content.BroadcastReceiver;
import android.animation.AnimatorSet;

public class HotseatQsbWidget extends e
{
    private boolean cg;
    private boolean ch;
    private AnimatorSet ci;
    private boolean cj;
    private final BroadcastReceiver ck;
    
    public HotseatQsbWidget(final Context context) {
        this(context, null);
    }
    
    public HotseatQsbWidget(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public HotseatQsbWidget(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.ck = new h(this);
        this.cg = this.bO();
        this.bJ();
        this.setOnClickListener((View$OnClickListener)this);
        this.setAccessibilityDelegate((View$AccessibilityDelegate)new a());
    }
    
    static int bH(final Launcher launcher) {
        return launcher.getDragLayer().getInsets().bottom + launcher.getResources().getDimensionPixelSize(2131427503);
    }
    
    private void bI() {
        final boolean ch = true;
        this.cj = false;
        this.bQ(this.ch = ch, ch);
    }
    
    private void bJ() {
        final Context context = this.getContext();
        int n;
        if (this.cg) {
            n = 2131886103;
        }
        else {
            n = 2131886102;
        }
        View.inflate((Context)new ContextThemeWrapper(context, n), 2130968614, (ViewGroup)this);
        int n2;
        if (this.cg) {
            n2 = -855638017;
        }
        else {
            n2 = -1711604998;
        }
        this.bz(n2);
    }
    
    private void bK(final boolean b) {
        this.cj = false;
        if (this.ch) {
            this.bQ(this.ch = false, b);
        }
    }
    
    private Intent bL() {
        final int[] array = new int[2];
        this.getLocationInWindow(array);
        final Rect rect = new Rect(0, 0, this.getWidth(), this.getHeight());
        rect.offset(array[0], array[1]);
        rect.inset(this.getPaddingLeft(), this.getPaddingTop());
        return f.bV(rect, this.findViewById(2131624000), this.cd);
    }
    
    private void bM() {
        if (this.cg != this.bO()) {
            this.cg ^= true;
            this.removeAllViews();
            this.bJ();
            this.bE();
        }
    }
    
    private void bN() {
        if (this.hasWindowFocus()) {
            this.cj = true;
        }
        else {
            this.bI();
        }
    }
    
    private boolean bO() {
        final WallpaperInfo wallpaperInfo = WallpaperManager.getInstance(this.getContext()).getWallpaperInfo();
        return wallpaperInfo != null && wallpaperInfo.getComponent().flattenToString().equals(this.getContext().getString(2131493004));
    }
    
    private void bP() {
        final f f = new f(this, false);
        if (this.cb.dY().startSearch(f.build(), f.getExtras())) {
            final SharedPreferences devicePrefs = Utilities.getDevicePrefs(this.getContext());
            devicePrefs.edit().putInt("key_hotseat_qsb_tap_count", devicePrefs.getInt("key_hotseat_qsb_tap_count", 0) + 1).apply();
            this.bN();
            return;
        }
        this.getContext().sendOrderedBroadcast(this.bL(), (String)null, (BroadcastReceiver)new i(this), (Handler)null, 0, (String)null, (Bundle)null);
    }
    
    private void bQ(final boolean b, final boolean b2) {
        final long n = 200L;
        final int n2 = 1;
        if (this.ci != null) {
            this.ci.cancel();
        }
        (this.ci = new AnimatorSet()).addListener((Animator$AnimatorListener)new j(this));
        if (b) {
            final AnimatorSet ci = this.ci;
            final DragLayer dragLayer = this.cb.getDragLayer();
            final Property alpha = View.ALPHA;
            final float[] array = new float[n2];
            array[0] = 0.0f;
            ci.play((Animator)ObjectAnimator.ofFloat((Object)dragLayer, alpha, array));
            final DragLayer dragLayer2 = this.cb.getDragLayer();
            final Property translation_Y = View.TRANSLATION_Y;
            final float[] array2 = new float[n2];
            array2[0] = -this.cb.getHotseat().getHeight() / 2;
            final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)dragLayer2, translation_Y, array2);
            ofFloat.setInterpolator((TimeInterpolator)new AccelerateInterpolator());
            this.ci.play((Animator)ofFloat);
            this.ci.setDuration(n);
        }
        else {
            final AnimatorSet ci2 = this.ci;
            final DragLayer dragLayer3 = this.cb.getDragLayer();
            final Property alpha2 = View.ALPHA;
            final float[] array3 = new float[n2];
            array3[0] = 1.0f;
            ci2.play((Animator)ObjectAnimator.ofFloat((Object)dragLayer3, alpha2, array3));
            final DragLayer dragLayer4 = this.cb.getDragLayer();
            final Property translation_Y2 = View.TRANSLATION_Y;
            final float[] array4 = new float[n2];
            array4[0] = 0.0f;
            final ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object)dragLayer4, translation_Y2, array4);
            ofFloat2.setInterpolator((TimeInterpolator)new DecelerateInterpolator());
            this.ci.play((Animator)ofFloat2);
            this.ci.setDuration(n);
        }
        this.ci.start();
        if (!b2) {
            this.ci.end();
        }
    }
    
    protected int bw(final int n) {
        final CellLayout layout = this.cb.getHotseat().getLayout();
        return n - ((View)layout).getPaddingLeft() - ((View)layout).getPaddingRight();
    }
    
    protected void by() {
        ((ViewGroup$MarginLayoutParams)this.getLayoutParams()).bottomMargin = bH(this.cb);
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.getContext().registerReceiver(this.ck, new IntentFilter("android.intent.action.WALLPAPER_CHANGED"));
    }
    
    public void onClick(final View view) {
        super.onClick(view);
        if (view == this) {
            this.bA(2);
            this.bP();
        }
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.getContext().unregisterReceiver(this.ck);
    }
    
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        if (!b && this.cj) {
            this.bI();
        }
        else if (b) {
            this.bK(true);
        }
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        super.onWindowVisibilityChanged(n);
        this.bK(false);
    }
}
