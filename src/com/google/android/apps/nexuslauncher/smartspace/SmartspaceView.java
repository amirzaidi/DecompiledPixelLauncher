// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import com.android.launcher3.popup.PopupContainerWithArrow;
import android.animation.ValueAnimator;
import com.android.launcher3.Launcher;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;
import android.animation.LayoutTransition;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.view.LayoutInflater;
import android.text.TextUtils;
import android.text.TextUtils$TruncateAt;
import com.android.launcher3.util.Themes;
import android.util.AttributeSet;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.text.TextPaint;
import com.android.launcher3.BubbleTextView;
import android.view.ViewGroup;
import com.google.android.apps.nexuslauncher.graphics.IcuDateTextView;
import android.content.res.ColorStateList;
import android.widget.TextView;
import android.widget.ImageView;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.widget.FrameLayout;

public class SmartspaceView extends FrameLayout implements a, ValueAnimator$AnimatorUpdateListener, View$OnClickListener, View$OnLongClickListener, Runnable
{
    private ImageView eA;
    private TextView eB;
    private final ColorStateList eC;
    private final int eh;
    private IcuDateTextView ei;
    private ViewGroup ej;
    private final b ek;
    private d el;
    private BubbleTextView em;
    private boolean en;
    private boolean eo;
    private final View$OnClickListener ep;
    private final View$OnClickListener eq;
    private ImageView er;
    private TextView es;
    private ViewGroup et;
    private ImageView eu;
    private TextView ev;
    private final TextPaint ew;
    private View ex;
    private TextView ey;
    private ViewGroup ez;
    private final Handler mHandler;
    
    public SmartspaceView(final Context context, final AttributeSet set) {
        super(context, set);
        this.ep = (View$OnClickListener)new j(this);
        this.eq = (View$OnClickListener)new k(this);
        this.ek = b.get(context);
        this.mHandler = new Handler();
        this.eC = ColorStateList.valueOf(Themes.getAttrColor(this.getContext(), 2130772013));
        this.en = this.ek.dn();
        this.eh = 2130837511;
        (this.ew = new TextPaint()).setTextSize((float)this.getResources().getDimensionPixelSize(2131427504));
    }
    
    private void dA() {
        this.ey = (TextView)this.findViewById(2131624056);
        this.es = (TextView)this.findViewById(2131624059);
        this.er = (ImageView)this.findViewById(2131624058);
        this.eA = (ImageView)this.findViewById(2131624054);
        this.eu = (ImageView)this.findViewById(2131624062);
        this.ej = (ViewGroup)this.findViewById(2131624050);
        this.ez = (ViewGroup)this.findViewById(2131624053);
        this.et = (ViewGroup)this.findViewById(2131624060);
        this.eB = (TextView)this.findViewById(2131624055);
        this.ev = (TextView)this.findViewById(2131624063);
        this.ei = (IcuDateTextView)this.findViewById(2131624051);
        this.ex = this.findViewById(2131624052);
    }
    
    private String dB() {
        final boolean b = true;
        final f ee = this.el.eE;
        return ee.dX(TextUtils.ellipsize((CharSequence)ee.dW(b), this.ew, this.getWidth() - this.getPaddingLeft() - this.getPaddingRight() - this.getResources().getDimensionPixelSize(2131427505) - this.ew.measureText(ee.dV(b)), TextUtils$TruncateAt.END).toString());
    }
    
    private View$OnLongClickListener dC() {
        final View$OnLongClickListener view$OnLongClickListener;
        if (!this.en) {
            view$OnLongClickListener = null;
        }
        return view$OnLongClickListener;
    }
    
    private void dE() {
        if (this.el != null) {
            this.dj(this.el, true);
        }
    }
    
    private void dF() {
        final int indexOfChild = this.indexOfChild((View)this.ej);
        this.removeView((View)this.ej);
        final LayoutInflater from = LayoutInflater.from(this.getContext());
        int n;
        if (this.eo) {
            n = 2130968622;
        }
        else {
            n = 2130968621;
        }
        this.addView(from.inflate(n, (ViewGroup)this, false), indexOfChild);
        this.dA();
    }
    
