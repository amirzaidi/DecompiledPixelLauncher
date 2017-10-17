// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class HeadphoneStateImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int fX;
    private final int fY;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    HeadphoneStateImpl(final int fy, final int fx) {
        this.fY = fy;
        this.fX = fx;
    }
    
    int eW() {
        return this.fY;
    }
    
    public int getState() {
        return this.fX;
    }
    
    public String toString() {
        switch (this.fX) {
            default: {
                return new StringBuilder(35).append("unknown headphone state=").append(this.fX).toString();
            }
            case 1: {
                return "HEADPHONE_PLUGGED";
            }
            case 2: {
                return "HEADPHONE_UNPLUGGED";
            }
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.eZ(this, parcel, n);
    }
}
