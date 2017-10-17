// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.google.android.gms.common.api.e;
import android.os.IBinder;
import android.content.Intent;
import com.android.launcher3.Launcher;
import android.os.Bundle;
import android.app.Activity;
import android.text.TextUtils;
import com.google.android.gms.phenotype.Configuration;
import android.net.NetworkInfo;
import android.content.Context;
import com.google.android.gms.phenotype.f;
import android.util.Log;
import com.google.android.gms.phenotype.Flag;
import com.google.android.gms.phenotype.b;
import java.util.concurrent.TimeUnit;
import android.net.ConnectivityManager;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.c;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import android.app.Application$ActivityLifecycleCallbacks;
import com.google.android.gms.common.api.a;
import android.app.Service;

public class ExperimentSetupService extends Service implements a, Application$ActivityLifecycleCallbacks, OnAlarmListener
{
    private static final long t;
    private Alarm mAlarm;
    private c u;
    private d v;
    private ConnectivityManager w;
    
    static {
        t = TimeUnit.SECONDS.toMillis(5);
    }
    
    private void B() {
        this.mAlarm.cancelAlarm();
        this.mAlarm.setAlarm(ExperimentSetupService.t);
    }
    
    static boolean x(final b b) {
        final Flag z = z(b, "QSBFeature__qsb_kill_switch");
        return z == null || z.oK();
    }
    
    private void y() {
        final NetworkInfo activeNetworkInfo = this.w.getActiveNetworkInfo();
        if (activeNetworkInfo == null || (activeNetworkInfo.isConnected() ^ true) || this.u != null) {
            Log.i("ExperimentSetupService", "Not connected, will retry again later");
            this.B();
            return;
        }
        Log.d("ExperimentSetupService", "doSync");
        (this.u = f.lQ.oC(this.v, this.getPackageName(), com.google.android.apps.nexuslauncher.qsb.c.n((Context)this), new String[] { "GOOGLE_NOW_LAUNCHER" }, null, "", null)).ds(this);
    }
    
    private static Flag z(final b b, final String s) {
        final Configuration[] la = b.oF().lA;
        Flag flag;
        if (la.length < 1) {
            flag = null;
        }
        else {
            flag = la[0].lO.get(s);
        }
        if (flag == null || flag.ld != 2) {
            flag = null;
        }
        return flag;
    }
    
    public void A(final b b) {
        this.u = null;
        Log.d("ExperimentSetupService", "Result received " + b.oF());
        if (!b.dr().dF() || TextUtils.isEmpty((CharSequence)b.oF().lC)) {
            Log.i("ExperimentSetupService", "Default result returned by the server. will retry in some time");
            this.B();
            return;
        }
        final Flag z = z(b, "QSBFeature__qsb_is_wide");
        final Flag z2 = z(b, "QSBFeature__qsb_is_in_experiment");
        int n;
        if (z2 != null && z != null && !(z2.oK() ^ true)) {
            if (x(b)) {
                n = 3;
            }
            else if (z.oK()) {
                n = 1;
            }
            else {
                n = 2;
            }
        }
        else {
            n = 0;
        }
        Log.d("ExperimentSetupService", "Writing experiment status " + n);
        com.google.android.apps.nexuslauncher.qsb.c.r((Context)this, n);
        this.stopSelf();
    }
    
    public void onActivityCreated(final Activity activity, final Bundle bundle) {
        if (activity instanceof Launcher) {
            Log.d("ExperimentSetupService", "Launcher started");
            this.stopSelf();
        }
    }
    
    public void onActivityDestroyed(final Activity activity) {
    }
    
    public void onActivityPaused(final Activity activity) {
    }
    
    public void onActivityResumed(final Activity activity) {
    }
    
    public void onActivitySaveInstanceState(final Activity activity, final Bundle bundle) {
    }
    
    public void onActivityStarted(final Activity activity) {
    }
    
    public void onActivityStopped(final Activity activity) {
    }
    
    public void onAlarm(final Alarm alarm) {
        this.y();
    }
    
    public IBinder onBind(final Intent intent) {
        return null;
    }
    
    public void onCreate() {
        super.onCreate();
        this.getApplication().registerActivityLifecycleCallbacks((Application$ActivityLifecycleCallbacks)this);
        (this.v = new e((Context)this).dO(f.lS).build()).dv();
        (this.mAlarm = new Alarm()).setOnAlarmListener(this);
        this.w = (ConnectivityManager)this.getSystemService((Class)ConnectivityManager.class);
        this.y();
    }
    
    public void onDestroy() {
        Log.d("ExperimentSetupService", "Destroying service");
        this.getApplication().unregisterActivityLifecycleCallbacks((Application$ActivityLifecycleCallbacks)this);
        if (this.u != null) {
            this.u.cancel();
            this.u = null;
        }
        this.mAlarm.setOnAlarmListener(null);
        this.mAlarm.cancelAlarm();
        this.v.dx();
        super.onDestroy();
    }
}
