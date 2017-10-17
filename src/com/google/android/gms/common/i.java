// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import java.lang.ref.WeakReference;

abstract class i extends l
{
    private static final WeakReference nx;
    private WeakReference nw;
    
    static {
        nx = new WeakReference(null);
    }
    
    i(final byte[] array) {
        super(array);
        this.nw = i.nx;
    }
    
    protected abstract byte[] qC();
    
    byte[] qD() {
        synchronized (this) {
            byte[] qc = (byte[])this.nw.get();
            if (qc == null) {
                qc = this.qC();
                this.nw = new WeakReference(qc);
            }
            return qc;
        }
    }
}
