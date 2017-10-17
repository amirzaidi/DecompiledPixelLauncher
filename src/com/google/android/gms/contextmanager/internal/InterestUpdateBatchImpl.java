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
    private final ArrayList Ha;
    private final int Hb;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    public InterestUpdateBatchImpl() {
        this.Hb = 1;
        this.Ha = new ArrayList();
    }
    
    InterestUpdateBatchImpl(final int hb, final ArrayList ha) {
        this.Hb = hb;
        this.Ha = ha;
    }
    
    public ArrayList LU() {
        return this.Ha;
    }
    
    int LV() {
        return this.Hb;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.Mm(this, parcel, n);
    }
}
