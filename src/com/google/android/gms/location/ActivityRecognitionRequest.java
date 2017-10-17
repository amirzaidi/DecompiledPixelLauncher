// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import android.os.WorkSource;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class ActivityRecognitionRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private boolean DK;
    private long DL;
    private String DM;
    private WorkSource DN;
    private int[] DO;
    private String DP;
    private final int DQ;
    private boolean DR;
    
    static {
        CREATOR = (Parcelable$Creator)new q();
    }
    
    ActivityRecognitionRequest(final int dq, final long dl, final boolean dk, final WorkSource dn, final String dp, final int[] do1, final boolean dr, final String dm) {
        this.DQ = dq;
        this.DL = dl;
        this.DK = dk;
        this.DN = dn;
        this.DP = dp;
        this.DO = do1;
        this.DR = dr;
        this.DM = dm;
    }
    
    int HA() {
        return this.DQ;
    }
    
    public int[] HB() {
        return this.DO;
    }
    
    public boolean Hv() {
        return this.DR;
    }
    
    public String Hw() {
        return this.DM;
    }
    
    public WorkSource Hx() {
        return this.DN;
    }
    
    public long Hy() {
        return this.DL;
    }
    
    public boolean Hz() {
        return this.DK;
    }
    
    public String getTag() {
        return this.DP;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.IT(this, parcel, n);
    }
}
