// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.l;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class SleepSegmentEvent extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final long CK;
    private final int CL;
    private final long CM;
    private final int CN;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    public SleepSegmentEvent(final int cl, final long cm, final long ck, final int cn) {
        final long n = 0L;
        boolean b = true;
        l.hq((n < cm || !b) && b, "startTimeMillis must be greater than 0.");
        l.hq((n < ck || !b) && b, "endTimeMillis must be greater than 0.");
        if (cm > ck && b) {
            b = false;
        }
        l.hq(b, "endTimeMillis must be greater than or equal to startTimeMillis");
        this.CL = cl;
        this.CM = cm;
        this.CK = ck;
        this.CN = cn;
    }
    
    public int Hg() {
        return this.CN;
    }
    
    public long Hh() {
        return this.CK;
    }
    
    public int Hi() {
        return this.CL;
    }
    
    public long Hj() {
        return this.CM;
    }
    
    public String toString() {
        return String.format("startTimeMillis=%d, endTimeMillis=%d, mStatus=%d]", this.CM, this.CK, this.CN);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        k.Hp(this, parcel, n);
    }
}
