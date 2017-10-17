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
    private final long BK;
    private final long BL;
    final int BM;
    private final boolean BN;
    private final PlaceFilter BO;
    private final int BP;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public PlaceRequest(final int bm, final PlaceFilter bo, final long bk, final int bp, final long bl, final boolean bn) {
        this.BM = bm;
        this.BO = bo;
        this.BK = bk;
        this.BP = bp;
        this.BL = bl;
        this.BN = bn;
    }
    
    public boolean Fr() {
        return this.BN;
    }
    
    public int Fs() {
        return this.BP;
    }
    
    public PlaceFilter Ft() {
        return this.BO;
    }
    
    public long Fu() {
        return this.BK;
    }
    
    public long Fv() {
        return this.BL;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceRequest) {
            final PlaceRequest placeRequest = (PlaceRequest)o;
            if (u.kv(this.BO, placeRequest.BO) || this.BK != placeRequest.BK || this.BP != placeRequest.BP || this.BL != placeRequest.BL || this.BN != placeRequest.BN) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.BO, this.BK, this.BP, this.BL, this.BN);
    }
    
    public String toString() {
        return u.kx(this).kp("filter", this.BO).kp("interval", this.BK).kp("priority", this.BP).kp("expireAt", this.BL).kp("receiveFailures", this.BN).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.EO(this, parcel, n);
    }
}
