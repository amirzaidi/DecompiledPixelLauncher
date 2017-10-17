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
    private final ArrayList IH;
    private final int II;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    KeyFilterImpl(final int ii, final ArrayList ih) {
        this.II = ii;
        this.IH = ih;
    }
    
    int MV() {
        return this.II;
    }
    
    public ArrayList MW() {
        return this.IH;
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof KeyFilterImpl && this.MW().equals(((KeyFilterImpl)o).MW()));
    }
    
    public int hashCode() {
        return u.kw(this.IH);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.Oo(this, parcel, n);
    }
}
