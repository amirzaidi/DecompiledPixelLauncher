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
    final int gQ;
    private boolean gR;
    IBinder gS;
    private ConnectionResult gT;
    private boolean gU;
    
    static {
        CREATOR = (Parcelable$Creator)new M();
    }
    
    ResolveAccountResponse(final int gq, final IBinder gs, final ConnectionResult gt, final boolean gr, final boolean gu) {
        this.gQ = gq;
        this.gS = gs;
        this.gT = gt;
        this.gR = gr;
        this.gU = gu;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof ResolveAccountResponse) {
            final ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse)o;
            if (!this.gT.equals(resolveAccountResponse.gT) || !this.iX().equals(resolveAccountResponse.iX())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public zzq iX() {
        return zzq$zza.zzgw(this.gS);
    }
    
    public ConnectionResult iY() {
        return this.gT;
    }
    
    public boolean iZ() {
        return this.gR;
    }
    
    public boolean ja() {
        return this.gU;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        M.jc(this, parcel, n);
    }
}
