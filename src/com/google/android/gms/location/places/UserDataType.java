// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.a.o;
import java.util.Set;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class UserDataType extends AbstractSafeParcelable
{
    public static final UserDataType Bf;
    public static final UserDataType Bg;
    public static final UserDataType Bh;
    public static final Set Bi;
    public static final h CREATOR;
    final int Bj;
    final int Bk;
    final String Bl;
    
    static {
        Bh = EL("test_type", 1);
        Bg = EL("labeled_place", 6);
        Bf = EL("here_content", 7);
        Bi = o.mQ(UserDataType.Bh, UserDataType.Bg, UserDataType.Bf);
        CREATOR = new h();
    }
    
    UserDataType(final int bj, final String bl, final int bk) {
        l.kf(bl);
        this.Bj = bj;
        this.Bl = bl;
        this.Bk = bk;
    }
    
    private static UserDataType EL(final String s, final int n) {
        return new UserDataType(0, s, n);
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof UserDataType) {
            final UserDataType userDataType = (UserDataType)o;
            if (this.Bl.equals(userDataType.Bl) || this.Bk != userDataType.Bk) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return this.Bl.hashCode();
    }
    
    public String toString() {
        return this.Bl;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.Fq(this, parcel, n);
    }
}
