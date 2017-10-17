// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import java.util.Arrays;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class KeyFilterImpl$Inclusion extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final String[] IA;
    private final int Ix;
    private final String[] Iy;
    private final String[] Iz;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    KeyFilterImpl$Inclusion(final int ix, final String[] iy, final String[] iz, final String[] ia) {
        this.Ix = ix;
        this.Iy = iy;
        this.Iz = iz;
        this.IA = ia;
    }
    
    public String[] MF() {
        return this.Iz;
    }
    
    public String[] MG() {
        return this.IA;
    }
    
    public String[] MH() {
        return this.Iy;
    }
    
    int MI() {
        return this.Ix;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof KeyFilterImpl$Inclusion) {
            final KeyFilterImpl$Inclusion keyFilterImpl$Inclusion = (KeyFilterImpl$Inclusion)o;
            if (!Arrays.equals(this.MH(), keyFilterImpl$Inclusion.MH()) || !Arrays.equals(this.MF(), keyFilterImpl$Inclusion.MF()) || !Arrays.equals(this.MG(), keyFilterImpl$Inclusion.MG())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return Arrays.hashCode(this.Iy) + Arrays.hashCode(this.Iz) + Arrays.hashCode(this.IA);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.Nb(this, parcel, n);
    }
}
