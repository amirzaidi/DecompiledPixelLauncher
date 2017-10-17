// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class FenceUpdateRequestImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final ArrayList Ib;
    private final int Ic;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    public FenceUpdateRequestImpl() {
        this(new ArrayList());
    }
    
    FenceUpdateRequestImpl(final int ic, final ArrayList ib) {
        this.Ic = ic;
        this.Ib = ib;
    }
    
    public FenceUpdateRequestImpl(final ArrayList list) {
        this(1, list);
    }
    
    public ArrayList Oj() {
        return this.Ib;
    }
    
    int Ok() {
        return this.Ic;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.NQ(this, parcel, n);
    }
}
