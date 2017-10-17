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
    private final String Al;
    private final String Am;
    final int An;
    private final String Ao;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    PlaceReport(final int an, final String ao, final String am, final String al) {
        this.An = an;
        this.Ao = ao;
        this.Am = am;
        this.Al = al;
    }
    
    public String EM() {
        return this.Ao;
    }
    
    public String EN() {
        return this.Al;
    }
    
    public boolean equals(final Object o) {
        boolean b = false;
        if (o instanceof PlaceReport) {
            final PlaceReport placeReport = (PlaceReport)o;
            if (u.hH(this.Ao, placeReport.Ao) && u.hH(this.Am, placeReport.Am) && u.hH(this.Al, placeReport.Al)) {
                b = true;
            }
            return b;
        }
        return false;
    }
    
    public String getTag() {
        return this.Am;
    }
    
    public int hashCode() {
        return u.hI(this.Ao, this.Am, this.Al);
    }
    
    public String toString() {
        final n hj = u.hJ(this);
        hj.hB("placeId", this.Ao);
        hj.hB("tag", this.Am);
        if (!"unknown".equals(this.Al)) {
            hj.hB("source", this.Al);
        }
        return hj.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.EQ(this, parcel, n);
    }
}
