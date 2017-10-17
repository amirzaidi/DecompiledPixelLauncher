// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import java.util.Arrays;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class WifiScan extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    static final long[] EP;
    private final long EN;
    final long[] EO;
    private final int EQ;
    
    static {
        EP = new long[0];
        CREATOR = (Parcelable$Creator)new o();
    }
    
    WifiScan(final int eq, final long en, long[] ep) {
        this.EN = en;
        this.EQ = eq;
        if (ep == null) {
            ep = WifiScan.EP;
        }
        this.EO = ep;
    }
    
    private void IK(final int n) {
        if (n >= 0 && n < this.IJ()) {
            return;
        }
        throw new IndexOutOfBoundsException(new StringBuilder(49).append("Index ").append(n).append(" out of bounds: [0, ").append(this.IJ()).append(")").toString());
    }
    
    public int IJ() {
        return this.EO.length;
    }
    
    public byte IL(final int n) {
        this.IK(n);
        return (byte)((this.EO[n] & 0xFF000000000000L) >>> 48);
    }
    
    public long IM() {
        return this.EN;
    }
    
    public long IN(final int n) {
        this.IK(n);
        return this.EO[n] & 0xFFFFFFFFFFFFL;
    }
    
    int IO() {
        return this.EQ;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof WifiScan) {
            final WifiScan wifiScan = (WifiScan)o;
            if (wifiScan.EN == this.EN && Arrays.equals(wifiScan.EO, this.EO)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return Arrays.hashCode(this.EO);
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("WifiScan[elapsed rt: ");
        sb.append(this.EN);
        for (int ij = this.IJ(), i = 0; i < ij; ++i) {
            sb.append(", Device[mac: ").append(this.IN(i));
            sb.append(", power [dbm]: ").append(this.IL(i));
            if (i >= ij - 1) {
                sb.append("]");
            }
            else {
                sb.append("], ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        o.IH(this, parcel, n);
    }
}
