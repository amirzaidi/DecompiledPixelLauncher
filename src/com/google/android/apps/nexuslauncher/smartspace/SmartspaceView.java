// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import com.android.launcher3.popup.PopupContainerWithArrow;
import android.animation.ValueAnimator;
import android.util.Log;
import com.android.launcher3.Launcher;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;
import android.view.LayoutInflater;
import android.text.TextUtils$TruncateAt;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.text.TextUtils;
import com.android.launcher3.util.Themes;
import android.util.AttributeSet;
import android.content.Context;
import android.os.Handler;
import com.android.launcher3.BubbleTextView;
import com.google.android.apps.nexuslauncher.graphics.IcuDateTextView;
import android.content.res.ColorStateList;
import android.widget.ImageView;
import android.view.ViewGroup;
import android.view.View;
import android.text.TextPaint;
import android.widget.TextView;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.widget.FrameLayout;

public class SmartspaceView extends FrameLayout implements c, ValueAnimator$AnimatorUpdateListener, View$OnClickListener, View$OnLongClickListener, Runnable
{
    private TextView dA;
    private final TextPaint dB;
    private View dC;
    private TextView dD;
    private ViewGroup dE;
    private ImageView dF;
    private TextView dG;
    private final ColorStateList dH;
    private final int dm;
    private IcuDateTextView dn;
    private ViewGroup do;
    private final f dp;
    private e dq;
    private BubbleTextView dr;
    private boolean ds;
    private boolean dt;
    private final View$OnClickListener du;
    private final View$OnClickListener dv;
    private ImageView dw;
    private TextView dx;
    private ViewGroup dy;
    private ImageView dz;
    private final Handler mHandler;
    
    public SmartspaceView(final Context context, final AttributeSet set) {
        super(context, set);
        this.du = (View$OnClickListener)new h(this);
        this.dv = (View$OnClickListener)new i(this);
        this.dp = f.get(context);
        this.mHandler = new Handler();
        this.dH = ColorStateList.valueOf(Themes.getAttrColor(this.getContext(), 2130772012));
        this.ds = this.dp.cY();
        this.dm = 2130837511;
        (this.dB = new TextPaint()).setTextSize((float)this.getResources().getDimensionPixelSize(2131427504));
    }
    
    private void cj(final e e) {
        final boolean cs = e.cS();
        if (this.dt != cs) {
            this.dt = cs;
            this.cs();
        }
        this.setOnClickListener((View$OnClickListener)this);
        this.setOnLongClickListener(this.co());
        if (this.dt) {
            this.ck(e);
        }
        else {
            this.cl(e);
        }
        this.mHandler.removeCallbacks((Runnable)this);
        if (e.cS() && e.dP.cv()) {
            final long cw = e.dP.cw();
            long min = 61000L - System.currentTimeMillis() % 60000L;
            if (cw > 0L) {
                min = Math.min(min, cw);
            }
            this.mHandler.postDelayed((Runnable)this, min);
        }
    }
    
    private void ck(final e e) {
        ColorStateList dh = null;
        this.setBackgroundResource(this.dm);
        final d dp = e.dP;
        if (!TextUtils.isEmpty((CharSequence)dp.getTitle())) {
            if (dp.cv()) {
                this.dD.setText((CharSequence)this.cn());
            }
            else {
                this.dD.setText((CharSequence)dp.getTitle());
            }
            this.dD.setEllipsize(dp.cx(true));
        }
        if (!TextUtils.isEmpty((CharSequence)dp.cy()) || dp.getIcon() != null) {
            this.dx.setText((CharSequence)dp.cy());
            this.dx.setEllipsize(dp.cx(false));
            if (dp.getIcon() != null) {
                final ImageView dw = this.dw;
                if (dp.cz() && WallpaperColorInfo.getInstance(this.getContext()).supportsDarkText()) {
                    dh = this.dH;
                }
                dw.setImageTintList(dh);
                this.dw.setImageBitmap(dp.getIcon());
            }
        }
        if (e.cR()) {
            this.dy.setVisibility(0);
            this.dy.setOnClickListener(this.dv);
            this.dy.setOnLongClickListener(this.co());
            this.dA.setText((CharSequence)e.dO.getTitle());
            this.dz.setImageBitmap(e.dO.getIcon());
        }
        else {
            this.dy.setVisibility(8);
        }
    }
    
    private void cl(final e e) {
        final int n = 8;
        this.setBackgroundResource(0);
        this.dn.setOnClickListener(this.du);
        this.dn.setOnLongClickListener(this.co());
        if (e.cR()) {
            this.dC.setVisibility(0);
            this.dE.setVisibility(0);
            this.dE.setOnClickListener(this.dv);
            this.dE.setOnLongClickListener(this.co());
            this.dG.setText((CharSequence)e.dO.getTitle());
            this.dF.setImageBitmap(e.dO.getIcon());
        }
        else {
            this.dE.setVisibility(n);
            this.dC.setVisibility(n);
        }
    }
    
