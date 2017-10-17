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
    public static final h CREATOR;
    public static final UserDataType zA;
    public static final UserDataType zB;
    public static final UserDataType zC;
    public static final Set zD;
    final int zE;
    final int zF;
    final String zG;
    
    static {
        zC = DS("test_type", 1);
        zB = DS("labeled_place", 6);
        zA = DS("here_content", 7);
        zD = o.kc(UserDataType.zC, UserDataType.zB, UserDataType.zA);
        CREATOR = new h();
    }
    
    UserDataType(final int ze, final String zg, final int zf) {
        l.hr(zg);
        this.zE = ze;
        this.zG = zg;
        this.zF = zf;
    }
    
    private static UserDataType DS(final String s, final int n) {
        return new UserDataType(0, s, n);
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof UserDataType) {
            final UserDataType userDataType = (UserDataType)o;
            if (this.zG.equals(userDataType.zG) || this.zF != userDataType.zF) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return this.zG.hashCode();
    }
    
    public String toString() {
        return this.zG;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.Ex(this, parcel, n);
    }
}
