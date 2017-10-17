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
    private final ArrayList JG;
    private final int JH;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    public FenceUpdateRequestImpl() {
        this(new ArrayList());
    }
    
    FenceUpdateRequestImpl(final int jh, final ArrayList jg) {
        this.JH = jh;
        this.JG = jg;
    }
    
    public FenceUpdateRequestImpl(final ArrayList list) {
        this(1, list);
    }
    
    public ArrayList Pc() {
        return this.JG;
    }
    
    int Pd() {
        return this.JH;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.OJ(this, parcel, n);
    }
}
