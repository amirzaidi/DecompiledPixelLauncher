// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FenceQueryRequestImpl$QueryFenceOperation extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final List Iu;
    private final int Iv;
    private final int Iw;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    FenceQueryRequestImpl$QueryFenceOperation(final int iv, final int iw, final List iu) {
        this.Iv = iv;
        this.Iw = iw;
        this.Iu = iu;
    }
    
    private FenceQueryRequestImpl$QueryFenceOperation(final int n, final List list) {
        this(1, n, list);
    }
    
    public static FenceQueryRequestImpl$QueryFenceOperation OC(final int n, final List list) {
        return new FenceQueryRequestImpl$QueryFenceOperation(n, list);
    }
    
    public List OD() {
        return this.Iu;
    }
    
    public int OE() {
        return this.Iw;
    }
    
    int OF() {
        return this.Iv;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.NS(this, parcel, n);
    }
}
