// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

import android.os.IBinder;
import android.content.ComponentName;
import android.content.Intent;
import android.util.Log;
import android.content.Context;
import android.content.ServiceConnection;

class h implements ServiceConnection
{
    private boolean NO;
    private final Context mContext;
    private final int mFlags;
    
    h(final Context mContext, final int mFlags) {
        this.mContext = mContext;
        this.mFlags = mFlags;
    }
    
    public final boolean Ea() {
        if (!this.NO) {
            try {
                final Context mContext = this.mContext;
                try {
                    final Context mContext2 = this.mContext;
                    try {
                        final Intent dl = d.DL(mContext2);
                        try {
                            this.NO = mContext.bindService(dl, (ServiceConnection)this, this.mFlags);
                            return this.NO;
                        }
                        catch (SecurityException ex) {
                            Log.e("LauncherClient", "Unable to connect to overlay service", (Throwable)ex);
                            return this.NO;
                        }
                    }
                    catch (SecurityException ex2) {}
                }
                catch (SecurityException ex3) {}
            }
            catch (SecurityException ex4) {}
        }
        return this.NO;
    }
    
    public void Eb() {
        if (this.NO) {
            this.mContext.unbindService((ServiceConnection)this);
            this.NO = false;
        }
    }
    
    public boolean isBound() {
        return this.NO;
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
    }
}
