// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.a.a;

import com.google.android.libraries.launcherclient.ILauncherOverlay$Stub;
import android.os.IBinder;
import android.content.ComponentName;
import android.content.Context;
import java.lang.ref.WeakReference;
import com.google.android.libraries.launcherclient.ILauncherOverlay;

class f extends g
{
    private static f KE;
    private boolean KB;
    private ILauncherOverlay KC;
    private WeakReference KD;
    
    private f(final Context context) {
        super(context, 33);
    }
    
    private void QU() {
        if (this.KB && this.KC == null) {
            this.QY();
        }
    }
    
    private void QV(final ILauncherOverlay kc) {
        this.KC = kc;
        final c qw = this.QW();
        if (qw != null) {
            qw.Qu(this.KC);
        }
    }
    
    private c QW() {
        c c = null;
        if (this.KD != null) {
            c = (c)this.KD.get();
        }
        return c;
    }
    
    static f get(final Context context) {
        if (f.KE == null) {
            f.KE = new f(context.getApplicationContext());
        }
        return f.KE;
    }
    
    public void QR(final c c, final boolean b) {
        final c qw = this.QW();
        if (qw != null && qw.equals(c)) {
            this.KD = null;
            if (b) {
                this.QY();
                if (f.KE == this) {
                    f.KE = null;
                }
            }
        }
    }
    
    public void QS(final boolean kb) {
        this.KB = kb;
        this.QU();
    }
    
    public ILauncherOverlay QT(final c c) {
        this.KD = new WeakReference((T)c);
        return this.KC;
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.QV(ILauncherOverlay$Stub.asInterface(binder));
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        this.QV(null);
        this.QU();
    }
}
