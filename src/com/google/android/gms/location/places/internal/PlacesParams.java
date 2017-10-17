// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.a;
import java.util.Locale;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlacesParams extends AbstractSafeParcelable
{
    public static final b CREATOR;
    public static final PlacesParams zc;
    public final int yY;
    public final int yZ;
    public final int za;
    public final String zb;
    public final String zd;
    public final String ze;
    public final String zf;
    
    static {
        zc = new PlacesParams("com.google.android.gms", Locale.getDefault(), null);
        CREATOR = new b();
    }
    
    public PlacesParams(final int yy, final String zf, final String ze, final String zb, final String zd, final int za, final int yz) {
        this.yY = yy;
        this.zf = zf;
        this.ze = ze;
        this.zb = zb;
        this.zd = zd;
        this.za = za;
        this.yZ = yz;
    }
    
    public PlacesParams(final String s, final Locale locale, final String s2) {
        this(3, s, locale.toString(), s2, null, a.kx, 0);
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && o instanceof PlacesParams) {
            final PlacesParams placesParams = (PlacesParams)o;
            if (this.za != placesParams.za || this.yZ != placesParams.yZ || !this.ze.equals(placesParams.ze) || !this.zf.equals(placesParams.zf) || !u.hH(this.zb, placesParams.zb) || u.hH(this.zd, placesParams.zd)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.zf, this.ze, this.zb, this.zd, this.za, this.yZ);
    }
    
    public String toString() {
        return u.hJ(this).hB("clientPackageName", this.zf).hB("locale", this.ze).hB("accountName", this.zb).hB("gCoreClientName", this.zd).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.CW(this, parcel, n);
    }
}
