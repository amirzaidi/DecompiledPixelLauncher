// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class CameraPosition extends AbstractSafeParcelable
{
    public static final p CREATOR;
    public final float Fe;
    private final int Ff;
    public final LatLng Fg;
    public final float Fh;
    public final float Fi;
    
    static {
        CREATOR = new p();
    }
    
    CameraPosition(final int ff, final LatLng fg, final float fh, final float n, float n2) {
        final int n3 = 1;
        final float n4 = 360.0f;
        l.ho(fg, "null camera target");
        boolean b;
        if (0.0f <= n && n <= 90.0f) {
            b = (n3 != 0);
        }
        else {
            b = false;
        }
        final Object[] array = new Object[n3];
        array[0] = n;
        l.hu(b, "Tilt needs to be between 0 and 90 inclusive: %s", array);
        this.Ff = ff;
        this.Fg = fg;
        this.Fh = fh;
        this.Fe = n + 0.0f;
        if (n2 <= 0.0) {
            n2 = n2 % n4 + n4;
        }
        this.Fi = n2 % n4;
    }
    
    int Ke() {
        return this.Ff;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof CameraPosition) {
            final CameraPosition cameraPosition = (CameraPosition)o;
            if (this.Fg.equals(cameraPosition.Fg) || Float.floatToIntBits(this.Fh) != Float.floatToIntBits(cameraPosition.Fh) || Float.floatToIntBits(this.Fe) != Float.floatToIntBits(cameraPosition.Fe) || Float.floatToIntBits(this.Fi) != Float.floatToIntBits(cameraPosition.Fi)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Fg, this.Fh, this.Fe, this.Fi);
    }
    
    public String toString() {
        return u.hJ(this).hB("target", this.Fg).hB("zoom", this.Fh).hB("tilt", this.Fe).hB("bearing", this.Fi).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        p.JW(this, parcel, n);
    }
}
