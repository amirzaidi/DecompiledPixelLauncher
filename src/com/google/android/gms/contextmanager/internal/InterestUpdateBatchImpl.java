// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class InterestUpdateBatchImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final ArrayList IF;
    private final int IG;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    public InterestUpdateBatchImpl() {
        this.IG = 1;
        this.IF = new ArrayList();
    }
    
    InterestUpdateBatchImpl(final int ig, final ArrayList if1) {
        this.IG = ig;
        this.IF = if1;
    }
    
    public ArrayList MN() {
        return this.IF;
    }
    
    int MO() {
        return this.IG;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.Nf(this, parcel, n);
    }
}
