// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.aC;
import com.google.android.gms.internal.zzaxw;
import android.util.Log;
import com.google.android.gms.internal.C;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class Relation extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private C Ki;
    private final int Kj;
    private byte[] Kk;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    Relation(final int kj, final byte[] kk) {
        this.Kj = kj;
        this.Ki = null;
        this.Kk = kk;
        this.PK();
    }
    
    private void PH() {
        if (!this.PI()) {
            try {
                final byte[] kk = this.Kk;
                try {
                    this.Ki = C.sQ(kk);
                    this.Kk = null;
                }
                catch (zzaxw zzaxw) {
                    Log.e("Relation", "Could not deserialize relation bytes.", (Throwable)zzaxw);
                    throw new IllegalStateException(zzaxw);
                }
            }
            catch (zzaxw zzaxw2) {}
        }
        this.PK();
    }
    
    private void PK() {
        if (this.Ki == null && this.Kk != null) {
            return;
        }
        if (this.Ki != null && this.Kk == null) {
            return;
        }
        if (this.Ki != null && this.Kk != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        }
        if (this.Ki == null && this.Kk == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        }
        throw new IllegalStateException("Impossible");
    }
    
    boolean PI() {
        return this.Ki != null;
    }
    
    byte[] PJ() {
        if (this.Kk == null) {
            return aC.uV(this.Ki);
        }
        return this.Kk;
    }
    
    int PL() {
        return this.Kj;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof Relation) {
            final Relation relation = (Relation)o;
            this.PH();
            relation.PH();
            if (this.getId().equals(relation.getId()) || this.Ki.pE.version != relation.Ki.pE.version) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public String getId() {
        this.PH();
        return this.Ki.pI;
    }
    
    public int hashCode() {
        this.PH();
        return u.kw(this.getId(), this.Ki.pE.version);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.PQ(this, parcel, n);
    }
}
