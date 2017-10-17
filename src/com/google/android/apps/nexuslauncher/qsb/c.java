// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import com.android.launcher3.util.Preconditions;
import android.content.SharedPreferences;
import android.content.IntentFilter;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.a;
import com.google.android.gms.phenotype.f;
import com.google.android.gms.common.api.e;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import android.content.Context;
import android.content.BroadcastReceiver;

public class c
{
    private static final String[] q;
    private static final BroadcastReceiver r;
    private static Boolean s;
    
    static {
        q = new String[] { "DUMMY_LOG_SOURCE" };
        r = new i();
    }
    
    static int n(final Context context) {
        try {
            final PackageManager packageManager = context.getPackageManager();
            try {
                final PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                try {
                    return packageInfo.versionCode;
                }
                catch (PackageManager$NameNotFoundException ex) {
                    Log.e("QsbExperiment", "Could not find own package", (Throwable)ex);
                    return 1;
                }
            }
            catch (PackageManager$NameNotFoundException ex2) {}
        }
        catch (PackageManager$NameNotFoundException ex3) {}
    }
    
    private static void o(final Context context, final int[] array) {
        final d build = new e(context).dO(f.lS).build();
        build.dv();
        f.lQ.oE(build, "LOCAL.com.google.android.agsa.QSB", 1, c.q, array, null).ds(new l(build));
    }
    
    public static boolean p(final Context context) {
        int n = 1;
        if (c.s == null) {
            final Context applicationContext = context.getApplicationContext();
            final int int1 = prefs(applicationContext).getInt("qsb_experiment_status", -1);
            c.s = false;
            int[] array2 = null;
            switch (int1) {
                default: {
                    final int[] array = new int[0];
                    s(applicationContext, 0, n != 0);
                    n = 0;
                    array2 = array;
                    break;
                }
                case 1: {
                    final int[] array3 = new int[n];
                    array3[0] = 8506808;
                    c.s = (n != 0);
                    array2 = array3;
                    break;
                }
                case 2: {
                    final int[] array4 = new int[n];
                    array4[0] = 8506809;
                    array2 = array4;
                    break;
                }
                case 0: {
                    n = 0;
                    array2 = null;
                    break;
                }
            }
            if (array2 != null) {
                o(applicationContext, array2);
            }
            if (n != 0) {
                applicationContext.registerReceiver(c.r, new IntentFilter("com.google.android.gms.phenotype.UPDATE"));
                q(applicationContext);
            }
        }
        return c.s;
    }
    
    static SharedPreferences prefs(final Context context) {
        return context.getSharedPreferences("com.android.launcher3.device.prefs", 0);
    }
    
    private static void q(final Context context) {
        final d build = new e(context).dO(f.lS).build();
        build.dv();
        f.lQ.oB(build, context.getPackageName(), n(context), new String[] { "GOOGLE_NOW_LAUNCHER" }, null).ds(new j(build, context));
    }
    
    static void r(final Context context, final int n) {
        s(context, n, false);
    }
    
    private static void s(final Context context, final int n, final boolean b) {
        Preconditions.assertUIThread();
        final SharedPreferences prefs = prefs(context);
        if (b || (prefs.contains("qsb_experiment_status") ^ true)) {
            prefs.edit().putInt("qsb_experiment_status", n).commit();
        }
    }
}
