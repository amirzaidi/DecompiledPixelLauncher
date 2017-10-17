// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import android.os.Parcel;
import java.util.ArrayList;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class WriteBatchImpl extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int HA;
    private final boolean HB;
    private ArrayList HC;
    private ArrayList HD;
    private ArrayList Hz;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    public WriteBatchImpl() {
        this(false);
    }
    
    WriteBatchImpl(final int ha, final boolean hb, final ArrayList hc, final ArrayList hd, final ArrayList hz) {
        this.HA = ha;
        this.HB = hb;
        this.HC = hc;
        this.HD = hd;
        this.Hz = hz;
    }
    
    public WriteBatchImpl(final boolean hb) {
        this.HA = 1;
        this.HB = hb;
    }
    
    public ArrayList MZ() {
        return this.Hz;
    }
    
    public boolean Na() {
        return this.HB;
    }
    
    int Nb() {
        return this.HA;
    }
    
    public ArrayList Nc() {
        return this.HD;
    }
    
    public ArrayList Nd() {
        return this.HC;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.Ma(this, parcel, n);
    }
}
