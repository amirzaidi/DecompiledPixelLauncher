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
    private final int gy;
    private final int gz;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    ScreenStateImpl(final int gz, final int gy) {
        this.gz = gz;
        this.gy = gy;
    }
    
    public int fP() {
        return this.gy;
    }
    
    int fQ() {
        return this.gz;
    }
    
    public String toString() {
        if (this.gy == 1) {
            return "ScreenState: SCREEN_OFF";
        }
        if (this.gy != 2) {
            return "ScreenState: UNKNOWN";
        }
        return "ScreenState: SCREEN_ON";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.eU(this, parcel, n);
    }
}
