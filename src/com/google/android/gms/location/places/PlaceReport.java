// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final String BQ;
    private final String BR;
    final int BS;
    private final String BT;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    PlaceReport(final int bs, final String bt, final String br, final String bq) {
        this.BS = bs;
        this.BT = bt;
        this.BR = br;
        this.BQ = bq;
    }
    
    public String FF() {
        return this.BT;
    }
    
    public String FG() {
        return this.BQ;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof PlaceReport) {
            final PlaceReport placeReport = (PlaceReport)o;
            if (u.kv(this.BT, placeReport.BT) && u.kv(this.BR, placeReport.BR) && u.kv(this.BQ, placeReport.BQ)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public String getTag() {
        return this.BR;
    }
    
    public int hashCode() {
        return u.kw(this.BT, this.BR, this.BQ);
    }
    
    public String toString() {
        final n kx = u.kx(this);
        kx.kp("placeId", this.BT);
        kx.kp("tag", this.BR);
        if (!"unknown".equals(this.BQ)) {
            kx.kp("source", this.BQ);
        }
        return kx.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.FJ(this, parcel, n);
    }
}
