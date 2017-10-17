// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.util.Log;
import android.support.v4.view.f;
import java.util.Collections;
import java.lang.ref.WeakReference;
import android.view.View;
import java.util.List;
import java.util.ArrayList;

public abstract class b
{
    private long Qd;
    private long Qe;
    private long Qf;
    private long Qg;
    private ArrayList Qh;
    private x Qi;
    
    public b() {
        final long n = 250L;
        final long n2 = 120;
        this.Qi = null;
        this.Qh = new ArrayList();
        this.Qe = n2;
        this.Qd = n2;
        this.Qf = n;
        this.Qg = n;
    }
    
    static int Xp(final j j) {
        final int n = -1;
        int n2 = j.mFlags & 0xE;
        if (!j.isInvalid()) {
            if ((n2 & 0x4) == 0x0) {
                final int oldPosition = j.getOldPosition();
                final int adapterPosition = j.getAdapterPosition();
                if (oldPosition != n && adapterPosition != n && oldPosition != adapterPosition) {
                    n2 |= 0x800;
                }
            }
            return n2;
        }
        return 4;
    }
    
    public long XA() {
        return this.Qd;
    }
    
    public abstract boolean XB();
    
    public final void XC(final j j) {
        this.Xv(j);
        if (this.Qi != null) {
            this.Qi.XF(j);
        }
    }
    
    public abstract boolean XD(final j p0, final j p1, final E p2, final E p3);
    
    public abstract void XE();
    
    public long Xm() {
        return this.Qg;
    }
    
    public final void Xn() {
        for (int size = this.Qh.size(), i = 0; i < size; ++i) {
            ((F)this.Qh.get(i)).aaE();
        }
        this.Qh.clear();
    }
    
    public abstract void Xo();
    
    void Xq(final x qi) {
        this.Qi = qi;
    }
    
    public abstract boolean Xr(final j p0, final E p1, final E p2);
    
    public abstract void Xs(final j p0);
    
    public E Xt() {
        return new E();
    }
    
    public boolean Xu(final j j, final List list) {
        return this.canReuseUpdatedViewHolder(j);
    }
    
    public void Xv(final j j) {
    }
    
    public long Xw() {
        return this.Qf;
    }
    
    public long Xx() {
        return this.Qe;
    }
    
    public E Xy(final e e, final j j, final int n, final List list) {
        return this.Xt().aaC(j);
    }
    
    public E Xz(final e e, final j j) {
        return this.Xt().aaC(j);
    }
    
    public abstract boolean animateAppearance(final j p0, final E p1, final E p2);
    
    public abstract boolean animateDisappearance(final j p0, final E p1, final E p2);
    
    public boolean canReuseUpdatedViewHolder(final j j) {
        return true;
    }
}
