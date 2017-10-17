// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import java.util.Collection;
import com.google.android.gms.common.f;
import android.os.IBinder;
import android.accounts.Account;
import android.os.Bundle;
import com.google.android.gms.common.api.Scope;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GetServiceRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    String eZ;
    Scope[] fa;
    final int fb;
    long fc;
    int fd;
    Bundle fe;
    Account ff;
    final int fg;
    IBinder fh;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    public GetServiceRequest(final int fg) {
        this.fb = 3;
        this.fd = f.kC;
        this.fg = fg;
    }
    
    GetServiceRequest(final int fb, final int fg, final int fd, final String ez, final IBinder fh, final Scope[] fa, final Bundle fe, final Account ff, final long fc) {
        this.fb = fb;
        this.fg = fg;
        this.fd = fd;
        this.eZ = ez;
        if (fb >= 2) {
            this.fh = fh;
            this.ff = ff;
        }
        else {
            this.ff = this.gF(fh);
        }
        this.fa = fa;
        this.fe = fe;
        this.fc = fc;
    }
    
    private Account gF(final IBinder binder) {
        Account zza = null;
        if (binder != null) {
            zza = com.google.android.gms.common.internal.zza.zza(zzq$zza.zzgw(binder));
        }
        return zza;
    }
    
    public GetServiceRequest gC(final zzq zzq) {
        if (zzq != null) {
            this.fh = zzq.asBinder();
        }
        return this;
    }
    
    public GetServiceRequest gD(final Bundle fe) {
        this.fe = fe;
        return this;
    }
    
    public GetServiceRequest gE(final Account ff) {
        this.ff = ff;
        return this;
    }
    
    public GetServiceRequest gG(final String ez) {
        this.eZ = ez;
        return this;
    }
    
    public GetServiceRequest gH(final Collection collection) {
        this.fa = collection.toArray(new Scope[collection.size()]);
        return this;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.gI(this, parcel, n);
    }
}
