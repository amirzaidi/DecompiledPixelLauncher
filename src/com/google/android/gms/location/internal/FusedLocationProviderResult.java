// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class FusedLocationProviderResult extends AbstractSafeParcelable implements b
{
    public static final FusedLocationProviderResult AD;
    public static final Parcelable$Creator CREATOR;
    private final Status AB;
    private final int AC;
    
    static {
        AD = new FusedLocationProviderResult(Status.dU);
        CREATOR = (Parcelable$Creator)new l();
    }
    
    FusedLocationProviderResult(final int ac, final Status ab) {
        this.AC = ac;
        this.AB = ab;
    }
    
    public FusedLocationProviderResult(final Status status) {
        this(1, status);
    }
    
    public int Fh() {
        return this.AC;
    }
    
    public Status dr() {
        return this.AB;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.FF(this, parcel, n);
    }
}
