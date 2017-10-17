// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.awareness.fence.FenceQueryRequest;

public class FenceQueryRequestImpl extends FenceQueryRequest
{
    public static final Parcelable$Creator CREATOR;
    private final FenceQueryRequestImpl$QueryFenceOperation HZ;
    private final int Ia;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    public FenceQueryRequestImpl() {
        final int n = 1;
        this(n, FenceQueryRequestImpl$QueryFenceOperation.OC(n, null));
    }
    
    FenceQueryRequestImpl(final int ia, final FenceQueryRequestImpl$QueryFenceOperation hz) {
        this.Ia = ia;
        this.HZ = hz;
    }
    
    public FenceQueryRequestImpl$QueryFenceOperation Oe() {
        return this.HZ;
    }
    
    public int Of() {
        return this.Ia;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.NM(this, parcel, n);
    }
}
