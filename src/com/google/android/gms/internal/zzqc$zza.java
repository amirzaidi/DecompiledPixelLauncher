// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzqc$zza extends Binder implements zzqc
{
    public zzqc$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
    }
    
    public static zzqc zzgn(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzqc) {
            return (zzqc)queryLocalInterface;
        }
        return new aj(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
                Status status;
                if (parcel.readInt() == 0) {
                    status = null;
                }
                else {
                    status = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzae(status);
                return b;
            }
        }
    }
}
