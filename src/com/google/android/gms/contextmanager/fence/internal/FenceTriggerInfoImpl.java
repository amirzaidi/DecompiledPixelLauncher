// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FenceTriggerInfoImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final String JA;
    private final boolean JB;
    private final int JC;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    FenceTriggerInfoImpl(final int jc, final boolean jb, final String ja) {
        this.JC = jc;
        this.JB = jb;
        this.JA = ja;
    }
    
    public boolean OG() {
        return this.JB;
    }
    
    int OH() {
        return this.JC;
    }
    
    public String getKey() {
        return this.JA;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.OV(this, parcel, n);
    }
}
