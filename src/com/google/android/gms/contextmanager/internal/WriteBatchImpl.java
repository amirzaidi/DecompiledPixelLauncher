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
    private ArrayList Je;
    private final int Jf;
    private final boolean Jg;
    private ArrayList Jh;
    private ArrayList Ji;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    public WriteBatchImpl() {
        this(false);
    }
    
    WriteBatchImpl(final int jf, final boolean jg, final ArrayList jh, final ArrayList ji, final ArrayList je) {
        this.Jf = jf;
        this.Jg = jg;
        this.Jh = jh;
        this.Ji = ji;
        this.Je = je;
    }
    
    public WriteBatchImpl(final boolean jg) {
        this.Jf = 1;
        this.Jg = jg;
    }
    
    public ArrayList NS() {
        return this.Je;
    }
    
    public boolean NT() {
        return this.Jg;
    }
    
    int NU() {
        return this.Jf;
    }
    
    public ArrayList NV() {
        return this.Ji;
    }
    
    public ArrayList NW() {
        return this.Jh;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.MT(this, parcel, n);
    }
}
