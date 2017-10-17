// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class NlpTestingRequest extends AbstractSafeParcelable
{
    public static final m CREATOR;
    private final int Aq;
    private final long Ar;
    
    static {
        CREATOR = new m();
    }
    
    NlpTestingRequest(final int aq, final long ar) {
        this.Aq = aq;
        this.Ar = ar;
    }
    
    public long ES() {
        return this.Ar;
    }
    
    public int ET() {
        return this.Aq;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.FG(this, parcel, n);
    }
}