    private void dy(final d d) {
        ColorStateList ec = null;
        this.setBackgroundResource(this.eh);
        final f ee = d.eE;
        if (!TextUtils.isEmpty((CharSequence)ee.getTitle())) {
            if (ee.dQ()) {
                this.ey.setText((CharSequence)this.dB());
            }
            else {
                this.ey.setText((CharSequence)ee.getTitle());
            }
            this.ey.setEllipsize(ee.dS(true));
        }
        if (!TextUtils.isEmpty((CharSequence)ee.dT()) || ee.getIcon() != null) {
            this.es.setText((CharSequence)ee.dT());
            this.es.setEllipsize(ee.dS(false));
            if (ee.getIcon() != null) {
                final ImageView er = this.er;
                if (ee.dU() && WallpaperColorInfo.getInstance(this.getContext()).supportsDarkText()) {
                    ec = this.eC;
                }
                er.setImageTintList(ec);
                this.er.setImageBitmap(ee.getIcon());
            }
        }
        if (d.dI()) {
            this.et.setVisibility(0);
            this.et.setOnClickListener(this.eq);
            this.et.setOnLongClickListener(this.dC());
            this.ev.setText((CharSequence)d.eD.getTitle());
            this.eu.setImageBitmap(d.eD.getIcon());
        }
        else {
            this.et.setVisibility(8);
        }
    }
    
    private void dz(final d d, final boolean b) {
        final int n = 8;
        final LayoutTransition layoutTransition = this.ej.getLayoutTransition();
        if (b && layoutTransition == null) {
            this.ej.setLayoutTransition(new LayoutTransition());
        }
        else if (!b && layoutTransition != null) {
            this.ej.setLayoutTransition((LayoutTransition)null);
        }
        this.setBackgroundResource(0);
        this.ei.setOnClickListener(this.ep);
        this.ei.setOnLongClickListener(this.dC());
        if (d.dI()) {
            this.ex.setVisibility(0);
            this.ez.setVisibility(0);
            this.ez.setOnClickListener(this.eq);
            this.ez.setOnLongClickListener(this.dC());
            this.eB.setText((CharSequence)d.eD.getTitle());
            this.eA.setImageBitmap(d.eD.getIcon());
        }
        else {
            this.ez.setVisibility(n);
            this.ex.setVisibility(n);
        }
    }
    
    protected final void dD(final int n) {
        ((UserEventDispatcherImpl)Launcher.getLauncher(this.getContext()).getUserEventDispatcher()).eW(n);
    }
    
    public void di() {
        this.en = this.ek.dn();
        this.dE();
    }
    
    public void dj(final d el, final boolean b) {
        this.el = el;
        final boolean dj = el.dJ();
        if (this.eo != dj) {
            this.eo = dj;
            this.dF();
        }
        this.setOnClickListener((View$OnClickListener)this);
        this.setOnLongClickListener(this.dC());
        if (this.eo) {
            this.dy(el);
        }
        else {
            this.dz(el, b);
        }
        this.mHandler.removeCallbacks((Runnable)this);
        if (el.dJ() && el.eE.dQ()) {
            final long dr = el.eE.dR();
            long min = 61000L - System.currentTimeMillis() % 60000L;
            if (dr > 0L) {
                min = Math.min(min, dr);
            }
            this.mHandler.postDelayed((Runnable)this, min);
        }
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.invalidate();
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.ek.dt(this);
    }
    
    public void onClick(final View view) {
        if (this.el != null && this.el.dJ()) {
            this.dD(3);
            this.el.eE.dP(view);
        }
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.ek.dt(null);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.dA();
        (this.em = (BubbleTextView)this.findViewById(2131624046)).setTag(new l(this));
        this.em.setContentDescription((CharSequence)"");
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        if (this.el != null && this.el.dJ() && this.el.eE.dQ()) {
            final String db = this.dB();
            if (!db.equals(this.ey.getText())) {
                this.ey.setText((CharSequence)db);
            }
        }
    }
    
    public boolean onLongClick(final View view) {
        final boolean b = true;
        final Launcher launcher = Launcher.getLauncher(this.getContext());
        final PopupContainerWithArrow popupContainerWithArrow = (PopupContainerWithArrow)launcher.getLayoutInflater().inflate(2130968612, (ViewGroup)launcher.getDragLayer(), false);
        popupContainerWithArrow.setVisibility(4);
        launcher.getDragLayer().addView((View)popupContainerWithArrow);
        final ArrayList list = new ArrayList<c>(b ? 1 : 0);
        list.add(new c());
        popupContainerWithArrow.populateAndShow(this.em, Collections.EMPTY_LIST, Collections.EMPTY_LIST, list);
        return b;
    }
    
    public void onPause() {
        this.mHandler.removeCallbacks((Runnable)this);
    }
    
    public void onResume() {
        this.dE();
    }
    
    public void run() {
        this.dE();
    }
    
    public void setPadding(final int n, final int n2, final int n3, final int n4) {
        super.setPadding(0, 0, 0, 0);
    }
}
