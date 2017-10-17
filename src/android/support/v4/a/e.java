// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.NoSuchElementException;
import java.util.Map;
import java.util.Iterator;

final class e implements Iterator, Entry
{
    int WV;
    boolean WW;
    int WX;
    final /* synthetic */ l WY;
    
    e(final l wy) {
        this.WY = wy;
        this.WW = false;
        this.WV = wy.aiL() - 1;
        this.WX = -1;
    }
    
    public final boolean equals(final Object o) {
        int n = 1;
        if (!this.WW) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (o instanceof Entry) {
            final Entry entry = (Entry)o;
            if (!s.ajb(entry.getKey(), this.WY.aiA(this.WX, 0)) || !s.ajb(entry.getValue(), this.WY.aiA(this.WX, n))) {
                n = 0;
            }
            return n != 0;
        }
        return false;
    }
    
    public Object getKey() {
        if (this.WW) {
            return this.WY.aiA(this.WX, 0);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public Object getValue() {
        if (this.WW) {
            return this.WY.aiA(this.WX, 1);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public boolean hasNext() {
        return this.WX < this.WV;
    }
    
    public final int hashCode() {
        int hashCode = 0;
        if (this.WW) {
            final Object aiA = this.WY.aiA(this.WX, 0);
            final Object aiA2 = this.WY.aiA(this.WX, 1);
            int hashCode2;
            if (aiA != null) {
                hashCode2 = aiA.hashCode();
            }
            else {
                hashCode2 = 0;
            }
            if (aiA2 != null) {
                hashCode = aiA2.hashCode();
            }
            return hashCode ^ hashCode2;
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public Entry next() {
        if (this.hasNext()) {
            ++this.WX;
            this.WW = true;
            return this;
        }
        throw new NoSuchElementException();
    }
    
    public void remove() {
        if (this.WW) {
            this.WY.aiM(this.WX);
            --this.WX;
            --this.WV;
            this.WW = false;
            return;
        }
        throw new IllegalStateException();
    }
    
    public Object setValue(final Object o) {
        if (this.WW) {
            return this.WY.aiH(this.WX, o);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public final String toString() {
        return this.getKey() + "=" + this.getValue();
    }
}
