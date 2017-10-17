// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class ScreenStateImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int nf;
    private final int ng;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    ScreenStateImpl(final int ng, final int nf) {
        this.ng = ng;
        this.nf = nf;
    }
    
    public int qZ() {
        return this.nf;
    }
    
    int ra() {
        return this.ng;
    }
    
    public String toString() {
        if (this.nf == 1) {
            return "ScreenState: SCREEN_OFF";
        }
        if (this.nf != 2) {
            return "ScreenState: UNKNOWN";
        }
        return "ScreenState: SCREEN_ON";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.qb(this, parcel, n);
    }
}
