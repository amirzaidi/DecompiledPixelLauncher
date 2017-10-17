// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Collections;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AutocompletePredictionEntity extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private static final List zK;
    final String zA;
    final List zB;
    final List zC;
    final int zD;
    final String zE;
    final String zF;
    final int zG;
    final String zH;
    final List zI;
    final List zJ;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
        zK = Collections.emptyList();
    }
    
    AutocompletePredictionEntity(final int zg, final String zh, final List zb, final int zd, final String ze, final List zj, final String za, final List zi, final String zf, final List zc) {
        this.zG = zg;
        this.zH = zh;
        this.zB = zb;
        this.zD = zd;
        this.zE = ze;
        this.zJ = zj;
        this.zA = za;
        this.zI = zi;
        this.zF = zf;
        this.zC = zc;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof AutocompletePredictionEntity) {
            final AutocompletePredictionEntity autocompletePredictionEntity = (AutocompletePredictionEntity)o;
            if (!u.kv(this.zH, autocompletePredictionEntity.zH) || !u.kv(this.zB, autocompletePredictionEntity.zB) || !u.kv(this.zD, autocompletePredictionEntity.zD) || !u.kv(this.zE, autocompletePredictionEntity.zE) || !u.kv(this.zJ, autocompletePredictionEntity.zJ) || !u.kv(this.zA, autocompletePredictionEntity.zA) || !u.kv(this.zI, autocompletePredictionEntity.zI) || !u.kv(this.zF, autocompletePredictionEntity.zF) || !u.kv(this.zC, autocompletePredictionEntity.zC)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.zH, this.zB, this.zD, this.zE, this.zJ, this.zA, this.zI, this.zF, this.zC);
    }
    
    public String toString() {
        return u.kx(this).kp("placeId", this.zH).kp("placeTypes", this.zB).kp("fullText", this.zE).kp("fullTextMatchedSubstrings", this.zJ).kp("primaryText", this.zA).kp("primaryTextMatchedSubstrings", this.zI).kp("secondaryText", this.zF).kp("secondaryTextMatchedSubstrings", this.zC).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.Ev(this, parcel, n);
    }
}
