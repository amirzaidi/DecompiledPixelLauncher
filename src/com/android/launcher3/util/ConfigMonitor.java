// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.content.IntentFilter;
import android.os.Process;
import android.util.Log;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.Context;
import android.content.BroadcastReceiver;

public class ConfigMonitor extends BroadcastReceiver
{
    private final Context mContext;
    private final int mDensity;
    private final float mFontScale;
    
    public ConfigMonitor(final Context mContext) {
        this.mContext = mContext;
        final Configuration configuration = mContext.getResources().getConfiguration();
        this.mFontScale = configuration.fontScale;
        this.mDensity = configuration.densityDpi;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final Configuration configuration = context.getResources().getConfiguration();
        if (this.mFontScale != configuration.fontScale || this.mDensity != configuration.densityDpi) {
            Log.d("ConfigMonitor", "Configuration changed, restarting launcher");
            this.mContext.unregisterReceiver((BroadcastReceiver)this);
            Process.killProcess(Process.myPid());
        }
    }
    
    public void register() {
        this.mContext.registerReceiver((BroadcastReceiver)this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
    }
}
