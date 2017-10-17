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
    private final int[] Jb;
    private final int Jc;
    private final ArrayList Jd;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    TimeFilterImpl(final int jc, final ArrayList jd, final int[] jb) {
        this.Jc = jc;
        this.Jd = jd;
        this.Jb = jb;
    }
    
    public ArrayList NG() {
        return this.Jd;
    }
    
    public int[] NH() {
        return this.Jb;
    }
    
    int NI() {
        return this.Jc;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof TimeFilterImpl) {
            final TimeFilterImpl timeFilterImpl = (TimeFilterImpl)o;
            if (!u.kv(this.Jd, timeFilterImpl.Jd) || !u.kv(this.Jb, timeFilterImpl.Jb)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.Jd, this.Jb);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.NA(this, parcel, n);
    }
}
