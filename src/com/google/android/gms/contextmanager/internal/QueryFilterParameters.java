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
    private final int Hv;
    private final int Hw;
    private final int Hx;
    private final int[] Hy;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    QueryFilterParameters(final int hx, final int hv, final int hw, final int[] hy) {
        this.Hx = hx;
        this.Hv = hv;
        this.Hw = hw;
        this.Hy = hy;
    }
    
    public int ML() {
        return this.Hw;
    }
    
    public int MM() {
        return this.Hv;
    }
    
    public int[] MN() {
        return this.Hy;
    }
    
    int MO() {
        return this.Hx;
    }
    
    public boolean MP() {
        return this.Hy != null;
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
        if (queryFilterParameters.Hw != this.Hw) {
            return false;
        }
        if (queryFilterParameters.Hv != this.Hv) {
            return false;
        }
        if (queryFilterParameters.Hx != this.Hx) {
            return false;
        }
        if (this.MP() == queryFilterParameters.MP()) {
            if (this.MP()) {
                if (this.Hy.length != queryFilterParameters.Hy.length) {
                    return false;
                }
                final int[] hy = queryFilterParameters.Hy;
                final int length = hy.length;
                int i = 0;
            Label_0156:
                while (i < length) {
                    final int n = hy[i];
                    final int[] hy2 = this.Hy;
                    final int length2 = hy2.length;
                    int j = 0;
                    while (true) {
                        while (j < length2) {
                            if (hy2[j] != n) {
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
        if (this.Hy == null) {
            n = 0;
        }
        else {
            final int[] hy = this.Hy;
            final int length = hy.length;
            int i = 0;
            n = 0;
            while (i < length) {
                final int n2 = hy[i] * 13 + n;
                ++i;
                n = n2;
            }
        }
        return u.hI(n, this.Hv, this.Hw, this.Hx);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.MS(this, parcel, n);
    }
}
