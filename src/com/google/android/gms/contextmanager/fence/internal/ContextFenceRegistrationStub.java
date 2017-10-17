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
    private final String Kc;
    private final int Kd;
    private ContextFenceStub Ke;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    ContextFenceRegistrationStub(final int kd, final String kc, final ContextFenceStub ke) {
        this.Kd = kd;
        this.Kc = kc;
        this.Ke = ke;
    }
    
    public String PA() {
        return this.Kc;
    }
    
    int PB() {
        return this.Kd;
    }
    
    public ContextFenceStub Pz() {
        return this.Ke;
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof ContextFenceRegistrationStub && TextUtils.equals((CharSequence)this.PA(), (CharSequence)((ContextFenceRegistrationStub)o).PA()));
    }
    
    public int hashCode() {
        return u.kw(this.Kc);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.OP(this, parcel, n);
    }
}
