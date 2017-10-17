// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.HashMap;
import java.util.Collections;
import java.util.Locale;
import java.util.TimeZone;
import java.util.List;
import com.google.android.gms.maps.model.LatLngBounds;
import android.os.Bundle;
import java.util.Map;
import com.google.android.gms.maps.model.LatLng;
import android.net.Uri;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PlaceEntity extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final i CREATOR;
    private final Uri Aa;
    private final int Ab;
    final int Ac;
    private final String Ad;
    private final float Ae;
    private final String Af;
    private final LatLng Ag;
    private final String Ah;
    private final float Ai;
    private final Map Aj;
    private final Bundle Ak;
    private final LatLngBounds Al;
    private final List Am;
    private final TimeZone An;
    private final String Ao;
    private final String Ap;
    private final boolean Aq;
    private final List Ar;
    private Locale As;
    private final List zW;
    private final String zX;
    private final long zY;
    private final PlaceLocalization zZ;
    
    static {
        CREATOR = new i();
    }
    
    PlaceEntity(final int ac, final String ah, final List list, final List ar, Bundle ak, final String zx, final String ao, final String ap, final String af, List emptyList, final LatLng ag, final float ai, final LatLngBounds al, String ad, final Uri aa, final boolean aq, final float ae, final int ab, final long zy, final PlaceLocalization zz) {
        this.Ac = ac;
        this.Ah = ah;
        this.zW = Collections.unmodifiableList((List<?>)list);
        this.Ar = ar;
        if (ak == null) {
            ak = new Bundle();
        }
        this.Ak = ak;
        this.zX = zx;
        this.Ao = ao;
        this.Ap = ap;
        this.Af = af;
        if (emptyList == null) {
            emptyList = Collections.emptyList();
        }
        this.Am = emptyList;
        this.Ag = ag;
        this.Ai = ai;
        this.Al = al;
        if (ad == null) {
            ad = "UTC";
        }
        this.Ad = ad;
        this.Aa = aa;
        this.Aq = aq;
        this.Ae = ae;
        this.Ab = ab;
        this.zY = zy;
        this.Aj = Collections.unmodifiableMap((Map<?, ?>)new HashMap<Object, Object>());
        this.An = null;
        this.As = null;
        this.zZ = zz;
    }
    
    public float Eb() {
        return this.Ae;
    }
    
    public String Ec() {
        return this.Af;
    }
    
    public Uri Ed() {
        return this.Aa;
    }
    
    public LatLngBounds Ee() {
        return this.Al;
    }
    
    public List Ef() {
        return this.Ar;
    }
    
    public PlaceLocalization Eg() {
        return this.zZ;
    }
    
    public String Eh() {
        return this.zX;
    }
    
    public int Ei() {
        return this.Ab;
    }
    
    public String Ej() {
        return this.Ap;
    }
    
    public String Ek() {
        return this.Ad;
    }
    
    public String El() {
        return this.Ao;
    }
    
    public List Em() {
        return this.zW;
    }
    
    public List En() {
        return this.Am;
    }
    
    public float Eo() {
        return this.Ai;
    }
    
    public long Ep() {
        return this.zY;
    }
    
    public Bundle Eq() {
        return this.Ak;
    }
    
    public boolean Er() {
        return this.Aq;
    }
    
    public LatLng Es() {
        return this.Ag;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof PlaceEntity) {
            final PlaceEntity placeEntity = (PlaceEntity)o;
            if (!this.Ah.equals(placeEntity.Ah) || !u.kv(this.As, placeEntity.As) || this.zY != placeEntity.zY) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public String getId() {
        return this.Ah;
    }
    
    public int hashCode() {
        return u.kw(this.Ah, this.As, this.zY);
    }
    
    public String toString() {
        return u.kx(this).kp("id", this.Ah).kp("placeTypes", this.zW).kp("locale", this.As).kp("name", this.zX).kp("address", this.Ao).kp("phoneNumber", this.Ap).kp("latlng", this.Ag).kp("viewport", this.Al).kp("websiteUri", this.Aa).kp("isPermanentlyClosed", this.Aq).kp("priceLevel", this.Ab).kp("timestampSecs", this.zY).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.Ey(this, parcel, n);
    }
}
