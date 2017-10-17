// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.maps.a.a;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class StreetViewPanoramaOptions extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final b CREATOR;
    private LatLng FQ;
    private Boolean FR;
    private Integer FS;
    private Boolean FT;
    private String FU;
    private StreetViewPanoramaCamera FV;
    private Boolean FW;
    private final int FX;
    private Boolean FY;
    private Boolean FZ;
    
    static {
        CREATOR = new b();
    }
    
    public StreetViewPanoramaOptions() {
        final boolean fx = true;
        this.FR = fx;
        this.FT = fx;
        this.FW = fx;
        this.FZ = fx;
        this.FX = (fx ? 1 : 0);
    }
    
    StreetViewPanoramaOptions(final int fx, final StreetViewPanoramaCamera fv, final String fu, final LatLng fq, final Integer fs, final byte b, final byte b2, final byte b3, final byte b4, final byte b5) {
        final boolean b6 = true;
        this.FR = b6;
        this.FT = b6;
        this.FW = b6;
        this.FZ = b6;
        this.FX = fx;
        this.FV = fv;
        this.FQ = fq;
        this.FS = fs;
        this.FU = fu;
        this.FR = a.KB(b);
        this.FT = a.KB(b2);
        this.FW = a.KB(b3);
        this.FZ = a.KB(b4);
        this.FY = a.KB(b5);
    }
    
    byte La() {
        return a.KC(this.FY);
    }
    
    public String Lb() {
        return this.FU;
    }
    
    public StreetViewPanoramaCamera Lc() {
        return this.FV;
    }
    
    byte Ld() {
        return a.KC(this.FT);
    }
    
    byte Le() {
        return a.KC(this.FZ);
    }
    
    public LatLng Lf() {
        return this.FQ;
    }
    
    byte Lg() {
        return a.KC(this.FR);
    }
    
    byte Lh() {
        return a.KC(this.FW);
    }
    
    int Li() {
        return this.FX;
    }
    
    public Integer getRadius() {
        return this.FS;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.KX(this, parcel, n);
    }
}
