// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlacePhotoMetadataResult extends AbstractSafeParcelable implements m
{
    public static final Parcelable$Creator CREATOR;
    final DataHolder BA;
    private final e BB;
    private final Status By;
    final int Bz;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    PlacePhotoMetadataResult(final int bz, final Status by, final DataHolder ba) {
        this.Bz = bz;
        this.By = by;
        this.BA = ba;
        if (ba != null) {
            this.BB = new e(this.BA);
        }
        else {
            this.BB = null;
        }
    }
    
    public Status gV() {
        return this.By;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.FC(this, parcel, n);
    }
}
