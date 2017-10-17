// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.aC;
import com.google.android.gms.internal.zzaxw;
import android.util.Log;
import com.google.android.gms.internal.R;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ContextData extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int Kf;
    private R Kg;
    private byte[] Kh;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    ContextData(final int kf, final byte[] kh) {
        this.Kf = kf;
        this.Kg = null;
        this.Kh = kh;
        this.PF();
    }
    
    private void PD() {
        if (!this.PE()) {
            try {
                final byte[] kh = this.Kh;
                try {
                    this.Kg = R.tA(kh);
                    this.Kh = null;
                }
                catch (zzaxw zzaxw) {
                    Log.e("ContextData", "Could not deserialize context bytes.", (Throwable)zzaxw);
                    throw new IllegalStateException(zzaxw);
                }
            }
            catch (zzaxw zzaxw2) {}
        }
        this.PF();
    }
    
    private void PF() {
        if (this.Kg == null && this.Kh != null) {
            return;
        }
        if (this.Kg != null && this.Kh == null) {
            return;
        }
        if (this.Kg != null && this.Kh != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        }
        if (this.Kg == null && this.Kh == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        }
        throw new IllegalStateException("Impossible");
    }
    
    byte[] PC() {
        if (this.Kh == null) {
            return aC.uV(this.Kg);
        }
        return this.Kh;
    }
    
    boolean PE() {
        return this.Kg != null;
    }
    
    int PG() {
        return this.Kf;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof ContextData) {
            final ContextData contextData = (ContextData)o;
            this.PD();
            contextData.PD();
            if (this.getId().equals(contextData.getId()) || this.Kg.qS.version != contextData.Kg.qS.version) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public String getId() {
        this.PD();
        return this.Kg.qV;
    }
    
    public int hashCode() {
        this.PD();
        return u.kw(this.getId(), this.Kg.qS.version);
    }
    
    public String toString() {
        this.PD();
        return this.Kg.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.PN(this, parcel, n);
    }
}
