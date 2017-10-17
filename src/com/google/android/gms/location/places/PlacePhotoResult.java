// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.graphics.Bitmap;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.api.Status;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlacePhotoResult extends AbstractSafeParcelable implements m
{
    public static final Parcelable$Creator CREATOR;
    private final Status Bv;
    final BitmapTeleporter Bw;
    final int Bx;
    private final Bitmap mBitmap;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    PlacePhotoResult(final int bx, final Status bv, final BitmapTeleporter bw) {
        this.Bx = bx;
        this.Bv = bv;
        this.Bw = bw;
        if (this.Bw == null) {
            this.mBitmap = null;
        }
        else {
            this.mBitmap = bw.get();
        }
    }
    
    public Status gV() {
        return this.Bv;
    }
    
    public String toString() {
        return u.kx(this).kp("status", this.Bv).kp("bitmap", this.mBitmap).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.Fl(this, parcel, n);
    }
}
