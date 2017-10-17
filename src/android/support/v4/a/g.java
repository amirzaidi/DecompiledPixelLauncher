// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.NoSuchElementException;
import java.util.Iterator;

final class g implements Iterator
{
    int Vn;
    final /* synthetic */ l Vo;
    boolean Vp;
    final int mOffset;
    int mSize;
    
    g(final l vo, final int mOffset) {
        this.Vo = vo;
        this.Vp = false;
        this.mOffset = mOffset;
        this.mSize = vo.ahB();
    }
    
    public boolean hasNext() {
        return this.Vn < this.mSize;
    }
    
    public Object next() {
        if (this.hasNext()) {
            final Object ahq = this.Vo.ahq(this.Vn, this.mOffset);
            ++this.Vn;
            this.Vp = true;
            return ahq;
        }
        throw new NoSuchElementException();
    }
    
    public void remove() {
        if (this.Vp) {
            --this.Vn;
            --this.mSize;
            this.Vp = false;
            this.Vo.ahC(this.Vn);
            return;
        }
        throw new IllegalStateException();
    }
}
