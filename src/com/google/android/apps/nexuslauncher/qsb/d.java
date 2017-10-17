// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.os.SystemClock;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.android.launcher3.util.Preconditions;
import java.util.Iterator;
import android.content.Intent;
import android.widget.RemoteViews;
import android.os.Bundle;
import android.content.BroadcastReceiver;
import com.android.launcher3.OnAlarmListener;
import java.util.ArrayList;
import android.content.Context;
import com.android.launcher3.Alarm;
import com.google.android.apps.nexuslauncher.util.c;

public class d
{
    static long INITIAL_LOAD_TIMEOUT;
    private static d O;
    private a K;
    private boolean L;
    private final c M;
    private final Alarm N;
    private final Context mContext;
    private final ArrayList mListeners;
    
    static {
        d.INITIAL_LOAD_TIMEOUT = 5000L;
    }
    
    d(final Context mContext) {
        this.L = false;
        this.mContext = mContext;
        this.mListeners = new ArrayList();
        this.M = new c(this.mContext);
        (this.N = new Alarm()).setOnAlarmListener(new o(this));
        this.P();
        this.N.setAlarm(d.INITIAL_LOAD_TIMEOUT);
        this.O(this.K);
        mContext.registerReceiver((BroadcastReceiver)new p(this), com.google.android.apps.nexuslauncher.util.a.cA("android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_DATA_CLEARED"));
    }
    
    private void O(final a a) {
        final Bundle ce = this.M.cE();
        if (ce == null) {
            return;
        }
        final a k = new a(ce);
        if (k.d != null && k.b == a.b && k.a == a.a && k.a() > 0L) {
            this.K = k;
            this.R();
        }
    }
    
    private void P() {
        this.K = new a(this.mContext, null);
        this.mContext.sendBroadcast(new Intent("com.google.android.apps.gsa.weatherwidget.ENABLE_UPDATE").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456));
    }
    
    private void Q(final Alarm alarm) {
        if (this.K.d != null || (this.L ^ true)) {
            this.K = new a(this.mContext, null);
            this.R();
        }
    }
    
    private void R() {
        this.L = true;
        final Iterator iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().D(this.K);
        }
        this.N.cancelAlarm();
        if (this.K.d != null) {
            this.N.setAlarm(this.K.a());
        }
    }
    
    public static d get(final Context context) {
        Preconditions.assertUIThread();
        if (d.O == null) {
            d.O = new d(context.getApplicationContext());
        }
        return d.O;
    }
    
    public a L(final e e) {
        this.mListeners.add(e);
        a k;
        if (this.L) {
            k = this.K;
        }
        else {
            k = null;
        }
        return k;
    }
    
    public void M(final e e) {
        this.mListeners.remove(e);
    }
    
    public void N(final RemoteViews remoteViews) {
        if (remoteViews != null) {
            this.K = new a(this.mContext, remoteViews);
            this.R();
            this.M.cG(this.K.b());
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.println();
        printWriter.println(s + "WeatherManager");
        if (this.K == null) {
            printWriter.println(s + "  mCachedData = null");
        }
        else {
            printWriter.println(s + "  views " + this.K.d);
            printWriter.println(s + "  gsaVersion " + this.K.b);
            printWriter.println(s + "  gsaUpdateTime " + this.K.a);
            printWriter.println(s + "  publishTime " + this.K.c);
            printWriter.println(s + "  elapsedDuration " + (SystemClock.uptimeMillis() - this.K.c));
        }
    }
}
