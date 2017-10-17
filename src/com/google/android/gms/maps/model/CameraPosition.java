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
    public final float GJ;
    private final int GK;
    public final LatLng GL;
    public final float GM;
    public final float GN;
    
    static {
        CREATOR = new p();
    }
    
    CameraPosition(final int gk, final LatLng gl, final float gm, final float n, float n2) {
        final int n3 = 1;
        final float n4 = 360.0f;
        l.kc(gl, "null camera target");
        boolean b;
        if (0.0f <= n && n <= 90.0f) {
            b = (n3 != 0);
        }
        else {
            b = false;
        }
        final Object[] array = new Object[n3];
        array[0] = n;
        l.ki(b, "Tilt needs to be between 0 and 90 inclusive: %s", array);
        this.GK = gk;
        this.GL = gl;
        this.GM = gm;
        this.GJ = n + 0.0f;
        if (n2 <= 0.0) {
            n2 = n2 % n4 + n4;
        }
        this.GN = n2 % n4;
    }
    
    int KX() {
        return this.GK;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof CameraPosition) {
            final CameraPosition cameraPosition = (CameraPosition)o;
            if (this.GL.equals(cameraPosition.GL) || Float.floatToIntBits(this.GM) != Float.floatToIntBits(cameraPosition.GM) || Float.floatToIntBits(this.GJ) != Float.floatToIntBits(cameraPosition.GJ) || Float.floatToIntBits(this.GN) != Float.floatToIntBits(cameraPosition.GN)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.GL, this.GM, this.GJ, this.GN);
    }
    
    public String toString() {
        return u.kx(this).kp("target", this.GL).kp("zoom", this.GM).kp("tilt", this.GJ).kp("bearing", this.GN).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        p.KP(this, parcel, n);
    }
}
