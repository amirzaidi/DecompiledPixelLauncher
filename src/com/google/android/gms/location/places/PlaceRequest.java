// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PlaceRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final long Af;
    private final long Ag;
    final int Ah;
    private final boolean Ai;
    private final PlaceFilter Aj;
    private final int Ak;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public PlaceRequest(final int ah, final PlaceFilter aj, final long af, final int ak, final long ag, final boolean ai) {
        this.Ah = ah;
        this.Aj = aj;
        this.Af = af;
        this.Ak = ak;
        this.Ag = ag;
        this.Ai = ai;
    }
    
    public PlaceFilter EA() {
        return this.Aj;
    }
    
    public long EB() {
        return this.Af;
    }
    
    public long EC() {
        return this.Ag;
    }
    
    public boolean Ey() {
        return this.Ai;
    }
    
    public int Ez() {
        return this.Ak;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceRequest) {
            final PlaceRequest placeRequest = (PlaceRequest)o;
            if (u.hH(this.Aj, placeRequest.Aj) || this.Af != placeRequest.Af || this.Ak != placeRequest.Ak || this.Ag != placeRequest.Ag || this.Ai != placeRequest.Ai) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Aj, this.Af, this.Ak, this.Ag, this.Ai);
    }
    
    public String toString() {
        return u.hJ(this).hB("filter", this.Aj).hB("interval", this.Af).hB("priority", this.Ak).hB("expireAt", this.Ag).hB("receiveFailures", this.Ai).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.DV(this, parcel, n);
    }
}
