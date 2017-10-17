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
    private final boolean BC;
    private final int BD;
    private final int BE;
    private final NearbyAlertFilter BF;
    private final PlaceFilter BG;
    private final int BH;
    private final int BI;
    private int BJ;
    
    static {
        CREATOR = new j();
    }
    
    NearbyAlertRequest(final int be, final int bi, final int bh, final PlaceFilter placeFilter, final NearbyAlertFilter bf, final boolean bc, final int bd, final int bj) {
        this.BJ = 110;
        this.BE = be;
        this.BI = bi;
        this.BH = bh;
        Label_0044: {
            if (bf == null) {
                Label_0039: {
                    if (placeFilter != null) {
                        NearbyAlertFilter bf2;
                        if (placeFilter.EC() != null && !placeFilter.EC().isEmpty()) {
                            bf2 = NearbyAlertFilter.EP(placeFilter.EC());
                        }
                        else {
                            if (placeFilter.ED() == null || placeFilter.ED().isEmpty()) {
                                break Label_0039;
                            }
                            bf2 = NearbyAlertFilter.ER(placeFilter.ED());
                        }
                        this.BF = bf2;
                        break Label_0044;
                    }
                }
                this.BF = null;
            }
            else {
                this.BF = bf;
            }
        }
        this.BG = null;
        this.BC = bc;
        this.BD = bd;
        this.BJ = bj;
    }
    
    public int Fd() {
        return this.BD;
    }
    
    public int Fe() {
        return this.BI;
    }
    
    public NearbyAlertFilter Ff() {
        return this.BF;
    }
    
    public int Fg() {
        return this.BJ;
    }
    
    public boolean Fh() {
        return this.BC;
    }
    
    public PlaceFilter Fi() {
        return null;
    }
    
    public int Fj() {
        return this.BE;
    }
    
    public int Fk() {
        return this.BH;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof NearbyAlertRequest) {
            final NearbyAlertRequest nearbyAlertRequest = (NearbyAlertRequest)o;
            if (this.BI != nearbyAlertRequest.BI || this.BH != nearbyAlertRequest.BH || !u.kv(this.BF, nearbyAlertRequest.BF) || this.BJ != nearbyAlertRequest.BJ) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.BI, this.BH, this.BF, this.BJ);
    }
    
    public String toString() {
        return u.kx(this).kp("transitionTypes", this.BI).kp("loiteringTimeMillis", this.BH).kp("nearbyAlertFilter", this.BF).kp("priority", this.BJ).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.Fz(this, parcel, n);
    }
}
