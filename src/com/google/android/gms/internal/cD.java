// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.util.SparseArray;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;

public final class cd extends bC
{
    public final b wT;
    
    public void AK(final n n) {
        this.wT.rs(n);
    }
    
    public void AL(final Status status) {
        this.wT.ru(status);
    }
    
    public void AM(final SparseArray sparseArray) {
        final bQ bq = (bQ)sparseArray.get(this.vo);
        if (bq != null) {
            bq.BA(this.wT);
        }
    }
    
    public boolean cancel() {
        return this.wT.rT();
    }
}
