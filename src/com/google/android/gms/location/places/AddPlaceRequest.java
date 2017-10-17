// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import com.google.android.gms.common.internal.l;
import android.net.Uri;
import java.util.List;
import com.google.android.gms.maps.model.LatLng;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AddPlaceRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final LatLng zp;
    private final String zq;
    private final List zr;
    private final Uri zs;
    final int zt;
    private final String zu;
    private final String zv;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    AddPlaceRequest(final int zt, final String s, final LatLng latLng, final String s2, final List list, final String zv, final Uri zs) {
        final boolean b = true;
        boolean b2 = false;
        this.zt = zt;
        this.zq = l.hr(s);
        this.zp = (LatLng)l.ht(latLng);
        this.zu = l.hr(s2);
        this.zr = new ArrayList((Collection)l.ht(list));
        l.hq(!this.zr.isEmpty() && b, "At least one place type should be provided.");
        if (!TextUtils.isEmpty((CharSequence)zv) || zs != null) {
            b2 = b;
        }
        l.hq(b2, "One of phone number or URI should be provided.");
        this.zv = zv;
        this.zs = zs;
    }
    
    public String DL() {
        return this.zu;
    }
    
    public String DM() {
        return this.zq;
    }
    
    public Uri DN() {
        return this.zs;
    }
    
    public String DO() {
        return this.zv;
    }
    
    public LatLng DP() {
        return this.zp;
    }
    
    public List DQ() {
        return this.zr;
    }
    
    public String toString() {
        return u.hJ(this).hB("name", this.zq).hB("latLng", this.zp).hB("address", this.zu).hB("placeTypes", this.zr).hB("phoneNumer", this.zv).hB("websiteUri", this.zs).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.EF(this, parcel, n);
    }
}
