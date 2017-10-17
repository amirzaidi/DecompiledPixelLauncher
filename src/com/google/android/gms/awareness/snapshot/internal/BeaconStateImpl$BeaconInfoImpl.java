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
    private final String gA;
    private final byte[] gB;
    private final int gC;
    private final String gD;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    BeaconStateImpl$BeaconInfoImpl(final int gc, final String ga, final String gd, final byte[] gb) {
        this.gC = gc;
        this.gA = ga;
        this.gD = gd;
        this.gB = gb;
    }
    
    public byte[] fR() {
        return this.gB;
    }
    
    public String fS() {
        return this.gA;
    }
    
    public String fT() {
        return this.gD;
    }
    
    int fU() {
        return this.gC;
    }
    
    public String toString() {
        String s;
        if (this.gB != null) {
            s = new String(this.gB);
        }
        else {
            s = "<null>";
        }
        final String ga = this.gA;
        final String gd = this.gD;
        return new StringBuilder(String.valueOf(ga).length() + 6 + String.valueOf(gd).length() + String.valueOf(s).length()).append("(").append(ga).append(", ").append(gd).append(", ").append(s).append(")").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.eS(this, parcel, n);
    }
}
