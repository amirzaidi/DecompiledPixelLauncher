// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class PlacesData extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int mO;
    private final ArrayList mP;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    PlacesData(final int mo, final ArrayList mp) {
        this.mO = mo;
        this.mP = mp;
    }
    
    ArrayList qC() {
        return this.mP;
    }
    
    int qD() {
        return this.mO;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.qJ(this, parcel, n);
    }
}
