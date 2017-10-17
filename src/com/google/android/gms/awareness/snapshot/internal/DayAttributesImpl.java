// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class DayAttributesImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int my;
    private final int[] mz;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    DayAttributesImpl(final int my, final int[] mz) {
        this.my = my;
        this.mz = mz;
    }
    
    public int[] pF() {
        return this.mz;
    }
    
    int pG() {
        return this.my;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Attributes=");
        if (this.mz != null) {
            sb.append("[");
            final int[] mz = this.mz;
            final int length = mz.length;
            int n = 1;
            for (int i = 0; i < length; ++i, n = 0) {
                final int n2 = mz[i];
                if (n == 0) {
                    sb.append(", ");
                }
                sb.append(n2);
            }
            sb.append("]");
        }
        else {
            sb.append("unknown");
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.pR(this, parcel, n);
    }
}
