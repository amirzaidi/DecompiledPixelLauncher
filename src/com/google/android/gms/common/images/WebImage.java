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
    private final Uri mp;
    private final int mq;
    private final int mr;
    private final int ms;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    WebImage(final int mr, final Uri mp, final int ms, final int mq) {
        this.mr = mr;
        this.mp = mp;
        this.ms = ms;
        this.mq = mq;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o != null && o instanceof WebImage) {
            final WebImage webImage = (WebImage)o;
            if (u.kv(this.mp, webImage.mp) || this.ms != webImage.ms || this.mq != webImage.mq) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int getHeight() {
        return this.mq;
    }
    
    public int getWidth() {
        return this.ms;
    }
    
    public int hashCode() {
        return u.kw(this.mp, this.ms, this.mq);
    }
    
    public Uri ps() {
        return this.mp;
    }
    
    int pt() {
        return this.mr;
    }
    
    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", this.ms, this.mq, this.mp.toString());
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.pm(this, parcel, n);
    }
}
