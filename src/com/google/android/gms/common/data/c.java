// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import java.util.NoSuchElementException;
import com.google.android.gms.common.internal.l;
import java.util.Iterator;

public class c implements Iterator
{
    protected final a mI;
    protected int mJ;
    
    public c(final a a) {
        this.mI = (a)l.kh(a);
        this.mJ = -1;
    }
    
    public boolean hasNext() {
        return this.mJ < this.mI.pK() - 1;
    }
    
    public Object next() {
        if (this.hasNext()) {
            final a mi = this.mI;
            final int mj = this.mJ + 1;
            this.mJ = mj;
            return mi.get(mj);
        }
        throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.mJ).toString());
    }
    
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
