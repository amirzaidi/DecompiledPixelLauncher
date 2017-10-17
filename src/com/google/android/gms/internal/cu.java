// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import android.os.Message;
import com.google.android.gms.common.ConnectionResult;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import android.util.SparseArray;
import com.google.android.gms.common.a;
import android.os.Handler;
import android.content.Context;
import android.os.Handler$Callback;
import java.lang.ref.ReferenceQueue;
import com.google.android.gms.common.api.C;
import java.lang.ref.PhantomReference;

final class cu extends PhantomReference
{
    private final int wV;
    final /* synthetic */ bM wW;
    
    public cu(final bM ww, final C c, final int wv, final ReferenceQueue referenceQueue) {
        this.wW = ww;
        super(c, referenceQueue);
        this.wV = wv;
    }
    
    public void Ch() {
        final int n = 2;
        this.wW.mHandler.sendMessage(this.wW.mHandler.obtainMessage(n, this.wV, n));
    }
}
