// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import java.lang.ref.WeakReference;

abstract class i extends l
{
    private static final WeakReference kF;
    private WeakReference kE;
    
    static {
        kF = new WeakReference(null);
    }
    
    i(final byte[] array) {
        super(array);
        this.kE = i.kF;
    }
    
    protected abstract byte[] nQ();
    
    byte[] nR() {
        synchronized (this) {
            byte[] nq = (byte[])this.kE.get();
            if (nq == null) {
                nq = this.nQ();
                this.kE = new WeakReference(nq);
            }
            return nq;
        }
    }
}
