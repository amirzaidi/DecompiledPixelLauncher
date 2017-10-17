// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.os.Bundle;
import android.os.Handler;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;
import com.android.launcher3.Utilities;
import android.view.View$AccessibilityDelegate;
import android.animation.TimeInterpolator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.LayoutInflater;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.ActivityNotFoundException;
import android.os.Process;
import android.content.ComponentName;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.view.ViewGroup;
import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.util.a;
import android.graphics.Point;
import android.os.Parcelable;
import android.graphics.Rect;
import android.content.Intent;
import com.android.launcher3.Launcher;
import android.util.AttributeSet;
import android.content.Context;
import android.content.BroadcastReceiver;
import android.animation.ObjectAnimator;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import android.view.View;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import android.view.View$OnClickListener;
import android.widget.FrameLayout;

public abstract class f extends FrameLayout implements View$OnClickListener, SharedPreferences$OnSharedPreferenceChangeListener
{
    private static String T;
    private static String U;
    protected View P;
    protected final NexusLauncherActivity Q;
    protected boolean R;
    protected QsbConnector S;
    private float V;
    private ObjectAnimator W;
    private final BroadcastReceiver X;
    private boolean Y;
    private int Z;
    private boolean aa;
    
    static {
        f.U = "android.intent.action.VOICE_ASSIST";
        f.T = "com.google.android.googlequicksearchbox.TEXT_ASSIST";
    }
    
    public f(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.Z = 0;
        this.X = new q(this);
        this.Q = (NexusLauncherActivity)Launcher.getLauncher(context);
    }
    
    private void U() {
        this.aa = false;
        this.Y = true;
        if (this.P != null) {
            this.P.setAlpha(0.0f);
            if (this.W != null && this.W.isRunning()) {
                this.W.end();
            }
        }
        if (this.S != null) {
            this.S.setAlpha(0.0f);
        }
    }
    
    private void V(final boolean b) {
        final float n = 1.0f;
        this.aa = false;
        if (this.Y) {
            this.Y = false;
            if (this.P != null) {
                this.P.setAlpha(n);
                if (this.W != null) {
                    this.W.start();
                    if (!b) {
                        this.W.end();
                    }
                }
            }
            if (this.S != null) {
                this.S.setAlpha(n);
                this.S.g(b);
            }
        }
    }
    
    private Intent W(final String s) {
        final int n = 1;
        final int[] array = new int[2];
        this.P.getLocationInWindow(array);
        final Rect sourceBounds = new Rect(array[0], array[n], array[0] + this.P.getWidth(), array[n] + this.P.getHeight());
        final Intent intent = new Intent(s);
        this.v(sourceBounds, intent);
        intent.setSourceBounds(sourceBounds);
        final View viewById = this.findViewById(2131624035);
        if (viewById != null) {
            intent.putExtra("source_mic_offset", (Parcelable)this.X(viewById, sourceBounds));
        }
        return intent.putExtra("source_round_left", (boolean)(n != 0)).putExtra("source_round_right", (boolean)(n != 0)).putExtra("source_logo_offset", (Parcelable)this.X(this.findViewById(2131624034), sourceBounds)).setPackage("com.google.android.googlequicksearchbox").addFlags(1342177280);
    }
    
    private Point X(final View view, final Rect rect) {
        final int[] array = new int[2];
        view.getLocationInWindow(array);
        final Point point = new Point();
        point.x = array[0] - rect.left + view.getWidth() / 2;
        point.y = array[1] - rect.top + view.getHeight() / 2;
        return point;
    }
    
    private void Y() {
        final int n = 8;
        int visibility = 0;
        final boolean cb = a.cB(this.getContext());
        if (this.P != null) {
            final View p = this.P;
            int visibility2;
            if (cb) {
                visibility2 = 0;
            }
            else {
                visibility2 = n;
            }
            p.setVisibility(visibility2);
        }
        if (this.S != null) {
            final QsbConnector s = this.S;
            if (!cb) {
                visibility = n;
            }
            s.setVisibility(visibility);
        }
    }
    