    private void cm() {
        this.dD = (TextView)this.findViewById(2131624056);
        this.dx = (TextView)this.findViewById(2131624059);
        this.dw = (ImageView)this.findViewById(2131624058);
        this.dF = (ImageView)this.findViewById(2131624054);
        this.dz = (ImageView)this.findViewById(2131624062);
        this.do = (ViewGroup)this.findViewById(2131624050);
        this.dE = (ViewGroup)this.findViewById(2131624053);
        this.dy = (ViewGroup)this.findViewById(2131624060);
        this.dG = (TextView)this.findViewById(2131624055);
        this.dA = (TextView)this.findViewById(2131624063);
        this.dn = (IcuDateTextView)this.findViewById(2131624051);
        this.dC = this.findViewById(2131624052);
    }
    
    private String cn() {
        final boolean b = true;
        final d dp = this.dq.dP;
        return dp.cC(TextUtils.ellipsize((CharSequence)dp.cB(b), this.dB, this.getWidth() - this.getPaddingLeft() - this.getPaddingRight() - this.getResources().getDimensionPixelSize(2131427505) - this.dB.measureText(dp.cA(b)), TextUtils$TruncateAt.END).toString());
    }
    
    private View$OnLongClickListener co() {
        final View$OnLongClickListener view$OnLongClickListener;
        if (!this.ds) {
            view$OnLongClickListener = null;
        }
        return view$OnLongClickListener;
    }
    
    private void cs() {
        final int indexOfChild = this.indexOfChild((View)this.do);
        this.removeView((View)this.do);
        final LayoutInflater from = LayoutInflater.from(this.getContext());
        int n;
        if (this.dt) {
            n = 2130968621;
        }
        else {
            n = 2130968620;
        }
        this.addView(from.inflate(n, (ViewGroup)this, false), indexOfChild);
        this.cm();
    }
    
    protected final void cp(final int n) {
        ((UserEventDispatcherImpl)Launcher.getLauncher(this.getContext()).getUserEventDispatcher()).bp(n);
    }
    
    public void cq() {
        this.ds = this.dp.cY();
        if (this.dq != null) {
            this.cr(this.dq);
        }
        else {
            Log.d("SmartspaceView", "onGsaChanged but no data present");
        }
    }
    
    public void cr(final e dq) {
        this.dq = dq;
        int n;
        if (this.do.getVisibility() == 0) {
            n = 1;
        }
        else {
            n = 0;
        }
        this.cj(dq);
        if (n == 0) {
            this.do.setVisibility(0);
            this.do.setAlpha(0.0f);
            this.do.animate().setDuration(200L).alpha(1.0f);
        }
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.invalidate();
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.dp.da(this);
    }
    
    public void onClick(final View view) {
        if (this.dq != null && this.dq.cS()) {
            this.cp(10002);
            this.dq.dP.cu(view);
        }
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f.get(this.getContext()).da(null);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.cm();
        (this.dr = (BubbleTextView)this.findViewById(2131624046)).setTag(new j(this));
        this.dr.setContentDescription((CharSequence)"");
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        if (this.dq != null && this.dq.cS() && this.dq.dP.cv()) {
            final String cn = this.cn();
            if (!cn.equals(this.dD.getText())) {
                this.dD.setText((CharSequence)cn);
            }
        }
    }
    
    public boolean onLongClick(final View view) {
        final boolean b = true;
        final Launcher launcher = Launcher.getLauncher(this.getContext());
        final PopupContainerWithArrow popupContainerWithArrow = (PopupContainerWithArrow)launcher.getLayoutInflater().inflate(2130968612, (ViewGroup)launcher.getDragLayer(), false);
        popupContainerWithArrow.setVisibility(4);
        launcher.getDragLayer().addView((View)popupContainerWithArrow);
        final ArrayList list = new ArrayList<b>(b ? 1 : 0);
        list.add(new b());
        popupContainerWithArrow.populateAndShow(this.dr, Collections.EMPTY_LIST, Collections.EMPTY_LIST, list);
        return b;
    }
    
    public void onPause() {
        this.mHandler.removeCallbacks((Runnable)this);
    }
    
    public void onResume() {
        if (this.dq != null) {
            this.cj(this.dq);
        }
    }
    
    public void run() {
        if (this.dq != null) {
            this.cj(this.dq);
        }
    }
    
    public void setPadding(final int n, final int n2, final int n3, final int n4) {
        super.setPadding(0, 0, 0, 0);
    }
}
