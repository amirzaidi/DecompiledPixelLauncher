// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AutocompletePredictionEntity$SubstringEntity extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    final int mOffset;
    final int yo;
    final int yp;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    public AutocompletePredictionEntity$SubstringEntity(final int yo, final int mOffset, final int yp) {
        this.yo = yo;
        this.mOffset = mOffset;
        this.yp = yp;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof AutocompletePredictionEntity$SubstringEntity) {
            final AutocompletePredictionEntity$SubstringEntity autocompletePredictionEntity$SubstringEntity = (AutocompletePredictionEntity$SubstringEntity)o;
            if (!u.hH(this.mOffset, autocompletePredictionEntity$SubstringEntity.mOffset) || !u.hH(this.yp, autocompletePredictionEntity$SubstringEntity.yp)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.mOffset, this.yp);
    }
    
    public String toString() {
        return u.hJ(this).hB("offset", this.mOffset).hB("length", this.yp).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.DI(this, parcel, n);
    }
}
