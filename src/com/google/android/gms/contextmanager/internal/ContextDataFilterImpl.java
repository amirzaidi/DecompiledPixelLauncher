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
    private final ArrayList IJ;
    private final QueryFilterParameters IK;
    private final int IL;
    private final ArrayList IM;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    public ContextDataFilterImpl(final int il, final ArrayList ij, final ArrayList im, final QueryFilterParameters ik) {
        this.IL = il;
        this.IJ = ij;
        this.IM = im;
        this.IK = ik;
    }
    
    public QueryFilterParameters Nj() {
        return this.IK;
    }
    
    public ArrayList Nk() {
        return this.IM;
    }
    
    int Nl() {
        return this.IL;
    }
    
    public ArrayList Nm() {
        return this.IJ;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof ContextDataFilterImpl) {
            final ContextDataFilterImpl contextDataFilterImpl = (ContextDataFilterImpl)o;
            if (!u.kv(this.IJ, contextDataFilterImpl.IJ) || !u.kv(this.IM, contextDataFilterImpl.IM)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.IJ, this.IM);
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("contexts=[");
        if (this.IJ != null && this.IJ.size() > 0) {
            final Iterator<ContextDataFilterImpl$Inclusion> iterator = (Iterator<ContextDataFilterImpl$Inclusion>)this.IJ.iterator();
            while (iterator.hasNext()) {
                sb.append(iterator.next().Of()).append(",");
            }
        }
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.NX(this, parcel, n);
    }
}
