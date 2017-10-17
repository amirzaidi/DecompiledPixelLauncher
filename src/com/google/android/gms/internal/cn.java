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
import com.google.android.gms.common.api.h;
import java.util.Map;
import java.util.Set;
import com.google.android.gms.common.api.i;

class cn implements g
{
    final /* synthetic */ bQ xa;
    
    cn(final bQ xa) {
        this.xa = xa;
    }
    
    public void sb(final b b) {
        this.xa.wg.remove(b);
        if (b.rS() != null && this.xa.wf != null) {
            this.xa.wf.gQ(b.rS());
        }
        if (this.xa.we != null && this.xa.wg.isEmpty()) {
            this.xa.we.Ch();
        }
    }
}
