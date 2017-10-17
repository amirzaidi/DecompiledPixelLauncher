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
    private final int Ip;
    private final int Iq;
    private final long Ir;
    private final String Is;
    private final int It;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    FenceStateImpl(final int iq, final int ip, final long ir, final String is, final int it) {
        this.Iq = iq;
        this.Ip = ip;
        this.Ir = ir;
        this.Is = is;
        this.It = it;
    }
    
    public int OA() {
        return this.Ip;
    }
    
    public String OB() {
        return this.Is;
    }
    
    public int Ox() {
        return this.It;
    }
    
    public long Oy() {
        return this.Ir;
    }
    
    int Oz() {
        return this.Iq;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.NY(this, parcel, n);
    }
}
