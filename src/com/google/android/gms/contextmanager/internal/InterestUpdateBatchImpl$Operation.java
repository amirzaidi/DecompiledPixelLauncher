// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import com.google.android.contextmanager.interest.InterestRecordStub;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class InterestUpdateBatchImpl$Operation extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final String HP;
    private final int HQ;
    private final InterestRecordStub HR;
    private final int HS;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    InterestUpdateBatchImpl$Operation(final int hq, final int hs, final InterestRecordStub hr, final String hp) {
        this.HQ = hq;
        this.HS = hs;
        this.HR = hr;
        this.HP = hp;
    }
    
    int NA() {
        return this.HQ;
    }
    
    String NB() {
        return this.HP;
    }
    
    InterestRecordStub Ny() {
        return this.HR;
    }
    
    public int Nz() {
        return this.HS;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.MU(this, parcel, n);
    }
}
