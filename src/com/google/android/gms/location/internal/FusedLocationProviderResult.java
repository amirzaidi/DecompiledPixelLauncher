// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class FusedLocationProviderResult extends AbstractSafeParcelable implements m
{
    public static final Parcelable$Creator CREATOR;
    public static final FusedLocationProviderResult Ci;
    private final Status Cg;
    private final int Ch;
    
    static {
        Ci = new FusedLocationProviderResult(Status.hn);
        CREATOR = (Parcelable$Creator)new l();
    }
    
    FusedLocationProviderResult(final int ch, final Status cg) {
        this.Ch = ch;
        this.Cg = cg;
    }
    
    public FusedLocationProviderResult(final Status status) {
        this(1, status);
    }
    
    public int Ga() {
        return this.Ch;
    }
    
    public Status gV() {
        return this.Cg;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.Gy(this, parcel, n);
    }
}
