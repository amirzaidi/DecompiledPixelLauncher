// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.IBinder;
import android.app.PendingIntent;
import com.google.android.gms.awareness.fence.a;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class UpdateFenceOperation extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final long JI;
    private final long JJ;
    private final a JK;
    private final String JL;
    private final ContextFenceRegistrationStub JM;
    private final PendingIntent JN;
    private final int JO;
    private zzm JP;
    private final int JQ;
    
    static {
        CREATOR = (Parcelable$Creator)new com.google.android.gms.contextmanager.fence.internal.a();
    }
    
    UpdateFenceOperation(final int jo, final int jq, final ContextFenceRegistrationStub jm, final IBinder binder, final PendingIntent jn, final String jl, final long ji, final long jj) {
        this.JO = jo;
        this.JQ = jq;
        this.JM = jm;
        zzm zzhn;
        if (binder != null) {
            zzhn = zzm$zza.zzhn(binder);
        }
        else {
            zzhn = null;
        }
        this.JP = zzhn;
        this.JK = null;
        this.JN = jn;
        this.JL = jl;
        this.JI = ji;
        this.JJ = jj;
    }
    
    public long Pe() {
        return this.JJ;
    }
    
    IBinder Pf() {
        if (this.JP != null) {
            return this.JP.asBinder();
        }
        return null;
    }
    
    public long Pg() {
        return this.JI;
    }
    
    public int Ph() {
        return this.JQ;
    }
    
    public ContextFenceRegistrationStub Pi() {
        return this.JM;
    }
    
    int Pj() {
        return this.JO;
    }
    
    public String Pk() {
        return this.JL;
    }
    
    public PendingIntent getPendingIntent() {
        return this.JN;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        com.google.android.gms.contextmanager.fence.internal.a.Ox(this, parcel, n);
    }
}
