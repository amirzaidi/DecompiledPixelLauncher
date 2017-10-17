// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class TimeFilterImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int[] Hs;
    private final int Ht;
    private final ArrayList Hu;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    TimeFilterImpl(final int ht, final ArrayList hu, final int[] hs) {
        this.Ht = ht;
        this.Hu = hu;
        this.Hs = hs;
    }
    
    public ArrayList MI() {
        return this.Hu;
    }
    
    public int[] MJ() {
        return this.Hs;
    }
    
    int MK() {
        return this.Ht;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof TimeFilterImpl) {
            final TimeFilterImpl timeFilterImpl = (TimeFilterImpl)o;
            if (!u.hH(this.Hu, timeFilterImpl.Hu) || !u.hH(this.Hs, timeFilterImpl.Hs)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.Hu, this.Hs);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.MH(this, parcel, n);
    }
}
