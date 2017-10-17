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
    private final int GS;
    private final String[] GT;
    private final String[] GU;
    private final String[] GV;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    KeyFilterImpl$Inclusion(final int gs, final String[] gt, final String[] gu, final String[] gv) {
        this.GS = gs;
        this.GT = gt;
        this.GU = gu;
        this.GV = gv;
    }
    
    public String[] LM() {
        return this.GU;
    }
    
    public String[] LN() {
        return this.GV;
    }
    
    public String[] LO() {
        return this.GT;
    }
    
    int LP() {
        return this.GS;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof KeyFilterImpl$Inclusion) {
            final KeyFilterImpl$Inclusion keyFilterImpl$Inclusion = (KeyFilterImpl$Inclusion)o;
            if (!Arrays.equals(this.LO(), keyFilterImpl$Inclusion.LO()) || !Arrays.equals(this.LM(), keyFilterImpl$Inclusion.LM()) || !Arrays.equals(this.LN(), keyFilterImpl$Inclusion.LN())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return Arrays.hashCode(this.GT) + Arrays.hashCode(this.GU) + Arrays.hashCode(this.GV);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.Mi(this, parcel, n);
    }
}
