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
    private long OA;
    private long OB;
    private long OC;
    private ArrayList OD;
    private x OE;
    private long Oz;
    
    public b() {
        final long n = 250L;
        final long n2 = 120;
        this.OE = null;
        this.OD = new ArrayList();
        this.OA = n2;
        this.Oz = n2;
        this.OB = n;
        this.OC = n;
    }
    
    static int Wr(final j j) {
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
    
    public E WA(final e e, final j j, final int n, final List list) {
        return this.Wv().ZA(j);
    }
    
    public E WB(final e e, final j j) {
        return this.Wv().ZA(j);
    }
    
    public long WC() {
        return this.Oz;
    }
    
    public abstract boolean WD();
    
    public final void WE(final j j) {
        this.Wx(j);
        if (this.OE != null) {
            this.OE.WH(j);
        }
    }
    
    public abstract boolean WF(final j p0, final j p1, final E p2, final E p3);
    
    public abstract void WG();
    
    public long Wo() {
        return this.OC;
    }
    
    public final void Wp() {
        for (int size = this.OD.size(), i = 0; i < size; ++i) {
            ((F)this.OD.get(i)).ZC();
        }
        this.OD.clear();
    }
    
    public abstract void Wq();
    
    void Ws(final x oe) {
        this.OE = oe;
    }
    
    public abstract boolean Wt(final j p0, final E p1, final E p2);
    
    public abstract void Wu(final j p0);
    
    public E Wv() {
        return new E();
    }
    
    public boolean Ww(final j j, final List list) {
        return this.canReuseUpdatedViewHolder(j);
    }
    
    public void Wx(final j j) {
    }
    
    public long Wy() {
        return this.OB;
    }
    
    public long Wz() {
        return this.OA;
    }
    
    public abstract boolean animateAppearance(final j p0, final E p1, final E p2);
    
    public abstract boolean animateDisappearance(final j p0, final E p1, final E p2);
    
    public boolean canReuseUpdatedViewHolder(final j j) {
        return true;
    }
}
