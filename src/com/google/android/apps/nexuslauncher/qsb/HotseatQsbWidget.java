// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.content.IntentFilter;
import com.android.launcher3.CellLayout;
import android.util.Property;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.animation.DecelerateInterpolator;
import android.animation.TimeInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.Animator$AnimatorListener;
import android.os.Bundle;
import android.os.Handler;
import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.graphics.Rect;
import android.content.Intent;
import android.view.LayoutInflater;
import android.widget.TextView;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.View;
import android.view.ContextThemeWrapper;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import android.view.View$OnClickListener;
import android.util.AttributeSet;
import android.content.Context;
import android.content.BroadcastReceiver;
import android.animation.AnimatorSet;

public class HotseatQsbWidget extends a implements g
{
    private boolean cF;
    private boolean cG;
    private AnimatorSet cH;
    private final f cI;
    private boolean cJ;
    private final BroadcastReceiver cK;
    
    public HotseatQsbWidget(final Context context) {
        this(context, null);
    }
    
    public HotseatQsbWidget(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public HotseatQsbWidget(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.cK = new m(this);
        this.cI = f.getInstance(context);
        this.setOnClickListener((View$OnClickListener)this);
    }
    
    static int ck(final Launcher launcher) {
        final float n = 2.0f;
        final Hotseat hotseat = launcher.getHotseat();
        final float n2 = (launcher.getDeviceProfile().iconSizePx * 0.92f + hotseat.getLayout().getCellHeight()) / n;
        final float n3 = launcher.getDragLayer().getInsets().bottom * 0.67f;
        return Math.round((hotseat.getHeight() - n3 - n2 - launcher.getResources().getDimension(2131427502)) / n + n3);
    }
    
    private void cl() {
        final boolean cg = true;
        this.cJ = false;
        this.cu(this.cG = cg, cg);
    }
    
    private void cm() {
        final Context context = this.getContext();
        int n;
        if (this.cF || this.cI.cD()) {
            n = 2131886102;
        }
        else {
            n = 2131886101;
        }
        View.inflate((Context)new ContextThemeWrapper(context, n), 2130968614, (ViewGroup)this);
        int ce;
        if (this.cF) {
            ce = -855638017;
        }
        else {
            ce = this.cI.cE();
        }
        this.cb(ce);
        final String cf = this.cI.cF();
        if (!TextUtils.isEmpty((CharSequence)cf)) {
            final TextView textView = (TextView)LayoutInflater.from(this.getContext()).inflate(2130968615, (ViewGroup)this, false);
            textView.setText((CharSequence)cf);
            this.addView((View)textView);
        }
    }
    
    private void cn(final boolean b) {
        this.cJ = false;
        if (this.cG) {
            this.cu(this.cG = false, b);
        }
    }
    
    private Intent co() {
        final int[] array = new int[2];
        this.getLocationInWindow(array);
        final Rect rect = new Rect(0, 0, this.getWidth(), this.getHeight());
        rect.offset(array[0], array[1]);
        rect.inset(this.getPaddingLeft(), this.getPaddingTop());
        return h.cS(rect, this.findViewById(2131624000), this.cs);
    }
    
    private void cq() {
        if (this.cF != this.cs()) {
            this.cF ^= true;
            this.cp();
        }
    }
    
    private void cr() {
        if (this.hasWindowFocus()) {
            this.cJ = true;
        }
        else {
            this.cl();
        }
    }
    
    private boolean cs() {
        final WallpaperInfo wallpaperInfo = WallpaperManager.getInstance(this.getContext()).getWallpaperInfo();
        return wallpaperInfo != null && wallpaperInfo.getComponent().flattenToString().equals(this.getContext().getString(2131493003));
    }
    
    private void ct() {
        final h h = new h(this, false);
        if (this.cr.ff().startSearch(h.build(), h.getExtras())) {
            this.cr();
            return;
        }
        this.getContext().sendOrderedBroadcast(this.co(), (String)null, (BroadcastReceiver)new n(this), (Handler)null, 0, (String)null, (Bundle)null);
    }
    
    private void cu(final boolean b, final boolean b2) {
        final long n = 200L;
        final int n2 = 1;
        if (this.cH != null) {
            this.cH.cancel();
        }
        (this.cH = new AnimatorSet()).addListener((Animator$AnimatorListener)new o(this));
        if (b) {
            final AnimatorSet ch = this.cH;
            final DragLayer dragLayer = this.cr.getDragLayer();
            final Property alpha = View.ALPHA;
            final float[] array = new float[n2];
            array[0] = 0.0f;
            ch.play((Animator)ObjectAnimator.ofFloat((Object)dragLayer, alpha, array));
            final DragLayer dragLayer2 = this.cr.getDragLayer();
            final Property translation_Y = View.TRANSLATION_Y;
            final float[] array2 = new float[n2];
            array2[0] = -this.cr.getHotseat().getHeight() / 2;
            final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)dragLayer2, translation_Y, array2);
            ofFloat.setInterpolator((TimeInterpolator)new AccelerateInterpolator());
            this.cH.play((Animator)ofFloat);
            this.cH.setDuration(n);
        }
        else {
            final AnimatorSet ch2 = this.cH;
            final DragLayer dragLayer3 = this.cr.getDragLayer();
            final Property alpha2 = View.ALPHA;
            final float[] array3 = new float[n2];
            array3[0] = 1.0f;
            ch2.play((Animator)ObjectAnimator.ofFloat((Object)dragLayer3, alpha2, array3));
            final DragLayer dragLayer4 = this.cr.getDragLayer();
            final Property translation_Y2 = View.TRANSLATION_Y;
            final float[] array4 = new float[n2];
            array4[0] = 0.0f;
            final ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object)dragLayer4, translation_Y2, array4);
            ofFloat2.setInterpolator((TimeInterpolator)new DecelerateInterpolator());
            this.cH.play((Animator)ofFloat2);
            this.cH.setDuration(n);
        }
        this.cH.start();
        if (!b2) {
            this.cH.end();
        }
    }
    
    protected int bY(final int n) {
        final CellLayout layout = this.cr.getHotseat().getLayout();
        return n - ((View)layout).getPaddingLeft() - ((View)layout).getPaddingRight();
    }
    
    public void cp() {
        this.removeAllViews();
        this.cm();
        this.bZ();
    }
    
    protected void onAttachedToWindow() {
        this.cF = this.cs();
        this.cm();
        super.onAttachedToWindow();
        this.getContext().registerReceiver(this.cK, new IntentFilter("android.intent.action.WALLPAPER_CHANGED"));
        this.cI.cB(this);
    }
    
    public void onClick(final View view) {
        super.onClick(view);
        if (view == this) {
            this.ca(2);
            this.ct();
        }
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.getContext().unregisterReceiver(this.cK);
        this.cI.cC(this);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        this.setTranslationY((float)(-ck(this.cr)));
    }
    
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        if (!b && this.cJ) {
            this.cl();
        }
        else if (b) {
            this.cn(true);
        }
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        super.onWindowVisibilityChanged(n);
        this.cn(false);
    }
}
