// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import java.util.List;
import com.google.android.gms.common.api.Status;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AliasedPlacesResult extends AbstractSafeParcelable implements m
{
    public static final Parcelable$Creator CREATOR;
    private final Status zm;
    final int zn;
    private final List zo;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    AliasedPlacesResult(final int zn, final Status zm, final List zo) {
        this.zn = zn;
        this.zm = zm;
        this.zo = zo;
    }
    
    public List Dz() {
        return this.zo;
    }
    
    public Status gV() {
        return this.zm;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.DF(this, parcel, n);
    }
}
