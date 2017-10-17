// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class RelationFilterImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final ArrayList HM;
    private final QueryFilterParameters HN;
    private final int HO;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    RelationFilterImpl(final int ho, final ArrayList hm, final QueryFilterParameters hn) {
        this.HO = ho;
        this.HM = hm;
        this.HN = hn;
    }
    
    public QueryFilterParameters Np() {
        return this.HN;
    }
    
    public int Nq() {
        return this.HO;
    }
    
    public ArrayList Nr() {
        return this.HM;
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof RelationFilterImpl && u.hH(this.HM, ((RelationFilterImpl)o).HM));
    }
    
    public int hashCode() {
        return u.hI(this.HM);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.Nu(this, parcel, n);
    }
}
