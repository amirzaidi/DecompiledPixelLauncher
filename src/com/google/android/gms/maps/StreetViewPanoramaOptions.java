// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.maps.a.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class StreetViewPanoramaOptions extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final b CREATOR;
    private StreetViewPanoramaCamera HA;
    private Boolean HB;
    private final int HC;
    private Boolean HD;
    private Boolean HE;
    private LatLng Hv;
    private Boolean Hw;
    private Integer Hx;
    private Boolean Hy;
    private String Hz;
    
    static {
        CREATOR = new b();
    }
    
    public StreetViewPanoramaOptions() {
        final boolean hc = true;
        this.Hw = hc;
        this.Hy = hc;
        this.HB = hc;
        this.HE = hc;
        this.HC = (hc ? 1 : 0);
    }
    
    StreetViewPanoramaOptions(final int hc, final StreetViewPanoramaCamera ha, final String hz, final LatLng hv, final Integer hx, final byte b, final byte b2, final byte b3, final byte b4, final byte b5) {
        final boolean b6 = true;
        this.Hw = b6;
        this.Hy = b6;
        this.HB = b6;
        this.HE = b6;
        this.HC = hc;
        this.HA = ha;
        this.Hv = hv;
        this.Hx = hx;
        this.Hz = hz;
        this.Hw = a.Lu(b);
        this.Hy = a.Lu(b2);
        this.HB = a.Lu(b3);
        this.HE = a.Lu(b4);
        this.HD = a.Lu(b5);
    }
    
    byte LT() {
        return a.Lv(this.HD);
    }
    
    public String LU() {
        return this.Hz;
    }
    
    public StreetViewPanoramaCamera LV() {
        return this.HA;
    }
    
    byte LW() {
        return a.Lv(this.Hy);
    }
    
    byte LX() {
        return a.Lv(this.HE);
    }
    
    public LatLng LY() {
        return this.Hv;
    }
    
    byte LZ() {
        return a.Lv(this.Hw);
    }
    
    byte Ma() {
        return a.Lv(this.HB);
    }
    
    int Mb() {
        return this.HC;
    }
    
    public Integer getRadius() {
        return this.Hx;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.LQ(this, parcel, n);
    }
}
