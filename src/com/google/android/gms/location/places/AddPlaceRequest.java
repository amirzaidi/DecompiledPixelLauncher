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
    private final LatLng AU;
    private final String AV;
    private final List AW;
    private final Uri AX;
    final int AY;
    private final String AZ;
    private final String Ba;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    AddPlaceRequest(final int ay, final String s, final LatLng latLng, final String s2, final List list, final String ba, final Uri ax) {
        final boolean b = true;
        boolean b2 = false;
        this.AY = ay;
        this.AV = l.kf(s);
        this.AU = (LatLng)l.kh(latLng);
        this.AZ = l.kf(s2);
        this.AW = new ArrayList((Collection)l.kh(list));
        l.ke(!this.AW.isEmpty() && b, "At least one place type should be provided.");
        if (!TextUtils.isEmpty((CharSequence)ba) || ax != null) {
            b2 = b;
        }
        l.ke(b2, "One of phone number or URI should be provided.");
        this.Ba = ba;
        this.AX = ax;
    }
    
    public String EE() {
        return this.AZ;
    }
    
    public String EF() {
        return this.AV;
    }
    
    public Uri EG() {
        return this.AX;
    }
    
    public String EH() {
        return this.Ba;
    }
    
    public LatLng EI() {
        return this.AU;
    }
    
    public List EJ() {
        return this.AW;
    }
    
    public String toString() {
        return u.kx(this).kp("name", this.AV).kp("latLng", this.AU).kp("address", this.AZ).kp("placeTypes", this.AW).kp("phoneNumer", this.Ba).kp("websiteUri", this.AX).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.Fy(this, parcel, n);
    }
}
