// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class GoogleMapOptions extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final a CREATOR;
    private LatLngBounds He;
    private int Hf;
    private Boolean Hg;
    private Boolean Hh;
    private Float Hi;
    private final int Hj;
    private Boolean Hk;
    private Boolean Hl;
    private Boolean Hm;
    private Boolean Hn;
    private Boolean Ho;
    private Boolean Hp;
    private Boolean Hq;
    private Boolean Hr;
    private CameraPosition Hs;
    private Float Ht;
    private Boolean Hu;
    
    static {
        CREATOR = new a();
    }
    
    public GoogleMapOptions() {
        this.Hf = -1;
        this.Hi = null;
        this.Ht = null;
        this.He = null;
        this.Hj = 1;
    }
    
    GoogleMapOptions(final int hj, final byte b, final byte b2, final int hf, final CameraPosition hs, final byte b3, final byte b4, final byte b5, final byte b6, final byte b7, final byte b8, final byte b9, final byte b10, final byte b11, final Float hi, final Float ht, final LatLngBounds he) {
        this.Hf = -1;
        this.Hi = null;
        this.Ht = null;
        this.He = null;
        this.Hj = hj;
        this.Hn = com.google.android.gms.maps.a.a.Lu(b);
        this.Hl = com.google.android.gms.maps.a.a.Lu(b2);
        this.Hf = hf;
        this.Hs = hs;
        this.Ho = com.google.android.gms.maps.a.a.Lu(b3);
        this.Hg = com.google.android.gms.maps.a.a.Lu(b4);
        this.Hm = com.google.android.gms.maps.a.a.Lu(b5);
        this.Hr = com.google.android.gms.maps.a.a.Lu(b6);
        this.Hp = com.google.android.gms.maps.a.a.Lu(b7);
        this.Hu = com.google.android.gms.maps.a.a.Lu(b8);
        this.Hh = com.google.android.gms.maps.a.a.Lu(b9);
        this.Hk = com.google.android.gms.maps.a.a.Lu(b10);
        this.Hq = com.google.android.gms.maps.a.a.Lu(b11);
        this.Hi = hi;
        this.Ht = ht;
        this.He = he;
    }
    
    byte LA() {
        return com.google.android.gms.maps.a.a.Lv(this.Ho);
    }
    
    byte LB() {
        return com.google.android.gms.maps.a.a.Lv(this.Hh);
    }
    
    int LC() {
        return this.Hj;
    }
    
    byte LD() {
        return com.google.android.gms.maps.a.a.Lv(this.Hp);
    }
    
    byte LE() {
        return com.google.android.gms.maps.a.a.Lv(this.Hl);
    }
    
    public Float LF() {
        return this.Hi;
    }
    
    public Float LG() {
        return this.Ht;
    }
    
    public CameraPosition LH() {
        return this.Hs;
    }
    
    byte LI() {
        return com.google.android.gms.maps.a.a.Lv(this.Hr);
    }
    
    byte LJ() {
        return com.google.android.gms.maps.a.a.Lv(this.Hg);
    }
    
    byte LK() {
        return com.google.android.gms.maps.a.a.Lv(this.Hk);
    }
    
    public int LL() {
        return this.Hf;
    }
    
    byte LM() {
        return com.google.android.gms.maps.a.a.Lv(this.Hu);
    }
    
    byte Lw() {
        return com.google.android.gms.maps.a.a.Lv(this.Hn);
    }
    
    public LatLngBounds Lx() {
        return this.He;
    }
    
    byte Ly() {
        return com.google.android.gms.maps.a.a.Lv(this.Hq);
    }
    
    byte Lz() {
        return com.google.android.gms.maps.a.a.Lv(this.Hm);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.LO(this, parcel, n);
    }
}
