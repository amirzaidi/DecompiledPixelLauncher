// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.util.SparseArray;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.o;

public final class cj extends bI
{
    public final b wN;
    
    public void AL(final o o) {
        this.wN.rq(o);
    }
    
    public void AM(final Status status) {
        this.wN.rs(status);
    }
    
    public void AN(final SparseArray sparseArray) {
        final bW bw = (bW)sparseArray.get(this.vi);
        if (bw != null) {
            bw.BB(this.wN);
        }
    }
    
    public boolean cancel() {
        return this.wN.rR();
    }
}
