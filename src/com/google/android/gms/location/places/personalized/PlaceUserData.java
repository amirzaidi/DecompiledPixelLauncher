// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlaceUserData extends AbstractSafeParcelable
{
    public static final d CREATOR;
    final int zw;
    private final String zx;
    private final String zy;
    private final List zz;
    
    static {
        CREATOR = new d();
    }
    
    PlaceUserData(final int zw, final String zx, final String zy, final List zz) {
        this.zw = zw;
        this.zx = zx;
        this.zy = zy;
        this.zz = zz;
    }
    
    public String DI() {
        return this.zx;
    }
    
    public String DJ() {
        return this.zy;
    }
    
    public List DK() {
        return this.zz;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceUserData) {
            final PlaceUserData placeUserData = (PlaceUserData)o;
            if (!this.zx.equals(placeUserData.zx) || !this.zy.equals(placeUserData.zy) || !this.zz.equals(placeUserData.zz)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.zx, this.zy, this.zz);
    }
    
    public String toString() {
        return u.kx(this).kp("accountName", this.zx).kp("placeId", this.zy).kp("placeAliases", this.zz).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.DL(this, parcel, n);
    }
}
