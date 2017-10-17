// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PolylineOptions extends AbstractSafeParcelable
{
    public static final g CREATOR;
    private boolean Fj;
    private final List Fk;
    private boolean Fl;
    private int Fm;
    private boolean Fn;
    private float Fo;
    private final int Fp;
    private float Fq;
    
    static {
        CREATOR = new g();
    }
    
    public PolylineOptions() {
        final boolean b = true;
        this.Fq = 10.0f;
        this.Fm = -16777216;
        this.Fo = 0.0f;
        this.Fl = b;
        this.Fj = false;
        this.Fn = false;
        this.Fp = (b ? 1 : 0);
        this.Fk = new ArrayList();
    }
    
    PolylineOptions(final int fp, final List fk, final float fq, final int fm, final float fo, final boolean fl, final boolean fj, final boolean fn) {
        this.Fq = 10.0f;
        this.Fm = -16777216;
        this.Fo = 0.0f;
        this.Fl = true;
        this.Fj = false;
        this.Fn = false;
        this.Fp = fp;
        this.Fk = fk;
        this.Fq = fq;
        this.Fm = fm;
        this.Fo = fo;
        this.Fl = fl;
        this.Fj = fj;
        this.Fn = fn;
    }
    
    public int Kf() {
        return this.Fm;
    }
    
    public float Kg() {
        return this.Fo;
    }
    
    public boolean Kh() {
        return this.Fj;
    }
    
    public boolean Ki() {
        return this.Fn;
    }
    
    int Kj() {
        return this.Fp;
    }
    
    public List Kk() {
        return this.Fk;
    }
    
    public float getWidth() {
        return this.Fq;
    }
    
    public boolean isVisible() {
        return this.Fl;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.IW(this, parcel, n);
    }
}
