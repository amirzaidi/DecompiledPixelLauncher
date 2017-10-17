// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.aI;
import com.google.android.gms.internal.zzaxw;
import android.util.Log;
import com.google.android.gms.internal.I;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class Relation extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private I ID;
    private final int IE;
    private byte[] IF;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    Relation(final int ie, final byte[] if1) {
        this.IE = ie;
        this.ID = null;
        this.IF = if1;
        this.OR();
    }
    
    private void OO() {
        if (!this.OP()) {
            try {
                final byte[] if1 = this.IF;
                try {
                    this.ID = I.sR(if1);
                    this.IF = null;
                }
                catch (zzaxw zzaxw) {
                    Log.e("Relation", "Could not deserialize relation bytes.", (Throwable)zzaxw);
                    throw new IllegalStateException(zzaxw);
                }
            }
            catch (zzaxw zzaxw2) {}
        }
        this.OR();
    }
    
    private void OR() {
        if (this.ID == null && this.IF != null) {
            return;
        }
        if (this.ID != null && this.IF == null) {
            return;
        }
        if (this.ID != null && this.IF != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        }
        if (this.ID == null && this.IF == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        }
        throw new IllegalStateException("Impossible");
    }
    
    boolean OP() {
        return this.ID != null;
    }
    
    byte[] OQ() {
        if (this.IF == null) {
            return aI.uW(this.ID);
        }
        return this.IF;
    }
    
    int OS() {
        return this.IE;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof Relation) {
            final Relation relation = (Relation)o;
            this.OO();
            relation.OO();
            if (this.getId().equals(relation.getId()) || this.ID.px.rv != relation.ID.px.rv) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public String getId() {
        this.OO();
        return this.ID.pB;
    }
    
    public int hashCode() {
        this.OO();
        return u.hI(this.getId(), this.ID.px.rv);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.OX(this, parcel, n);
    }
}
