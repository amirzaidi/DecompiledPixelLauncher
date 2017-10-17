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
    private final int gl;
    private final ArrayList gm;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    PlacesData(final int gl, final ArrayList gm) {
        this.gl = gl;
        this.gm = gm;
    }
    
    int fA() {
        return this.gl;
    }
    
    ArrayList fz() {
        return this.gm;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.fD(this, parcel, n);
    }
}
