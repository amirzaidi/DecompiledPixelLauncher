// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.Collection;
import java.util.List;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AutocompleteFilter extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final f CREATOR;
    final int Bb;
    final List Bc;
    final int Bd;
    final boolean Be;
    
    static {
        CREATOR = new f();
    }
    
    AutocompleteFilter(final int bd, final boolean be, final List bc) {
        final int n = 1;
        boolean be2 = false;
        this.Bd = bd;
        this.Bc = bc;
        this.Bb = EK(bc);
        if (this.Bd >= n) {
            this.Be = be;
        }
        else {
            if (!be) {
                be2 = (n != 0);
            }
            this.Be = be2;
        }
    }
    
    private static int EK(final Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            return collection.iterator().next();
        }
        return 0;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof AutocompleteFilter) {
            final AutocompleteFilter autocompleteFilter = (AutocompleteFilter)o;
            if (this.Bb != autocompleteFilter.Bb || this.Be != autocompleteFilter.Be) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.Be, this.Bb);
    }
    
    public String toString() {
        return u.kx(this).kp("includeQueryPredictions", this.Be).kp("typeFilter", this.Bb).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.Fa(this, parcel, n);
    }
}
