// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.ArrayList;
import android.util.SparseArray;

public class t
{
    private int QT;
    SparseArray QU;
    
    public t() {
        this.QU = new SparseArray();
        this.QT = 0;
    }
    
    private L YU(final int n) {
        L l = (L)this.QU.get(n);
        if (l == null) {
            l = new L();
            this.QU.put(n, (Object)l);
        }
        return l;
    }
    
    void YM(final int n, final long n2) {
        final L yu = this.YU(n);
        yu.RG = this.YX(yu.RG, n2);
    }
    
    void YN(final q q) {
        ++this.QT;
    }
    
    public void YO(final int n, final int rj) {
        final L yu = this.YU(n);
        yu.RJ = rj;
        final ArrayList rh = yu.RH;
        if (rh != null) {
            while (rh.size() > rj) {
                rh.remove(rh.size() - 1);
            }
        }
    }
    
    boolean YP(final int n, final long n2, final long n3) {
        final boolean b = true;
        boolean b2 = false;
        final long ri = this.YU(n).RI;
        if (ri == 0L || (ri + n2 < n3 || !b)) {
            b2 = b;
        }
        return b2;
    }
    
    void YQ(final int n, final long n2) {
        final L yu = this.YU(n);
        yu.RI = this.YX(yu.RI, n2);
    }
    
    public void YR(final j j) {
        final int itemViewType = j.getItemViewType();
        final ArrayList rh = this.YU(itemViewType).RH;
        if (((L)this.QU.get(itemViewType)).RJ > rh.size()) {
            j.resetInternal();
            rh.add(j);
        }
    }
    
    boolean YS(final int n, final long n2, final long n3) {
        final boolean b = true;
        boolean b2 = false;
        final long rg = this.YU(n).RG;
        if (rg == 0L || (rg + n2 < n3 || !b)) {
            b2 = b;
        }
        return b2;
    }
    
    void YT() {
        --this.QT;
    }
    
    public j YV(final int n) {
        final L l = (L)this.QU.get(n);
        if (l != null && !l.RH.isEmpty()) {
            final ArrayList rh = l.RH;
            return rh.remove(rh.size() - 1);
        }
        return null;
    }
    
    void YW(final q q, final q q2, final boolean b) {
        if (q != null) {
            this.YT();
        }
        if (!b && this.QT == 0) {
            this.clear();
        }
        if (q2 != null) {
            this.YN(q2);
        }
    }
    
    long YX(final long n, final long n2) {
        final long n3 = 4;
        if (n == 0L) {
            return n2;
        }
        return n / n3 * 3 + n2 / n3;
    }
    
    public void clear() {
        for (int i = 0; i < this.QU.size(); ++i) {
            ((L)this.QU.valueAt(i)).RH.clear();
        }
    }
}
