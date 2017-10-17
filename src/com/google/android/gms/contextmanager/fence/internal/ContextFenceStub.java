// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import com.google.android.gms.internal.aI;
import com.google.android.gms.internal.zzaxw;
import com.google.android.gms.internal.P;
import com.google.android.gms.internal.M;
import android.os.Parcelable$Creator;
import com.google.android.gms.awareness.fence.AwarenessFence;

public class ContextFenceStub extends AwarenessFence
{
    public static final Parcelable$Creator CREATOR;
    private M Im;
    private final int In;
    private byte[] Io;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    ContextFenceStub(final int in, final byte[] io) {
        this.In = in;
        this.Im = null;
        this.Io = io;
        this.Ou();
    }
    
    private void Os() {
        if (!this.Ot()) {
            try {
                final byte[] io = this.Io;
                try {
                    this.Im = M.tb(io);
                    this.Io = null;
                }
                catch (zzaxw zzaxw) {
                    P.tf("ContextFenceStub", "Could not deserialize context fence bytes.", zzaxw);
                    throw new IllegalStateException(zzaxw);
                }
            }
            catch (zzaxw zzaxw2) {}
        }
        this.Ou();
    }
    
    private boolean Ot() {
        return this.Im != null;
    }
    
    private void Ou() {
        if (this.Im == null && this.Io != null) {
            return;
        }
        if (this.Im != null && this.Io == null) {
            return;
        }
        if (this.Im != null && this.Io != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        }
        if (this.Im == null && this.Io == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        }
        throw new IllegalStateException("Impossible");
    }
    
    public byte[] Ov() {
        if (this.Io == null) {
            return aI.uW(this.Im);
        }
        return this.Io;
    }
    
    int Ow() {
        return this.In;
    }
    
    public String toString() {
        this.Os();
        return this.Im.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.Oh(this, parcel, n);
    }
}
