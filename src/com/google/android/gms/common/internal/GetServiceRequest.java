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
    String hS;
    Scope[] hT;
    long hU;
    int hV;
    Bundle hW;
    Account hX;
    final int hY;
    IBinder hZ;
    final int version;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    public GetServiceRequest(final int hy) {
        this.version = 3;
        this.hV = f.nu;
        this.hY = hy;
    }
    
    GetServiceRequest(final int version, final int hy, final int hv, final String hs, final IBinder hz, final Scope[] ht, final Bundle hw, final Account hx, final long hu) {
        this.version = version;
        this.hY = hy;
        this.hV = hv;
        this.hS = hs;
        if (version >= 2) {
            this.hZ = hz;
            this.hX = hx;
        }
        else {
            this.hX = this.jt(hz);
        }
        this.hT = ht;
        this.hW = hw;
        this.hU = hu;
    }
    
    private Account jt(final IBinder binder) {
        Account zza = null;
        if (binder != null) {
            zza = com.google.android.gms.common.internal.zza.zza(zzq$zza.zzgw(binder));
        }
        return zza;
    }
    
    public GetServiceRequest jq(final zzq zzq) {
        if (zzq != null) {
            this.hZ = zzq.asBinder();
        }
        return this;
    }
    
    public GetServiceRequest jr(final Bundle hw) {
        this.hW = hw;
        return this;
    }
    
    public GetServiceRequest js(final Account hx) {
        this.hX = hx;
        return this;
    }
    
    public GetServiceRequest ju(final String hs) {
        this.hS = hs;
        return this;
    }
    
    public GetServiceRequest jv(final Collection collection) {
        this.hT = collection.toArray(new Scope[collection.size()]);
        return this;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.jw(this, parcel, n);
    }
}
