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
    final int zw;
    final List zx;
    final int zy;
    final boolean zz;
    
    static {
        CREATOR = new f();
    }
    
    AutocompleteFilter(final int zy, final boolean zz, final List zx) {
        final int n = 1;
        boolean zz2 = false;
        this.zy = zy;
        this.zx = zx;
        this.zw = DR(zx);
        if (this.zy >= n) {
            this.zz = zz;
        }
        else {
            if (!zz) {
                zz2 = (n != 0);
            }
            this.zz = zz2;
        }
    }
    
    private static int DR(final Collection collection) {
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
            if (this.zw != autocompleteFilter.zw || this.zz != autocompleteFilter.zz) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.zz, this.zw);
    }
    
    public String toString() {
        return u.hJ(this).hB("includeQueryPredictions", this.zz).hB("typeFilter", this.zw).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.Eh(this, parcel, n);
    }
}
