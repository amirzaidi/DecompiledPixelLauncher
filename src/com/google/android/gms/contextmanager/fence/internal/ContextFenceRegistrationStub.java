// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import android.text.TextUtils;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ContextFenceRegistrationStub extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final String Ix;
    private final int Iy;
    private ContextFenceStub Iz;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    ContextFenceRegistrationStub(final int iy, final String ix, final ContextFenceStub iz) {
        this.Iy = iy;
        this.Ix = ix;
        this.Iz = iz;
    }
    
    public ContextFenceStub OG() {
        return this.Iz;
    }
    
    public String OH() {
        return this.Ix;
    }
    
    int OI() {
        return this.Iy;
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof ContextFenceRegistrationStub && TextUtils.equals((CharSequence)this.OH(), (CharSequence)((ContextFenceRegistrationStub)o).OH()));
    }
    
    public int hashCode() {
        return u.hI(this.Ix);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.NW(this, parcel, n);
    }
}
