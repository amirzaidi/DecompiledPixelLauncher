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
    private boolean Cf;
    private long Cg;
    private String Ch;
    private WorkSource Ci;
    private int[] Cj;
    private String Ck;
    private final int Cl;
    private boolean Cm;
    
    static {
        CREATOR = (Parcelable$Creator)new q();
    }
    
    ActivityRecognitionRequest(final int cl, final long cg, final boolean cf, final WorkSource ci, final String ck, final int[] cj, final boolean cm, final String ch) {
        this.Cl = cl;
        this.Cg = cg;
        this.Cf = cf;
        this.Ci = ci;
        this.Ck = ck;
        this.Cj = cj;
        this.Cm = cm;
        this.Ch = ch;
    }
    
    public boolean GC() {
        return this.Cm;
    }
    
    public String GD() {
        return this.Ch;
    }
    
    public WorkSource GE() {
        return this.Ci;
    }
    
    public long GF() {
        return this.Cg;
    }
    
    public boolean GG() {
        return this.Cf;
    }
    
    int GH() {
        return this.Cl;
    }
    
    public int[] GI() {
        return this.Cj;
    }
    
    public String getTag() {
        return this.Ck;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.Ia(this, parcel, n);
    }
}
