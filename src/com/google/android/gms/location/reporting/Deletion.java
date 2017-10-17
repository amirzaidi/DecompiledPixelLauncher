// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.accounts.Account;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class Deletion extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final h CREATOR;
    private final long BD;
    private final long BE;
    private final int BF;
    private final long BG;
    private final Account BH;
    
    static {
        CREATOR = new h();
    }
    
    Deletion(final int bf, final Account bh, final Long n, final Long n2, final Long n3) {
        this.BF = bf;
        this.BH = bh;
        this.BD = n;
        this.BE = n2;
        this.BG = n3;
    }
    
    public long Gr() {
        return this.BE;
    }
    
    public long Gs() {
        return this.BD;
    }
    
    public int Gt() {
        return this.BF;
    }
    
    public long Gu() {
        return this.BG;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof Deletion) {
            final Deletion deletion = (Deletion)o;
            if (this.BD != deletion.BD || this.BE != deletion.BE || this.BG != deletion.BG || !u.hH(this.BH, deletion.BH)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public Account getAccount() {
        return this.BH;
    }
    
    public int hashCode() {
        return u.hI(this.BH, this.BD, this.BE, this.BG);
    }
    
    public String toString() {
        final String value = String.valueOf(this.BH);
        return new StringBuilder(String.valueOf(value).length() + 122).append("Deletion{mAccount=").append(value).append(", mStartTimeMs=").append(this.BD).append(", mEndTimeMs=").append(this.BE).append(", mTimestampMs=").append(this.BG).append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final h creator = Deletion.CREATOR;
        h.Gw(this, parcel, n);
    }
}
