// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LatLngBounds extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final q CREATOR;
    public final LatLng DA;
    public final LatLng DB;
    private final int Dz;
    
    static {
        CREATOR = new q();
    }
    
    LatLngBounds(final int dz, final LatLng da, final LatLng db) {
        final int n = 1;
        l.ho(da, "null southwest");
        l.ho(db, "null northeast");
        boolean b;
        if (db.EU >= da.EU) {
            b = (n != 0);
        }
        else {
            b = false;
        }
        final Object[] array = { da.EU, null };
        array[n] = db.EU;
        l.hu(b, "southern latitude exceeds northern latitude (%s > %s)", array);
        this.Dz = dz;
        this.DA = da;
        this.DB = db;
    }
    
    int Iu() {
        return this.Dz;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof LatLngBounds) {
            final LatLngBounds latLngBounds = (LatLngBounds)o;
            if (!this.DA.equals(latLngBounds.DA) || !this.DB.equals(latLngBounds.DB)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.DA, this.DB);
    }
    
    public String toString() {
        return u.hJ(this).hB("southwest", this.DA).hB("northeast", this.DB).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.Kc(this, parcel, n);
    }
}
