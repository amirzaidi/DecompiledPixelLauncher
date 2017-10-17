// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import android.os.IBinder;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ResolveAccountResponse extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    final int jI;
    private boolean jJ;
    IBinder jK;
    private ConnectionResult jL;
    private boolean jM;
    
    static {
        CREATOR = (Parcelable$Creator)new M();
    }
    
    ResolveAccountResponse(final int ji, final IBinder jk, final ConnectionResult jl, final boolean jj, final boolean jm) {
        this.jI = ji;
        this.jK = jk;
        this.jL = jl;
        this.jJ = jj;
        this.jM = jm;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof ResolveAccountResponse) {
            final ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse)o;
            if (!this.jL.equals(resolveAccountResponse.jL) || !this.lL().equals(resolveAccountResponse.lL())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public zzq lL() {
        return zzq$zza.zzgw(this.jK);
    }
    
    public ConnectionResult lM() {
        return this.jL;
    }
    
    public boolean lN() {
        return this.jJ;
    }
    
    public boolean lO() {
        return this.jM;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        M.lQ(this, parcel, n);
    }
}
