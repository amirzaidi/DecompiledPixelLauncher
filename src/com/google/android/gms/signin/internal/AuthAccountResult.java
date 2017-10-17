// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import android.content.Intent;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class AuthAccountResult extends AbstractSafeParcelable implements m
{
    public static final Parcelable$Creator CREATOR;
    private int LH;
    final int LI;
    private Intent LJ;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    public AuthAccountResult() {
        this(0, null);
    }
    
    AuthAccountResult(final int li, final int lh, final Intent lj) {
        this.LI = li;
        this.LH = lh;
        this.LJ = lj;
    }
    
    public AuthAccountResult(final int n, final Intent intent) {
        this(2, n, intent);
    }
    
    public Intent Rd() {
        return this.LJ;
    }
    
    public int Re() {
        return this.LH;
    }
    
    public Status gV() {
        if (this.LH != 0) {
            return Status.hk;
        }
        return Status.hn;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.Rj(this, parcel, n);
    }
}
