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
    public static final PlacesParams AH;
    public static final b CREATOR;
    public final int AD;
    public final int AE;
    public final int AF;
    public final String AG;
    public final String AI;
    public final String AJ;
    public final String AK;
    
    static {
        AH = new PlacesParams("com.google.android.gms", Locale.getDefault(), null);
        CREATOR = new b();
    }
    
    public PlacesParams(final int ad, final String ak, final String aj, final String ag, final String ai, final int af, final int ae) {
        this.AD = ad;
        this.AK = ak;
        this.AJ = aj;
        this.AG = ag;
        this.AI = ai;
        this.AF = af;
        this.AE = ae;
    }
    
    public PlacesParams(final String s, final Locale locale, final String s2) {
        this(3, s, locale.toString(), s2, null, a.np, 0);
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && o instanceof PlacesParams) {
            final PlacesParams placesParams = (PlacesParams)o;
            if (this.AF != placesParams.AF || this.AE != placesParams.AE || !this.AJ.equals(placesParams.AJ) || !this.AK.equals(placesParams.AK) || !u.kv(this.AG, placesParams.AG) || u.kv(this.AI, placesParams.AI)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.AK, this.AJ, this.AG, this.AI, this.AF, this.AE);
    }
    
    public String toString() {
        return u.kx(this).kp("clientPackageName", this.AK).kp("locale", this.AJ).kp("accountName", this.AG).kp("gCoreClientName", this.AI).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.DP(this, parcel, n);
    }
}
