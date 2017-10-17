// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.api.Status;
import android.graphics.Bitmap;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlacePhotoResult extends AbstractSafeParcelable implements b
{
    public static final Parcelable$Creator CREATOR;
    private final Bitmap mBitmap;
    private final Status zQ;
    final BitmapTeleporter zR;
    final int zS;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    PlacePhotoResult(final int zs, final Status zq, final BitmapTeleporter zr) {
        this.zS = zs;
        this.zQ = zq;
        this.zR = zr;
        if (this.zR == null) {
            this.mBitmap = null;
        }
        else {
            this.mBitmap = zr.get();
        }
    }
    
    public Status dr() {
        return this.zQ;
    }
    
    public String toString() {
        return u.hJ(this).hB("status", this.zQ).hB("bitmap", this.mBitmap).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.Es(this, parcel, n);
    }
}
