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
    private final long Di;
    private final long Dj;
    private final int Dk;
    private final long Dl;
    private final Account Dm;
    
    static {
        CREATOR = new h();
    }
    
    Deletion(final int dk, final Account dm, final Long n, final Long n2, final Long n3) {
        this.Dk = dk;
        this.Dm = dm;
        this.Di = n;
        this.Dj = n2;
        this.Dl = n3;
    }
    
    public long Hk() {
        return this.Dj;
    }
    
    public long Hl() {
        return this.Di;
    }
    
    public int Hm() {
        return this.Dk;
    }
    
    public long Hn() {
        return this.Dl;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof Deletion) {
            final Deletion deletion = (Deletion)o;
            if (this.Di != deletion.Di || this.Dj != deletion.Dj || this.Dl != deletion.Dl || !u.kv(this.Dm, deletion.Dm)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public Account getAccount() {
        return this.Dm;
    }
    
    public int hashCode() {
        return u.kw(this.Dm, this.Di, this.Dj, this.Dl);
    }
    
    public String toString() {
        final String value = String.valueOf(this.Dm);
        return new StringBuilder(String.valueOf(value).length() + 122).append("Deletion{mAccount=").append(value).append(", mStartTimeMs=").append(this.Di).append(", mEndTimeMs=").append(this.Dj).append(", mTimestampMs=").append(this.Dl).append("}").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final h creator = Deletion.CREATOR;
        h.Hp(this, parcel, n);
    }
}
