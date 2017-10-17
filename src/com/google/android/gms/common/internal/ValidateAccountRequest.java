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
    private final int fP;
    private final Scope[] fQ;
    private final Bundle fR;
    final int fS;
    final IBinder fT;
    private final String fU;
    
    static {
        CREATOR = (Parcelable$Creator)new E();
    }
    
    ValidateAccountRequest(final int fs, final int fp, final IBinder ft, final Scope[] fq, final Bundle fr, final String fu) {
        this.fS = fs;
        this.fP = fp;
        this.fT = ft;
        this.fQ = fq;
        this.fR = fr;
        this.fU = fu;
    }
    
    public int hL() {
        return this.fP;
    }
    
    public Scope[] hM() {
        return this.fQ;
    }
    
    public String hN() {
        return this.fU;
    }
    
    public Bundle hO() {
        return this.fR;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        E.iw(this, parcel, n);
    }
}
