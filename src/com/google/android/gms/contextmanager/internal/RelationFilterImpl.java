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
    private final ArrayList Jr;
    private final QueryFilterParameters Js;
    private final int Jt;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    RelationFilterImpl(final int jt, final ArrayList jr, final QueryFilterParameters js) {
        this.Jt = jt;
        this.Jr = jr;
        this.Js = js;
    }
    
    public QueryFilterParameters Oi() {
        return this.Js;
    }
    
    public int Oj() {
        return this.Jt;
    }
    
    public ArrayList Ok() {
        return this.Jr;
    }
    
    public boolean equals(final Object o) {
        return this == o || (o instanceof RelationFilterImpl && u.kv(this.Jr, ((RelationFilterImpl)o).Jr));
    }
    
    public int hashCode() {
        return u.kw(this.Jr);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.On(this, parcel, n);
    }
}
