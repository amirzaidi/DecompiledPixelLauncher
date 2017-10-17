// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Collections;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AutocompletePredictionEntity extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private static final List yf;
    final String xV;
    final List xW;
    final List xX;
    final int xY;
    final String xZ;
    final String ya;
    final int yb;
    final String yc;
    final List yd;
    final List ye;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
        yf = Collections.emptyList();
    }
    
    AutocompletePredictionEntity(final int yb, final String yc, final List xw, final int xy, final String xz, final List ye, final String xv, final List yd, final String ya, final List xx) {
        this.yb = yb;
        this.yc = yc;
        this.xW = xw;
        this.xY = xy;
        this.xZ = xz;
        this.ye = ye;
        this.xV = xv;
        this.yd = yd;
        this.ya = ya;
        this.xX = xx;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof AutocompletePredictionEntity) {
            final AutocompletePredictionEntity autocompletePredictionEntity = (AutocompletePredictionEntity)o;
            if (!u.hH(this.yc, autocompletePredictionEntity.yc) || !u.hH(this.xW, autocompletePredictionEntity.xW) || !u.hH(this.xY, autocompletePredictionEntity.xY) || !u.hH(this.xZ, autocompletePredictionEntity.xZ) || !u.hH(this.ye, autocompletePredictionEntity.ye) || !u.hH(this.xV, autocompletePredictionEntity.xV) || !u.hH(this.yd, autocompletePredictionEntity.yd) || !u.hH(this.ya, autocompletePredictionEntity.ya) || !u.hH(this.xX, autocompletePredictionEntity.xX)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.yc, this.xW, this.xY, this.xZ, this.ye, this.xV, this.yd, this.ya, this.xX);
    }
    
    public String toString() {
        return u.hJ(this).hB("placeId", this.yc).hB("placeTypes", this.xW).hB("fullText", this.xZ).hB("fullTextMatchedSubstrings", this.ye).hB("primaryText", this.xV).hB("primaryTextMatchedSubstrings", this.yd).hB("secondaryText", this.ya).hB("secondaryTextMatchedSubstrings", this.xX).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.DC(this, parcel, n);
    }
}
