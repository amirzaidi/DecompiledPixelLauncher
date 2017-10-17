// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import android.os.Parcel;
import java.util.List;
import com.google.android.gms.common.api.Status;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AliasedPlacesResult extends AbstractSafeParcelable implements b
{
    public static final Parcelable$Creator CREATOR;
    private final Status xH;
    final int xI;
    private final List xJ;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    AliasedPlacesResult(final int xi, final Status xh, final List xj) {
        this.xI = xi;
        this.xH = xh;
        this.xJ = xj;
    }
    
    public List CG() {
        return this.xJ;
    }
    
    public Status dr() {
        return this.xH;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.CM(this, parcel, n);
    }
}
