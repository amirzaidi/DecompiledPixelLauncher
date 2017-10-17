// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import android.os.Parcel;
import java.util.Locale;
import com.google.android.gms.common.internal.u;
import android.net.Uri;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class WebImage extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int jA;
    private final Uri jx;
    private final int jy;
    private final int jz;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    WebImage(final int jz, final Uri jx, final int ja, final int jy) {
        this.jz = jz;
        this.jx = jx;
        this.jA = ja;
        this.jy = jy;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && o instanceof WebImage) {
            final WebImage webImage = (WebImage)o;
            if (u.hH(this.jx, webImage.jx) || this.jA != webImage.jA || this.jy != webImage.jy) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int getHeight() {
        return this.jy;
    }
    
    public int getWidth() {
        return this.jA;
    }
    
    public int hashCode() {
        return u.hI(this.jx, this.jA, this.jy);
    }
    
    public Uri mE() {
        return this.jx;
    }
    
    int mF() {
        return this.jz;
    }
    
    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", this.jA, this.jy, this.jx.toString());
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.my(this, parcel, n);
    }
}
