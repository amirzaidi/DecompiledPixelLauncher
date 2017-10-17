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
    private final FenceQueryRequestImpl$QueryFenceOperation JE;
    private final int JF;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    public FenceQueryRequestImpl() {
        final int n = 1;
        this(n, FenceQueryRequestImpl$QueryFenceOperation.Pv(n, null));
    }
    
    FenceQueryRequestImpl(final int jf, final FenceQueryRequestImpl$QueryFenceOperation je) {
        this.JF = jf;
        this.JE = je;
    }
    
    public FenceQueryRequestImpl$QueryFenceOperation OX() {
        return this.JE;
    }
    
    public int OY() {
        return this.JF;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.OF(this, parcel, n);
    }
}
