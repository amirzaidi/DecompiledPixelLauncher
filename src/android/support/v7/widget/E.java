// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.util.SparseArray;

public class e
{
    private SparseArray OG;
    int OH;
    long OI;
    int OJ;
    boolean OK;
    private int OL;
    int OM;
    int ON;
    boolean OO;
    boolean OP;
    boolean OQ;
    int OR;
    int OS;
    boolean OT;
    boolean OU;
    
    public e() {
        this.OL = -1;
        this.ON = 0;
        this.OH = 0;
        this.OS = 1;
        this.OR = 0;
        this.OP = false;
        this.OO = false;
        this.OK = false;
        this.OU = false;
        this.OQ = false;
        this.OT = false;
    }
    
    void WJ(final int n) {
        if ((this.OS & n) != 0x0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(n) + " but it is " + Integer.toBinaryString(this.OS));
    }
    
    public boolean WK() {
        return this.OL != -1;
    }
    
    public boolean WL() {
        return this.OT;
    }
    
    void WM(final q q) {
        this.OS = 1;
        this.OR = q.getItemCount();
        this.OO = false;
        this.OK = false;
        this.OU = false;
    }
    
    public boolean WN() {
        return this.OO;
    }
    
    public int getItemCount() {
        int or;
        if (!this.OO) {
            or = this.OR;
        }
        else {
            or = this.ON - this.OH;
        }
        return or;
    }
    
    public String toString() {
        return "State{mTargetPosition=" + this.OL + ", mData=" + this.OG + ", mItemCount=" + this.OR + ", mPreviousLayoutItemCount=" + this.ON + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.OH + ", mStructureChanged=" + this.OP + ", mInPreLayout=" + this.OO + ", mRunSimpleAnimations=" + this.OQ + ", mRunPredictiveAnimations=" + this.OT + '}';
    }
}
