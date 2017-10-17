// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.util.Log;
import android.os.Process;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.SystemClock;
import android.app.AlarmManager;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import android.content.Context;

class IconShapeOverride$OverrideApplyHandler implements Runnable
{
    private final Context mContext;
    private final String mValue;
    
    private IconShapeOverride$OverrideApplyHandler(final Context mContext, final String mValue) {
        this.mContext = mContext;
        this.mValue = mValue;
    }
    
    public void run() {
        Utilities.getDevicePrefs(this.mContext).edit().putString("pref_override_icon_shape", this.mValue).commit();
        LauncherAppState.getInstance(this.mContext).getIconCache().clear();
        final long n = 1000L;
        while (true) {
            try {
                Thread.sleep(n);
                ((AlarmManager)this.mContext.getSystemService((Class)AlarmManager.class)).setExact(3, SystemClock.elapsedRealtime() + 50, PendingIntent.getActivity(this.mContext, 42, new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setPackage(this.mContext.getPackageName()).addFlags(268435456), 1342177280));
                Process.killProcess(Process.myPid());
            }
            catch (Exception ex) {
                Log.e("IconShapeOverride", "Error waiting", (Throwable)ex);
                continue;
            }
            break;
        }
    }
}
