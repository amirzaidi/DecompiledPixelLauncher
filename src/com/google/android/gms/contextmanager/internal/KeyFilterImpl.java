// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class KeyFilterImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final ArrayList Hc;
    private final int Hd;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    KeyFilterImpl(final int hd, final ArrayList hc) {
        this.Hd = hd;
        this.Hc = hc;
    }
    
    int Mc() {
        return this.Hd;
    }
    
    public ArrayList Md() {
        return this.Hc;
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof KeyFilterImpl && this.Md().equals(((KeyFilterImpl)o).Md()));
    }
    
    public int hashCode() {
        return u.hI(this.Hc);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.Nv(this, parcel, n);
    }
}
