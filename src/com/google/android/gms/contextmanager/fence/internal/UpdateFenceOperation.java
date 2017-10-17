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
    private final long Id;
    private final long Ie;
    private final a If;
    private final String Ig;
    private final ContextFenceRegistrationStub Ih;
    private final PendingIntent Ii;
    private final int Ij;
    private zzm Ik;
    private final int Il;
    
    static {
        CREATOR = (Parcelable$Creator)new com.google.android.gms.contextmanager.fence.internal.a();
    }
    
    UpdateFenceOperation(final int ij, final int il, final ContextFenceRegistrationStub ih, final IBinder binder, final PendingIntent ii, final String ig, final long id, final long ie) {
        this.Ij = ij;
        this.Il = il;
        this.Ih = ih;
        zzm zzhn;
        if (binder != null) {
            zzhn = zzm$zza.zzhn(binder);
        }
        else {
            zzhn = null;
        }
        this.Ik = zzhn;
        this.If = null;
        this.Ii = ii;
        this.Ig = ig;
        this.Id = id;
        this.Ie = ie;
    }
    
    public long Ol() {
        return this.Ie;
    }
    
    IBinder Om() {
        if (this.Ik != null) {
            return this.Ik.asBinder();
        }
        return null;
    }
    
    public long On() {
        return this.Id;
    }
    
    public int Oo() {
        return this.Il;
    }
    
    public ContextFenceRegistrationStub Op() {
        return this.Ih;
    }
    
    int Oq() {
        return this.Ij;
    }
    
    public String Or() {
        return this.Ig;
    }
    
    public PendingIntent getPendingIntent() {
        return this.Ii;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        com.google.android.gms.contextmanager.fence.internal.a.NE(this, parcel, n);
    }
}
