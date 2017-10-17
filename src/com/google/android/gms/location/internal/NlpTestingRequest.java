// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class NlpTestingRequest extends AbstractSafeParcelable
{
    public static final m CREATOR;
    private final int BV;
    private final long BW;
    
    static {
        CREATOR = new m();
    }
    
    NlpTestingRequest(final int bv, final long bw) {
        this.BV = bv;
        this.BW = bw;
    }
    
    public long FL() {
        return this.BW;
    }
    
    public int FM() {
        return this.BV;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.Gz(this, parcel, n);
    }
}
