// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.awareness.fence.FenceState;

public class FenceStateImpl extends FenceState
{
    public static final Parcelable$Creator CREATOR;
    private final int JU;
    private final int JV;
    private final long JW;
    private final String JX;
    private final int JY;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    FenceStateImpl(final int jv, final int ju, final long jw, final String jx, final int jy) {
        this.JV = jv;
        this.JU = ju;
        this.JW = jw;
        this.JX = jx;
        this.JY = jy;
    }
    
    public int Pq() {
        return this.JY;
    }
    
    public long Pr() {
        return this.JW;
    }
    
    int Ps() {
        return this.JV;
    }
    
    public int Pt() {
        return this.JU;
    }
    
    public String Pu() {
        return this.JX;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.OR(this, parcel, n);
    }
}
