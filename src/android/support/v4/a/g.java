// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.NoSuchElementException;
import java.util.Iterator;

final class g implements Iterator
{
    int Xa;
    final /* synthetic */ l Xb;
    boolean Xc;
    final int mOffset;
    int mSize;
    
    g(final l xb, final int mOffset) {
        this.Xb = xb;
        this.Xc = false;
        this.mOffset = mOffset;
        this.mSize = xb.aiL();
    }
    
    public boolean hasNext() {
        return this.Xa < this.mSize;
    }
    
    public Object next() {
        if (this.hasNext()) {
            final Object aiA = this.Xb.aiA(this.Xa, this.mOffset);
            ++this.Xa;
            this.Xc = true;
            return aiA;
        }
        throw new NoSuchElementException();
    }
    
    public void remove() {
        if (this.Xc) {
            --this.Xa;
            --this.mSize;
            this.Xc = false;
            this.Xb.aiM(this.Xa);
            return;
        }
        throw new IllegalStateException();
    }
}
