// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Collection;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class NearbyAlertRequest extends AbstractSafeParcelable
{
    public static final j CREATOR;
    private final NearbyAlertFilter Aa;
    private final PlaceFilter Ab;
    private final int Ac;
    private final int Ad;
    private int Ae;
    private final boolean zX;
    private final int zY;
    private final int zZ;
    
    static {
        CREATOR = new j();
    }
    
    NearbyAlertRequest(final int zz, final int ad, final int ac, final PlaceFilter placeFilter, final NearbyAlertFilter aa, final boolean zx, final int zy, final int ae) {
        this.Ae = 110;
        this.zZ = zz;
        this.Ad = ad;
        this.Ac = ac;
        Label_0044: {
            if (aa == null) {
                Label_0039: {
                    if (placeFilter != null) {
                        NearbyAlertFilter aa2;
                        if (placeFilter.DJ() != null && !placeFilter.DJ().isEmpty()) {
                            aa2 = NearbyAlertFilter.DW(placeFilter.DJ());
                        }
                        else {
                            if (placeFilter.DK() == null || placeFilter.DK().isEmpty()) {
                                break Label_0039;
                            }
                            aa2 = NearbyAlertFilter.DY(placeFilter.DK());
                        }
                        this.Aa = aa2;
                        break Label_0044;
                    }
                }
                this.Aa = null;
            }
            else {
                this.Aa = aa;
            }
        }
        this.Ab = null;
        this.zX = zx;
        this.zY = zy;
        this.Ae = ae;
    }
    
    public int Ek() {
        return this.zY;
    }
    
    public int El() {
        return this.Ad;
    }
    
    public NearbyAlertFilter Em() {
        return this.Aa;
    }
    
    public int En() {
        return this.Ae;
    }
    
    public boolean Eo() {
        return this.zX;
    }
    
    public PlaceFilter Ep() {
        return null;
    }
    
    public int Eq() {
        return this.zZ;
    }
    
    public int Er() {
        return this.Ac;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof NearbyAlertRequest) {
            final NearbyAlertRequest nearbyAlertRequest = (NearbyAlertRequest)o;
            if (this.Ad != nearbyAlertRequest.Ad || this.Ac != nearbyAlertRequest.Ac || !u.hH(this.Aa, nearbyAlertRequest.Aa) || this.Ae != nearbyAlertRequest.Ae) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Ad, this.Ac, this.Aa, this.Ae);
    }
    
    public String toString() {
        return u.hJ(this).hB("transitionTypes", this.Ad).hB("loiteringTimeMillis", this.Ac).hB("nearbyAlertFilter", this.Aa).hB("priority", this.Ae).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.EG(this, parcel, n);
    }
}
