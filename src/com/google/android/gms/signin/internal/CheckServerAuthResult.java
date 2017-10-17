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
    final int JP;
    final boolean JQ;
    final List JR;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    CheckServerAuthResult(final int jp, final boolean jq, final List jr) {
        this.JP = jp;
        this.JQ = jq;
        this.JR = jr;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.Qc(this, parcel, n);
    }
}
