// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import android.os.Parcel;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class CheckServerAuthResult extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    final int Lu;
    final boolean Lv;
    final List Lw;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    CheckServerAuthResult(final int lu, final boolean lv, final List lw) {
        this.Lu = lu;
        this.Lv = lv;
        this.Lw = lw;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.QV(this, parcel, n);
    }
}
