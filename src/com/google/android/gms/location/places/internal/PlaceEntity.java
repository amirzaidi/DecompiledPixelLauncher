// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.HashMap;
import java.util.Collections;
import android.net.Uri;
import java.util.Locale;
import java.util.TimeZone;
import java.util.List;
import com.google.android.gms.maps.model.LatLngBounds;
import android.os.Bundle;
import java.util.Map;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PlaceEntity extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final i CREATOR;
    private final String yA;
    private final LatLng yB;
    private final String yC;
    private final float yD;
    private final Map yE;
    private final Bundle yF;
    private final LatLngBounds yG;
    private final List yH;
    private final TimeZone yI;
    private final String yJ;
    private final String yK;
    private final boolean yL;
    private final List yM;
    private Locale yN;
    private final List yr;
    private final String ys;
    private final long yt;
    private final PlaceLocalization yu;
    private final Uri yv;
    private final int yw;
    final int yx;
    private final String yy;
    private final float yz;
    
    static {
        CREATOR = new i();
    }
    
    PlaceEntity(final int yx, final String yc, final List list, final List ym, Bundle yf, final String ys, final String yj, final String yk, final String ya, List emptyList, final LatLng yb, final float yd, final LatLngBounds yg, String yy, final Uri yv, final boolean yl, final float yz, final int yw, final long yt, final PlaceLocalization yu) {
        this.yx = yx;
        this.yC = yc;
        this.yr = Collections.unmodifiableList((List<?>)list);
        this.yM = ym;
        if (yf == null) {
            yf = new Bundle();
        }
        this.yF = yf;
        this.ys = ys;
        this.yJ = yj;
        this.yK = yk;
        this.yA = ya;
        if (emptyList == null) {
            emptyList = Collections.emptyList();
        }
        this.yH = emptyList;
        this.yB = yb;
        this.yD = yd;
        this.yG = yg;
        if (yy == null) {
            yy = "UTC";
        }
        this.yy = yy;
        this.yv = yv;
        this.yL = yl;
        this.yz = yz;
        this.yw = yw;
        this.yt = yt;
        this.yE = Collections.unmodifiableMap((Map<?, ?>)new HashMap<Object, Object>());
        this.yI = null;
        this.yN = null;
        this.yu = yu;
    }
    
    public float Di() {
        return this.yz;
    }
    
    public String Dj() {
        return this.yA;
    }
    
    public Uri Dk() {
        return this.yv;
    }
    
    public LatLngBounds Dl() {
        return this.yG;
    }
    
    public List Dm() {
        return this.yM;
    }
    
    public PlaceLocalization Dn() {
        return this.yu;
    }
    
    public String Do() {
        return this.ys;
    }
    
    public int Dp() {
        return this.yw;
    }
    
    public String Dq() {
        return this.yK;
    }
    
    public String Dr() {
        return this.yy;
    }
    
    public String Ds() {
        return this.yJ;
    }
    
    public List Dt() {
        return this.yr;
    }
    
    public List Du() {
        return this.yH;
    }
    
    public float Dv() {
        return this.yD;
    }
    
    public long Dw() {
        return this.yt;
    }
    
    public Bundle Dx() {
        return this.yF;
    }
    
    public boolean Dy() {
        return this.yL;
    }
    
    public LatLng Dz() {
        return this.yB;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceEntity) {
            final PlaceEntity placeEntity = (PlaceEntity)o;
            if (!this.yC.equals(placeEntity.yC) || !u.hH(this.yN, placeEntity.yN) || this.yt != placeEntity.yt) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public String getId() {
        return this.yC;
    }
    
    public int hashCode() {
        return u.hI(this.yC, this.yN, this.yt);
    }
    
    public String toString() {
        return u.hJ(this).hB("id", this.yC).hB("placeTypes", this.yr).hB("locale", this.yN).hB("name", this.ys).hB("address", this.yJ).hB("phoneNumber", this.yK).hB("latlng", this.yB).hB("viewport", this.yG).hB("websiteUri", this.yv).hB("isPermanentlyClosed", this.yL).hB("priceLevel", this.yw).hB("timestampSecs", this.yt).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.DF(this, parcel, n);
    }
}
