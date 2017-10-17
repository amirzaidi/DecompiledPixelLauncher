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
    final int zT;
    final int zU;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    public AutocompletePredictionEntity$SubstringEntity(final int zt, final int mOffset, final int zu) {
        this.zT = zt;
        this.mOffset = mOffset;
        this.zU = zu;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof AutocompletePredictionEntity$SubstringEntity) {
            final AutocompletePredictionEntity$SubstringEntity autocompletePredictionEntity$SubstringEntity = (AutocompletePredictionEntity$SubstringEntity)o;
            if (!u.kv(this.mOffset, autocompletePredictionEntity$SubstringEntity.mOffset) || !u.kv(this.zU, autocompletePredictionEntity$SubstringEntity.zU)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.mOffset, this.zU);
    }
    
    public String toString() {
        return u.kx(this).kp("offset", this.mOffset).kp("length", this.zU).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.EB(this, parcel, n);
    }
}
