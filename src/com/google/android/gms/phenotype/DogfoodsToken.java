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
    final int yO;
    public final byte[] yP;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    DogfoodsToken(final int yo, final byte[] yp) {
        this.yO = yo;
        this.yP = yp;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.Df(this, parcel, n);
    }
}
