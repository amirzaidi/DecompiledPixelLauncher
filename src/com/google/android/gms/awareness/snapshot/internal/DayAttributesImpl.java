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
    private final int fV;
    private final int[] fW;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    DayAttributesImpl(final int fv, final int[] fw) {
        this.fV = fv;
        this.fW = fw;
    }
    
    int eA() {
        return this.fV;
    }
    
    public int[] ez() {
        return this.fW;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Attributes=");
        if (this.fW != null) {
            sb.append("[");
            final int[] fw = this.fW;
            final int length = fw.length;
            int n = 1;
            for (int i = 0; i < length; ++i, n = 0) {
                final int n2 = fw[i];
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
        d.eL(this, parcel, n);
    }
}
