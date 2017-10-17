// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.aI;
import com.google.android.gms.internal.zzaxw;
import android.util.Log;
import com.google.android.gms.internal.X;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ContextData extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int IA;
    private X IB;
    private byte[] IC;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    ContextData(final int ia, final byte[] ic) {
        this.IA = ia;
        this.IB = null;
        this.IC = ic;
        this.OM();
    }
    
    private void OK() {
        if (!this.OL()) {
            try {
                final byte[] ic = this.IC;
                try {
                    this.IB = X.tB(ic);
                    this.IC = null;
                }
                catch (zzaxw zzaxw) {
                    Log.e("ContextData", "Could not deserialize context bytes.", (Throwable)zzaxw);
                    throw new IllegalStateException(zzaxw);
                }
            }
            catch (zzaxw zzaxw2) {}
        }
        this.OM();
    }
    
    private void OM() {
        if (this.IB == null && this.IC != null) {
            return;
        }
        if (this.IB != null && this.IC == null) {
            return;
        }
        if (this.IB != null && this.IC != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        }
        if (this.IB == null && this.IC == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        }
        throw new IllegalStateException("Impossible");
    }
    
    byte[] OJ() {
        if (this.IC == null) {
            return aI.uW(this.IB);
        }
        return this.IC;
    }
    
    boolean OL() {
        return this.IB != null;
    }
    
    int ON() {
        return this.IA;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof ContextData) {
            final ContextData contextData = (ContextData)o;
            this.OK();
            contextData.OK();
            if (this.getId().equals(contextData.getId()) || this.IB.qL.rv != contextData.IB.qL.rv) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public String getId() {
        this.OK();
        return this.IB.qO;
    }
    
    public int hashCode() {
        this.OK();
        return u.hI(this.getId(), this.IB.qL.rv);
    }
    
    public String toString() {
        this.OK();
        return this.IB.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.OU(this, parcel, n);
    }
}
