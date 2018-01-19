// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import com.google.android.apps.nexuslauncher.smartspace.b.i;
import com.android.launcher3.util.Preconditions;
import java.util.List;
import java.io.PrintWriter;
import android.content.Intent;
import android.os.Message;
import android.content.BroadcastReceiver;
import com.android.launcher3.OnAlarmListener;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Handler;
import android.content.Context;
import com.android.launcher3.Alarm;
import android.os.Handler$Callback;

public class b implements Handler$Callback
{
    private static b ed;
    private final d dZ;
    private final Alarm ea;
    private a eb;
    private final com.google.android.apps.nexuslauncher.b.b ec;
    private final Context mAppContext;
    private final Handler mUiHandler;
    private final Handler mWorker;
    
    private b(final Context mAppContext) {
        final int n = 1;
        this.mUiHandler = new Handler(Looper.getMainLooper(), (Handler$Callback)this);
        final HandlerThread handlerThread = new HandlerThread("smartspace-loader");
        handlerThread.start();
        this.mWorker = new Handler(handlerThread.getLooper(), (Handler$Callback)this);
        this.mAppContext = mAppContext;
        this.dZ = new d();
        this.ec = new com.google.android.apps.nexuslauncher.b.b(mAppContext);
        (this.ea = new Alarm()).setOnAlarmListener(new g(this));
        this.dr();
        final h h = new h(this);
        final String[] array = new String[4];
        array[0] = "android.intent.action.PACKAGE_ADDED";
        array[n] = "android.intent.action.PACKAGE_CHANGED";
        array[2] = "android.intent.action.PACKAGE_REMOVED";
        array[3] = "android.intent.action.PACKAGE_DATA_CLEARED";
        mAppContext.registerReceiver((BroadcastReceiver)h, com.google.android.apps.nexuslauncher.b.a.eL(array));
        Message.obtain(this.mWorker, n).sendToTarget();
    }
    
    private Intent dp() {
        return new Intent("com.google.android.apps.gsa.smartspace.SETTINGS").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456);
    }
    
    private void dq() {
        final boolean di = this.dZ.dI();
        final boolean dj = this.dZ.dJ();
        this.dZ.dK();
        if (di && (this.dZ.dI() ^ true)) {
            this.du(null, SmartspaceController$Store.ef);
        }
        if (dj && (this.dZ.dJ() ^ true)) {
            this.du(null, SmartspaceController$Store.ee);
            this.mAppContext.sendBroadcast(new Intent("com.google.android.apps.gsa.smartspace.EXPIRE_EVENT").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456));
        }
    }
    
    private void dr() {
        if (this.eb != null) {
            this.eb.di();
        }
        this.ds();
    }
    
    private void ds() {
        this.mAppContext.sendBroadcast(new Intent("com.google.android.apps.gsa.smartspace.ENABLE_UPDATE").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456));
    }
    
    private void du(final e e, final SmartspaceController$Store smartspaceController$Store) {
        Message.obtain(this.mWorker, 2, smartspaceController$Store.ordinal(), 0, (Object)e).sendToTarget();
    }
    
    private void dv(final boolean b) {
        this.ea.cancelAlarm();
        final long dh = this.dZ.dH();
        if (dh > 0L) {
            this.ea.setAlarm(dh);
        }
        if (this.eb != null) {
            this.eb.dj(this.dZ, b);
        }
    }
    
    public static b get(final Context context) {
        if (b.ed == null) {
            b.ed = new b(context.getApplicationContext());
        }
        return b.ed;
    }
    
    public void dl(final e e) {
        if (e != null && (e.eF ^ true)) {
            this.du(e, SmartspaceController$Store.ef);
        }
        else {
            this.du(e, SmartspaceController$Store.ee);
        }
    }
    
    public void dm(final String s, final PrintWriter printWriter) {
        printWriter.println();
        printWriter.println(s + "SmartspaceController");
        printWriter.println(s + "  weather " + this.dZ.eD);
        printWriter.println(s + "  current " + this.dZ.eE);
    }
    
    public boolean dn() {
        boolean b = false;
        final List queryBroadcastReceivers = this.mAppContext.getPackageManager().queryBroadcastReceivers(this.dp(), 0);
        if (queryBroadcastReceivers != null) {
            b = (queryBroadcastReceivers.isEmpty() ^ true);
        }
        return b;
    }
    
    public void do() {
        this.mAppContext.sendBroadcast(this.dp());
    }
    
    public void dt(final a eb) {
        this.eb = eb;
        if (this.dZ != null && this.eb != null) {
            this.eb.dj(this.dZ, true);
        }
    }
    
    public boolean handleMessage(final Message message) {
        f do1 = null;
        final int n = 1;
        switch (message.what) {
            case 2: {
                Preconditions.assertNonUiThread();
                this.ec.eO(f.dN(this.mAppContext, (e)message.obj), SmartspaceController$Store.values()[message.arg1].filename);
            }
            case 1: {
                Preconditions.assertNonUiThread();
                final i i = new i();
                f do2;
                if (this.ec.eP(SmartspaceController$Store.ef.filename, i)) {
                    do2 = f.dO(this.mAppContext, i, n != 0);
                }
                else {
                    do2 = null;
                }
                final i j = new i();
                if (this.ec.eP(SmartspaceController$Store.ee.filename, j)) {
                    do1 = f.dO(this.mAppContext, j, false);
                }
                final int what = message.what;
                final Handler mUiHandler = this.mUiHandler;
                final f[] array = { do2, null };
                array[n] = do1;
                Message.obtain(mUiHandler, 101, what, 0, (Object)array).sendToTarget();
                break;
            }
            case 101: {
                Preconditions.assertUIThread();
                final f[] array2 = (f[])message.obj;
                if (array2 != null) {
                    final d dz = this.dZ;
                    f ed;
                    if (array2.length > 0) {
                        ed = array2[0];
                    }
                    else {
                        ed = null;
                    }
                    dz.eD = ed;
                    final d dz2 = this.dZ;
                    if (array2.length > n) {
                        do1 = array2[n];
                    }
                    dz2.eE = do1;
                }
                this.dZ.dK();
                this.dv(message.arg1 != n && n);
                break;
            }
        }
        return n != 0;
    }
}
