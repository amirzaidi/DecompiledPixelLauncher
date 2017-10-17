// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class DogfoodsToken extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    final int lg;
    public final byte[] lh;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    DogfoodsToken(final int lg, final byte[] lh) {
        this.lg = lg;
        this.lh = lh;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.pl(this, parcel, n);
    }
}
