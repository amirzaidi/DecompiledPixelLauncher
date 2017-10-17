// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import com.google.android.apps.nexuslauncher.smartspace.b.i;
import java.util.List;
import java.io.PrintWriter;
import android.os.Message;
import android.content.Intent;
import android.content.BroadcastReceiver;
import com.google.android.apps.nexuslauncher.a.b;
import com.android.launcher3.OnAlarmListener;
import android.os.Looper;
import com.android.launcher3.LauncherModel;
import android.os.Handler;
import android.content.Context;
import com.google.android.apps.nexuslauncher.a.a;
import com.android.launcher3.Alarm;
import android.os.Handler$Callback;

public class f implements Handler$Callback
{
    private static f dU;
    private final e dQ;
    private final Alarm dR;
    private c dS;
    private final a dT;
    private final Context mAppContext;
    private final Handler mUiHandler;
    private final Handler mWorker;
    
    private f(final Context mAppContext) {
        this.mWorker = new Handler(LauncherModel.getWorkerLooper(), (Handler$Callback)this);
        this.mUiHandler = new Handler(Looper.getMainLooper(), (Handler$Callback)this);
        this.mAppContext = mAppContext;
        this.dQ = new e();
        this.dT = new a(mAppContext);
        (this.dR = new Alarm()).setOnAlarmListener(new k(this));
        this.dd();
        mAppContext.registerReceiver((BroadcastReceiver)new l(this), b.dx("android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_DATA_CLEARED"));
    }
    
    private Intent db() {
        return new Intent("com.google.android.apps.gsa.smartspace.SETTINGS").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456);
    }
    
    private void dc() {
        final boolean cr = this.dQ.cR();
        final boolean cs = this.dQ.cS();
        this.dQ.cU();
        if (cr && (this.dQ.cR() ^ true)) {
            this.df(null, SmartspaceController$Store.dW);
        }
        if (cs && (this.dQ.cS() ^ true)) {
            this.df(null, SmartspaceController$Store.dV);
            this.mAppContext.sendBroadcast(new Intent("com.google.android.apps.gsa.smartspace.EXPIRE_EVENT").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456));
        }
    }
    
    private void dd() {
        if (this.dS != null) {
            this.dS.cq();
        }
        this.de();
    }
    
    private void de() {
        this.mAppContext.sendBroadcast(new Intent("com.google.android.apps.gsa.smartspace.ENABLE_UPDATE").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456));
    }
    
    private void df(final com.google.android.apps.nexuslauncher.smartspace.a a, final SmartspaceController$Store smartspaceController$Store) {
        Message.obtain(this.mWorker, 2, smartspaceController$Store.ordinal(), 0, (Object)a).sendToTarget();
    }
    
    public static f get(final Context context) {
        if (f.dU == null) {
            f.dU = new f(context.getApplicationContext());
        }
        return f.dU;
    }
    
    private void update() {
        this.dR.cancelAlarm();
        final long ct = this.dQ.cT();
        if (ct > 0L) {
            this.dR.setAlarm(ct);
        }
        if (this.dS != null) {
            this.dS.cr(this.dQ);
        }
    }
    
    public void cV(final com.google.android.apps.nexuslauncher.smartspace.a a) {
        if (a != null && (a.dj ^ true)) {
            this.df(a, SmartspaceController$Store.dW);
        }
        else {
            this.df(a, SmartspaceController$Store.dV);
        }
    }
    
    public void cW() {
        Message.obtain(this.mWorker, 1).sendToTarget();
    }
    
    public void cX(final String s, final PrintWriter printWriter) {
        printWriter.println();
        printWriter.println(s + "SmartspaceController");
        printWriter.println(s + "  weather " + this.dQ.dO);
        printWriter.println(s + "  current " + this.dQ.dP);
    }
    
    public boolean cY() {
        boolean b = false;
        final List queryBroadcastReceivers = this.mAppContext.getPackageManager().queryBroadcastReceivers(this.db(), 0);
        if (queryBroadcastReceivers != null) {
            b = (queryBroadcastReceivers.isEmpty() ^ true);
        }
        return b;
    }
    
    public void cZ() {
        this.mAppContext.sendBroadcast(this.db());
    }
    
    public void da(final c ds) {
        this.dS = ds;
    }
    
    public boolean handleMessage(final Message message) {
        d cd = null;
        final int n = 1;
        switch (message.what) {
            case 1: {
                final i i = new i();
                d cd2;
                if (this.dT.dv(SmartspaceController$Store.dW.filename, i)) {
                    cd2 = d.cD(this.mAppContext, i, n != 0);
                }
                else {
                    cd2 = null;
                }
                final i j = new i();
                if (this.dT.dv(SmartspaceController$Store.dV.filename, j)) {
                    cd = d.cD(this.mAppContext, j, false);
                }
                final Handler mUiHandler = this.mUiHandler;
                final d[] array = { cd2, null };
                array[n] = cd;
                Message.obtain(mUiHandler, 101, (Object)array).sendToTarget();
                break;
            }
            case 2: {
                this.dT.dw(d.cQ(this.mAppContext, (com.google.android.apps.nexuslauncher.smartspace.a)message.obj), SmartspaceController$Store.values()[message.arg1].filename);
                Message.obtain(this.mUiHandler, n).sendToTarget();
                break;
            }
            case 101: {
                final d[] array2 = (d[])message.obj;
                if (array2 != null) {
                    final e dq = this.dQ;
                    d do1;
                    if (array2.length > 0) {
                        do1 = array2[0];
                    }
                    else {
                        do1 = null;
                    }
                    dq.dO = do1;
                    final e dq2 = this.dQ;
                    if (array2.length > n) {
                        cd = array2[n];
                    }
                    dq2.dP = cd;
                }
                this.dQ.cU();
                this.update();
                break;
            }
        }
        return n != 0;
    }
}
