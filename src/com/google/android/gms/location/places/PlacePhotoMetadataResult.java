// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.api.Status;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlacePhotoMetadataResult extends AbstractSafeParcelable implements b
{
    public static final Parcelable$Creator CREATOR;
    private final Status zT;
    final int zU;
    final DataHolder zV;
    private final e zW;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    PlacePhotoMetadataResult(final int zu, final Status zt, final DataHolder zv) {
        this.zU = zu;
        this.zT = zt;
        this.zV = zv;
        if (zv != null) {
            this.zW = new e(this.zV);
        }
        else {
            this.zW = null;
        }
    }
    
    public Status dr() {
        return this.zT;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.EJ(this, parcel, n);
    }
}
