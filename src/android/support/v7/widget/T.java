// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.ArrayList;
import android.util.SparseArray;

public class t
{
    private int Pm;
    SparseArray Pn;
    
    public t() {
        this.Pn = new SparseArray();
        this.Pm = 0;
    }
    
    private L XU(final int n) {
        L l = (L)this.Pn.get(n);
        if (l == null) {
            l = new L();
            this.Pn.put(n, (Object)l);
        }
        return l;
    }
    
    void XM(final int n, final long n2) {
        final L xu = this.XU(n);
        xu.PZ = this.XX(xu.PZ, n2);
    }
    
    void XN(final q q) {
        ++this.Pm;
    }
    
    public void XO(final int n, final int qc) {
        final L xu = this.XU(n);
        xu.Qc = qc;
        final ArrayList qa = xu.Qa;
        if (qa != null) {
            while (qa.size() > qc) {
                qa.remove(qa.size() - 1);
            }
        }
    }
    
    boolean XP(final int n, final long n2, final long n3) {
        final boolean b = true;
        boolean b2 = false;
        final long qb = this.XU(n).Qb;
        if (qb == 0L || (qb + n2 < n3 || !b)) {
            b2 = b;
        }
        return b2;
    }
    
    void XQ(final int n, final long n2) {
        final L xu = this.XU(n);
        xu.Qb = this.XX(xu.Qb, n2);
    }
    
    public void XR(final j j) {
        final int itemViewType = j.getItemViewType();
        final ArrayList qa = this.XU(itemViewType).Qa;
        if (((L)this.Pn.get(itemViewType)).Qc > qa.size()) {
            j.resetInternal();
            qa.add(j);
        }
    }
    
    boolean XS(final int n, final long n2, final long n3) {
        final boolean b = true;
        boolean b2 = false;
        final long pz = this.XU(n).PZ;
        if (pz == 0L || (pz + n2 < n3 || !b)) {
            b2 = b;
        }
        return b2;
    }
    
    void XT() {
        --this.Pm;
    }
    
    public j XV(final int n) {
        final L l = (L)this.Pn.get(n);
        if (l != null && !l.Qa.isEmpty()) {
            final ArrayList qa = l.Qa;
            return qa.remove(qa.size() - 1);
        }
        return null;
    }
    
    void XW(final q q, final q q2, final boolean b) {
        if (q != null) {
            this.XT();
        }
        if (!b && this.Pm == 0) {
            this.clear();
        }
        if (q2 != null) {
            this.XN(q2);
        }
    }
    
    long XX(final long n, final long n2) {
        final long n3 = 4;
        if (n == 0L) {
            return n2;
        }
        return n / n3 * 3 + n2 / n3;
    }
    
    public void clear() {
        for (int i = 0; i < this.Pn.size(); ++i) {
            ((L)this.Pn.valueAt(i)).Qa.clear();
        }
    }
}
