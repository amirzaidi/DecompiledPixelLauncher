// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.a;

import java.util.NoSuchElementException;
import java.util.Map;
import java.util.Iterator;

final class e implements Iterator, Entry
{
    int Vi;
    boolean Vj;
    int Vk;
    final /* synthetic */ l Vl;
    
    e(final l vl) {
        this.Vl = vl;
        this.Vj = false;
        this.Vi = vl.ahB() - 1;
        this.Vk = -1;
    }
    
    public final boolean equals(final Object o) {
        int n = 1;
        if (!this.Vj) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (o instanceof Entry) {
            final Entry entry = (Entry)o;
            if (!s.ahR(entry.getKey(), this.Vl.ahq(this.Vk, 0)) || !s.ahR(entry.getValue(), this.Vl.ahq(this.Vk, n))) {
                n = 0;
            }
            return n != 0;
        }
        return false;
    }
    
    public Object getKey() {
        if (this.Vj) {
            return this.Vl.ahq(this.Vk, 0);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public Object getValue() {
        if (this.Vj) {
            return this.Vl.ahq(this.Vk, 1);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public boolean hasNext() {
        return this.Vk < this.Vi;
    }
    
    public final int hashCode() {
        int hashCode = 0;
        if (this.Vj) {
            final Object ahq = this.Vl.ahq(this.Vk, 0);
            final Object ahq2 = this.Vl.ahq(this.Vk, 1);
            int hashCode2;
            if (ahq != null) {
                hashCode2 = ahq.hashCode();
            }
            else {
                hashCode2 = 0;
            }
            if (ahq2 != null) {
                hashCode = ahq2.hashCode();
            }
            return hashCode ^ hashCode2;
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public Entry next() {
        if (this.hasNext()) {
            ++this.Vk;
            this.Vj = true;
            return this;
        }
        throw new NoSuchElementException();
    }
    
    public void remove() {
        if (this.Vj) {
            this.Vl.ahC(this.Vk);
            --this.Vk;
            --this.Vi;
            this.Vj = false;
            return;
        }
        throw new IllegalStateException();
    }
    
    public Object setValue(final Object o) {
        if (this.Vj) {
            return this.Vl.ahx(this.Vk, o);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    
    public final String toString() {
        return this.getKey() + "=" + this.getValue();
    }
}
