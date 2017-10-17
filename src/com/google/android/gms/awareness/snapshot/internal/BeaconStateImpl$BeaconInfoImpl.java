// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.awareness.state.a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class BeaconStateImpl$BeaconInfoImpl extends AbstractSafeParcelable implements a
{
    public static final Parcelable$Creator CREATOR;
    private final String nb;
    private final byte[] nc;
    private final int nd;
    private final String ne;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    BeaconStateImpl$BeaconInfoImpl(final int nd, final String nb, final String ne, final byte[] nc) {
        this.nd = nd;
        this.nb = nb;
        this.ne = ne;
        this.nc = nc;
    }
    
    public byte[] qV() {
        return this.nc;
    }
    
    public String qW() {
        return this.nb;
    }
    
    public String qX() {
        return this.ne;
    }
    
    int qY() {
        return this.nd;
    }
    
    public String toString() {
        String s;
        if (this.nc != null) {
            s = new String(this.nc);
        }
        else {
            s = "<null>";
        }
        final String nb = this.nb;
        final String ne = this.ne;
        return new StringBuilder(String.valueOf(nb).length() + 6 + String.valueOf(ne).length() + String.valueOf(s).length()).append("(").append(nb).append(", ").append(ne).append(", ").append(s).append(")").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.pY(this, parcel, n);
    }
}
