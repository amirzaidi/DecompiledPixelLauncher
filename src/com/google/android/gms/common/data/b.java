// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import java.util.Iterator;

public abstract class b implements a
{
    protected final DataHolder jP;
    
    protected b(final DataHolder jp) {
        this.jP = jp;
        final DataHolder jp2 = this.jP;
    }
    
    public void eC() {
        if (this.jP != null) {
            this.jP.close();
        }
    }
    
    public Iterator iterator() {
        return new c(this);
    }
    
    public int mW() {
        int nd;
        if (this.jP != null) {
            nd = this.jP.nd();
        }
        else {
            nd = 0;
        }
        return nd;
    }
    
    public abstract Object mX(final int p0);
}
