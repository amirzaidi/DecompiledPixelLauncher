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
    static final long[] Dk;
    private final long Di;
    final long[] Dj;
    private final int Dl;
    
    static {
        Dk = new long[0];
        CREATOR = (Parcelable$Creator)new o();
    }
    
    WifiScan(final int dl, final long di, long[] dk) {
        this.Di = di;
        this.Dl = dl;
        if (dk == null) {
            dk = WifiScan.Dk;
        }
        this.Dj = dk;
    }
    
    private void HR(final int n) {
        if (n >= 0 && n < this.HQ()) {
            return;
        }
        throw new IndexOutOfBoundsException(new StringBuilder(49).append("Index ").append(n).append(" out of bounds: [0, ").append(this.HQ()).append(")").toString());
    }
    
    public int HQ() {
        return this.Dj.length;
    }
    
    public byte HS(final int n) {
        this.HR(n);
        return (byte)((this.Dj[n] & 0xFF000000000000L) >>> 48);
    }
    
    public long HT() {
        return this.Di;
    }
    
    public long HU(final int n) {
        this.HR(n);
        return this.Dj[n] & 0xFFFFFFFFFFFFL;
    }
    
    int HV() {
        return this.Dl;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof WifiScan) {
            final WifiScan wifiScan = (WifiScan)o;
            if (wifiScan.Di == this.Di && Arrays.equals(wifiScan.Dj, this.Dj)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return Arrays.hashCode(this.Dj);
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder("WifiScan[elapsed rt: ");
        sb.append(this.Di);
        for (int hq = this.HQ(), i = 0; i < hq; ++i) {
            sb.append(", Device[mac: ").append(this.HU(i));
            sb.append(", power [dbm]: ").append(this.HS(i));
            if (i >= hq - 1) {
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
        o.HO(this, parcel, n);
    }
}
