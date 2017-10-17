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

class g implements ServiceConnection
{
    private boolean KF;
    private final Context mContext;
    private final int mFlags;
    
    g(final Context mContext, final int mFlags) {
        this.mContext = mContext;
        this.mFlags = mFlags;
    }
    
    public final boolean QX() {
        if (!this.KF) {
            try {
                final Context mContext = this.mContext;
                try {
                    final Context mContext2 = this.mContext;
                    try {
                        final Intent qi = c.QI(mContext2);
                        try {
                            this.KF = mContext.bindService(qi, (ServiceConnection)this, this.mFlags);
                            return this.KF;
                        }
                        catch (SecurityException ex) {
                            Log.e("LauncherClient", "Unable to connect to overlay service", (Throwable)ex);
                            return this.KF;
                        }
                    }
                    catch (SecurityException ex2) {}
                }
                catch (SecurityException ex3) {}
            }
            catch (SecurityException ex4) {}
        }
        return this.KF;
    }
    
    public void QY() {
        if (this.KF) {
            this.mContext.unbindService((ServiceConnection)this);
            this.KF = false;
        }
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
    }
}
