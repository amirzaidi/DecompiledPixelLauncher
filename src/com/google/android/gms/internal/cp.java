// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import android.os.Message;
import com.google.android.gms.common.ConnectionResult;
import android.util.Log;
import java.util.Iterator;
import com.google.android.gms.common.a;
import java.util.Map;
import java.util.Set;
import android.util.SparseArray;
import android.os.Handler;
import android.content.Context;
import android.os.Handler$Callback;
import java.lang.ref.ReferenceQueue;
import com.google.android.gms.common.api.C;
import java.lang.ref.PhantomReference;

final class cp extends PhantomReference
{
    private final int xd;
    final /* synthetic */ bG xe;
    
    public cp(final bG xe, final C c, final int xd, final ReferenceQueue referenceQueue) {
        this.xe = xe;
        super(c, referenceQueue);
        this.xd = xd;
    }
    
    public void Cg() {
        final int n = 2;
        this.xe.mHandler.sendMessage(this.xe.mHandler.obtainMessage(n, this.xd, n));
    }
}
