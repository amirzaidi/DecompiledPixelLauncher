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
    private final int Fe;
    public final LatLng Ff;
    public final LatLng Fg;
    
    static {
        CREATOR = new q();
    }
    
    LatLngBounds(final int fe, final LatLng ff, final LatLng fg) {
        final int n = 1;
        l.kc(ff, "null southwest");
        l.kc(fg, "null northeast");
        boolean b;
        if (fg.Gz >= ff.Gz) {
            b = (n != 0);
        }
        else {
            b = false;
        }
        final Object[] array = { ff.Gz, null };
        array[n] = fg.Gz;
        l.ki(b, "southern latitude exceeds northern latitude (%s > %s)", array);
        this.Fe = fe;
        this.Ff = ff;
        this.Fg = fg;
    }
    
    int Jn() {
        return this.Fe;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof LatLngBounds) {
            final LatLngBounds latLngBounds = (LatLngBounds)o;
            if (!this.Ff.equals(latLngBounds.Ff) || !this.Fg.equals(latLngBounds.Fg)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.Ff, this.Fg);
    }
    
    public String toString() {
        return u.kx(this).kp("southwest", this.Ff).kp("northeast", this.Fg).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.KV(this, parcel, n);
    }
}
