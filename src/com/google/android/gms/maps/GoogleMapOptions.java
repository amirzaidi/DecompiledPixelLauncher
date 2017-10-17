// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class GoogleMapOptions extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final a CREATOR;
    private int FA;
    private Boolean FB;
    private Boolean FC;
    private Float FD;
    private final int FE;
    private Boolean FF;
    private Boolean FG;
    private Boolean FH;
    private Boolean FI;
    private Boolean FJ;
    private Boolean FK;
    private Boolean FL;
    private Boolean FM;
    private CameraPosition FN;
    private Float FO;
    private Boolean FP;
    private LatLngBounds Fz;
    
    static {
        CREATOR = new a();
    }
    
    public GoogleMapOptions() {
        this.FA = -1;
        this.FD = null;
        this.FO = null;
        this.Fz = null;
        this.FE = 1;
    }
    
    GoogleMapOptions(final int fe, final byte b, final byte b2, final int fa, final CameraPosition fn, final byte b3, final byte b4, final byte b5, final byte b6, final byte b7, final byte b8, final byte b9, final byte b10, final byte b11, final Float fd, final Float fo, final LatLngBounds fz) {
        this.FA = -1;
        this.FD = null;
        this.FO = null;
        this.Fz = null;
        this.FE = fe;
        this.FI = com.google.android.gms.maps.a.a.KB(b);
        this.FG = com.google.android.gms.maps.a.a.KB(b2);
        this.FA = fa;
        this.FN = fn;
        this.FJ = com.google.android.gms.maps.a.a.KB(b3);
        this.FB = com.google.android.gms.maps.a.a.KB(b4);
        this.FH = com.google.android.gms.maps.a.a.KB(b5);
        this.FM = com.google.android.gms.maps.a.a.KB(b6);
        this.FK = com.google.android.gms.maps.a.a.KB(b7);
        this.FP = com.google.android.gms.maps.a.a.KB(b8);
        this.FC = com.google.android.gms.maps.a.a.KB(b9);
        this.FF = com.google.android.gms.maps.a.a.KB(b10);
        this.FL = com.google.android.gms.maps.a.a.KB(b11);
        this.FD = fd;
        this.FO = fo;
        this.Fz = fz;
    }
    
    byte KD() {
        return com.google.android.gms.maps.a.a.KC(this.FI);
    }
    
    public LatLngBounds KE() {
        return this.Fz;
    }
    
    byte KF() {
        return com.google.android.gms.maps.a.a.KC(this.FL);
    }
    
    byte KG() {
        return com.google.android.gms.maps.a.a.KC(this.FH);
    }
    
    byte KH() {
        return com.google.android.gms.maps.a.a.KC(this.FJ);
    }
    
    byte KI() {
        return com.google.android.gms.maps.a.a.KC(this.FC);
    }
    
    int KJ() {
        return this.FE;
    }
    
    byte KK() {
        return com.google.android.gms.maps.a.a.KC(this.FK);
    }
    
    byte KL() {
        return com.google.android.gms.maps.a.a.KC(this.FG);
    }
    
    public Float KM() {
        return this.FD;
    }
    
    public Float KN() {
        return this.FO;
    }
    
    public CameraPosition KO() {
        return this.FN;
    }
    
    byte KP() {
        return com.google.android.gms.maps.a.a.KC(this.FM);
    }
    
    byte KQ() {
        return com.google.android.gms.maps.a.a.KC(this.FB);
    }
    
    byte KR() {
        return com.google.android.gms.maps.a.a.KC(this.FF);
    }
    
    public int KS() {
        return this.FA;
    }
    
    byte KT() {
        return com.google.android.gms.maps.a.a.KC(this.FP);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.KV(this, parcel, n);
    }
}