    private void Z(final SharedPreferences sharedPreferences) {
        final boolean w = this.w(sharedPreferences);
        boolean b;
        if (this.S != null) {
            b = true;
        }
        else {
            b = false;
        }
        if (w && (b ^ true)) {
            this.addView((View)(this.S = (QsbConnector)this.Q.getLayoutInflater().inflate(2130968610, (ViewGroup)this, false)), 0);
        }
        else if (!w && b) {
            this.removeView((View)this.S);
            this.S = null;
        }
    }
    
    private void aa() {
        if (this.hasWindowFocus()) {
            this.aa = true;
        }
        else {
            this.U();
        }
    }
    
    private void ab(final String s) {
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
    
    public void G(final SharedPreferences sharedPreferences) {
        final int n = 1;
        this.R = (!sharedPreferences.getBoolean("opa_enabled", (boolean)(n != 0)) && (UserManagerCompat.getInstance(this.getContext()).isDemoUser() ^ true));
        final int u = this.u(this.R);
        if (u == this.Z) {
            return;
        }
        this.Z = u;
        if (this.P != null) {
            this.removeView(this.P);
        }
        this.P = LayoutInflater.from(this.getContext()).inflate(this.Z, (ViewGroup)this, false);
        this.V = this.getResources().getDimensionPixelSize(2131427483);
        this.addView(this.P);
        final View p = this.P;
        final String s = "elevation";
        final float[] array = { 0.0f, 0.0f };
        array[n] = this.V;
        (this.W = ObjectAnimator.ofFloat((Object)p, s, array)).setInterpolator((TimeInterpolator)new AccelerateDecelerateInterpolator());
        if (this.Y) {
            this.U();
        }
        this.P.setOnClickListener((View$OnClickListener)this);
        this.P.setAccessibilityDelegate((View$AccessibilityDelegate)new b());
        if (this.R) {
            this.P.findViewById(2131624035).setOnClickListener((View$OnClickListener)this);
        }
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        final SharedPreferences sharedPreferences = this.getContext().getSharedPreferences("com.android.launcher3.device.prefs", 0);
        this.G(sharedPreferences);
        sharedPreferences.registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        if (!this.Q.useVerticalBarLayout()) {
            final SharedPreferences prefs = Utilities.getPrefs(this.getContext());
            prefs.registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
            this.Z(prefs);
        }
        this.getContext().registerReceiver(this.X, a.cA("android.intent.action.PACKAGE_CHANGED"));
        this.Y();
    }
    
    public void onClick(final View view) {
        final UserEventDispatcherImpl userEventDispatcherImpl = (UserEventDispatcherImpl)this.Q.getUserEventDispatcher();
        int numColumns;
        if (c.p(view.getContext())) {
            numColumns = this.Q.getDeviceProfile().inv.numColumns;
        }
        else {
            numColumns = 1;
        }
        userEventDispatcherImpl.cz(numColumns);
        if (view.getId() == 2131624035) {
            this.ab(f.U);
        }
        else {
            this.getContext().sendOrderedBroadcast(this.W("com.google.nexuslauncher.FAST_TEXT_SEARCH"), (String)null, (BroadcastReceiver)new r(this), (Handler)null, 0, (String)null, (Bundle)null);
        }
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.getContext().getSharedPreferences("com.android.launcher3.device.prefs", 0).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        if (!this.Q.useVerticalBarLayout()) {
            Utilities.getPrefs(this.getContext()).unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this);
        }
        this.getContext().unregisterReceiver(this.X);
    }
    
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String s) {
        if ("opa_enabled".equals(s)) {
            this.G(sharedPreferences);
            this.Y();
        }
        else if ("pref_enable_minus_one".equals(s)) {
            this.Z(sharedPreferences);
            this.Y();
        }
    }
    
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        if (!b && this.aa) {
            this.U();
        }
        else if (b) {
            this.V(true);
        }
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        super.onWindowVisibilityChanged(n);
        this.V(false);
    }
    
    protected abstract int u(final boolean p0);
    
    protected void v(final Rect rect, final Intent intent) {
    }
    
    protected boolean w(final SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean("pref_enable_minus_one", true);
    }
}
