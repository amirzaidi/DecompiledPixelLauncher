// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import java.util.NoSuchElementException;
import com.google.android.gms.common.internal.l;
import java.util.Iterator;

public class c implements Iterator
{
    protected final a jQ;
    protected int jR;
    
    public c(final a a) {
        this.jQ = (a)l.ht(a);
        this.jR = -1;
    }
    
    public boolean hasNext() {
        return this.jR < this.jQ.mW() - 1;
    }
    
    public Object next() {
        if (this.hasNext()) {
            final a jq = this.jQ;
            final int jr = this.jR + 1;
            this.jR = jr;
            return jq.mX(jr);
        }
        throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.jR).toString());
    }
    
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
