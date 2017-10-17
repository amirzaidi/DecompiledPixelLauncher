// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import java.util.Iterator;
import com.google.android.gms.common.internal.u;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ContextDataFilterImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final ArrayList He;
    private final QueryFilterParameters Hf;
    private final int Hg;
    private final ArrayList Hh;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    public ContextDataFilterImpl(final int hg, final ArrayList he, final ArrayList hh, final QueryFilterParameters hf) {
        this.Hg = hg;
        this.He = he;
        this.Hh = hh;
        this.Hf = hf;
    }
    
    public QueryFilterParameters Mq() {
        return this.Hf;
    }
    
    public ArrayList Mr() {
        return this.Hh;
    }
    
    int Ms() {
        return this.Hg;
    }
    
    public ArrayList Mt() {
        return this.He;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof ContextDataFilterImpl) {
            final ContextDataFilterImpl contextDataFilterImpl = (ContextDataFilterImpl)o;
            if (!u.hH(this.He, contextDataFilterImpl.He) || !u.hH(this.Hh, contextDataFilterImpl.Hh)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.hI(this.He, this.Hh);
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("contexts=[");
        if (this.He != null && this.He.size() > 0) {
            final Iterator<ContextDataFilterImpl$Inclusion> iterator = (Iterator<ContextDataFilterImpl$Inclusion>)this.He.iterator();
            while (iterator.hasNext()) {
                sb.append(iterator.next().Nm()).append(",");
            }
        }
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.Ne(this, parcel, n);
    }
}
