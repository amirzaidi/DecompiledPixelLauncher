// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import java.util.Iterator;

public abstract class b implements a
{
    protected final DataHolder mH;
    
    protected b(final DataHolder mh) {
        this.mH = mh;
        final DataHolder mh2 = this.mH;
    }
    
    public abstract Object get(final int p0);
    
    public void hq() {
        if (this.mH != null) {
            this.mH.close();
        }
    }
    
    public Iterator iterator() {
        return new c(this);
    }
    
    public int pK() {
        int pq;
        if (this.mH != null) {
            pq = this.mH.pQ();
        }
        else {
            pq = 0;
        }
        return pq;
    }
}
