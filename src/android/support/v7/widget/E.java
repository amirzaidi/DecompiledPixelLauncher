// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.util.SparseArray;

public class e
{
    boolean QA;
    private SparseArray Qk;
    int Ql;
    long Qm;
    int Qn;
    boolean Qo;
    private int Qp;
    int Qq;
    int Qr;
    int Qs;
    boolean Qt;
    int Qu;
    boolean Qv;
    boolean Qw;
    int Qx;
    int Qy;
    boolean Qz;
    
    public e() {
        this.Qp = -1;
        this.Qs = 0;
        this.Ql = 0;
        this.Qy = 1;
        this.Qx = 0;
        this.Qv = false;
        this.Qt = false;
        this.Qo = false;
        this.QA = false;
        this.Qw = false;
        this.Qz = false;
    }
    
    void XH(final int n) {
        if ((this.Qy & n) != 0x0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(n) + " but it is " + Integer.toBinaryString(this.Qy));
    }
    
    public boolean XI() {
        return this.Qp != -1;
    }
    
    public boolean XJ() {
        return this.Qz;
    }
    
    void XL(final q q) {
        this.Qy = 1;
        this.Qx = q.getItemCount();
        this.Qt = false;
        this.Qo = false;
        this.QA = false;
    }
    
    public boolean XM() {
        return this.Qt;
    }
    
    public int getItemCount() {
        int qx;
        if (!this.Qt) {
            qx = this.Qx;
        }
        else {
            qx = this.Qs - this.Ql;
        }
        return qx;
    }
    
    public String toString() {
        return "State{mTargetPosition=" + this.Qp + ", mData=" + this.Qk + ", mItemCount=" + this.Qx + ", mPreviousLayoutItemCount=" + this.Qs + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.Ql + ", mStructureChanged=" + this.Qv + ", mInPreLayout=" + this.Qt + ", mRunSimpleAnimations=" + this.Qw + ", mRunPredictiveAnimations=" + this.Qz + '}';
    }
}
