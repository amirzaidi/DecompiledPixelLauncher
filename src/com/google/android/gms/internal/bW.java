// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.net.Uri;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

public final class bw extends BroadcastReceiver
{
    protected Context mContext;
    private final by uw;
    
    public bw(final by uw) {
        this.uw = uw;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        Object schemeSpecificPart = null;
        final Uri data = intent.getData();
        if (data != null) {
            schemeSpecificPart = data.getSchemeSpecificPart();
        }
        if ("com.google.android.gms".equals(schemeSpecificPart)) {
            this.uw.zq();
            this.zp();
        }
    }
    
    public void zo(final Context mContext) {
        this.mContext = mContext;
    }
    
    public void zp() {
        synchronized (this) {
            if (this.mContext != null) {
                this.mContext.unregisterReceiver((BroadcastReceiver)this);
            }
            this.mContext = null;
        }
    }
}
