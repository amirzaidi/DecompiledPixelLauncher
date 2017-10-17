// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import java.io.PrintWriter;
import android.os.IBinder$DeathRecipient;
import android.os.RemoteException;
import android.os.IBinder;
import android.support.v4.a.t;
import java.util.Collections;
import java.util.WeakHashMap;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.j;
import java.util.Map;
import java.util.Set;
import com.google.android.gms.common.api.k;

class ct implements g
{
    final /* synthetic */ bW wU;
    
    ct(final bW wu) {
        this.wU = wu;
    }
    
    public void rZ(final b b) {
        this.wU.wa.remove(b);
        if (b.rQ() != null && this.wU.vZ != null) {
            this.wU.vZ.ej(b.rQ());
        }
        if (this.wU.vY != null && this.wU.wa.isEmpty()) {
            this.wU.vY.Ci();
        }
    }
}
