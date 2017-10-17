// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.net.Uri;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;

public final class bq extends BroadcastReceiver
{
    protected Context mContext;
    private final bs uC;
    
    public bq(final bs uc) {
        this.uC = uc;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        Object schemeSpecificPart = null;
        final Uri data = intent.getData();
        if (data != null) {
            schemeSpecificPart = data.getSchemeSpecificPart();
        }
        if ("com.google.android.gms".equals(schemeSpecificPart)) {
            this.uC.zp();
            this.zo();
        }
    }
    
    public void zn(final Context mContext) {
        this.mContext = mContext;
    }
    
    public void zo() {
        synchronized (this) {
            if (this.mContext != null) {
                this.mContext.unregisterReceiver((BroadcastReceiver)this);
            }
            this.mContext = null;
        }
    }
}
