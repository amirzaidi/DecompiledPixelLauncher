// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import com.google.android.gms.internal.aC;
import com.google.android.gms.internal.zzaxw;
import com.google.android.gms.internal.J;
import com.google.android.gms.internal.G;
import android.os.Parcelable$Creator;
import com.google.android.gms.awareness.fence.AwarenessFence;

public class ContextFenceStub extends AwarenessFence
{
    public static final Parcelable$Creator CREATOR;
    private G JR;
    private final int JS;
    private byte[] JT;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    ContextFenceStub(final int js, final byte[] jt) {
        this.JS = js;
        this.JR = null;
        this.JT = jt;
        this.Pn();
    }
    
    private void Pl() {
        if (!this.Pm()) {
            try {
                final byte[] jt = this.JT;
                try {
                    this.JR = G.ta(jt);
                    this.JT = null;
                }
                catch (zzaxw zzaxw) {
                    J.te("ContextFenceStub", "Could not deserialize context fence bytes.", zzaxw);
                    throw new IllegalStateException(zzaxw);
                }
            }
            catch (zzaxw zzaxw2) {}
        }
        this.Pn();
    }
    
    private boolean Pm() {
        return this.JR != null;
    }
    
    private void Pn() {
        if (this.JR == null && this.JT != null) {
            return;
        }
        if (this.JR != null && this.JT == null) {
            return;
        }
        if (this.JR != null && this.JT != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        }
        if (this.JR == null && this.JT == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        }
        throw new IllegalStateException("Impossible");
    }
    
    public byte[] Po() {
        if (this.JT == null) {
            return aC.uV(this.JR);
        }
        return this.JT;
    }
    
    int Pp() {
        return this.JS;
    }
    
    public String toString() {
        this.Pl();
        return this.JR.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.Pa(this, parcel, n);
    }
}
