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
    private final List JZ;
    private final int Ka;
    private final int Kb;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    FenceQueryRequestImpl$QueryFenceOperation(final int ka, final int kb, final List jz) {
        this.Ka = ka;
        this.Kb = kb;
        this.JZ = jz;
    }
    
    private FenceQueryRequestImpl$QueryFenceOperation(final int n, final List list) {
        this(1, n, list);
    }
    
    public static FenceQueryRequestImpl$QueryFenceOperation Pv(final int n, final List list) {
        return new FenceQueryRequestImpl$QueryFenceOperation(n, list);
    }
    
    public List Pw() {
        return this.JZ;
    }
    
    public int Px() {
        return this.Kb;
    }
    
    int Py() {
        return this.Ka;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.OL(this, parcel, n);
    }
}
