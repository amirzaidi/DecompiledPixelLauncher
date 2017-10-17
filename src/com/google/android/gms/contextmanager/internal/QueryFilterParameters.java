// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class QueryFilterParameters extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int IX;
    private final int IY;
    private final int IZ;
    private final int[] Ja;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    QueryFilterParameters(final int iz, final int ix, final int iy, final int[] ja) {
        this.IZ = iz;
        this.IX = ix;
        this.IY = iy;
        this.Ja = ja;
    }
    
    public int NB() {
        return this.IY;
    }
    
    public int NC() {
        return this.IX;
    }
    
    public int[] ND() {
        return this.Ja;
    }
    
    int NE() {
        return this.IZ;
    }
    
    public boolean NF() {
        return this.Ja != null;
    }
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (o == this) {
            return b;
        }
        if (!(o instanceof QueryFilterParameters)) {
            return false;
        }
        final QueryFilterParameters queryFilterParameters = (QueryFilterParameters)o;
        if (queryFilterParameters.IY != this.IY) {
            return false;
        }
        if (queryFilterParameters.IX != this.IX) {
            return false;
        }
        if (queryFilterParameters.IZ != this.IZ) {
            return false;
        }
        if (this.NF() == queryFilterParameters.NF()) {
            if (this.NF()) {
                if (this.Ja.length != queryFilterParameters.Ja.length) {
                    return false;
                }
                final int[] ja = queryFilterParameters.Ja;
                final int length = ja.length;
                int i = 0;
            Label_0156:
                while (i < length) {
                    final int n = ja[i];
                    final int[] ja2 = this.Ja;
                    final int length2 = ja2.length;
                    int j = 0;
                    while (true) {
                        while (j < length2) {
                            if (ja2[j] != n) {
                                ++j;
                            }
                            else {
                                final boolean b2 = b;
                                if (b2) {
                                    ++i;
                                    continue Label_0156;
                                }
                                return false;
                            }
                        }
                        final boolean b2 = false;
                        continue;
                    }
                }
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        int n;
        if (this.Ja == null) {
            n = 0;
        }
        else {
            final int[] ja = this.Ja;
            final int length = ja.length;
            int i = 0;
            n = 0;
            while (i < length) {
                final int n2 = ja[i] * 13 + n;
                ++i;
                n = n2;
            }
        }
        return u.kw(n, this.IX, this.IY, this.IZ);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.NL(this, parcel, n);
    }
}
