// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.IBinder;
import android.os.Bundle;
import com.google.android.gms.common.api.Scope;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ValidateAccountRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int iH;
    private final Scope[] iI;
    private final Bundle iJ;
    final int iK;
    final IBinder iL;
    private final String iM;
    
    static {
        CREATOR = (Parcelable$Creator)new E();
    }
    
    ValidateAccountRequest(final int ik, final int ih, final IBinder il, final Scope[] ii, final Bundle ij, final String im) {
        this.iK = ik;
        this.iH = ih;
        this.iL = il;
        this.iI = ii;
        this.iJ = ij;
        this.iM = im;
    }
    
    public Scope[] kA() {
        return this.iI;
    }
    
    public String kB() {
        return this.iM;
    }
    
    public Bundle kC() {
        return this.iJ;
    }
    
    public int kz() {
        return this.iH;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        E.lk(this, parcel, n);
    }
}
