// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzre$zza extends Binder implements zzre
{
    public zzre$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.common.api.internal.IStatusCallback");
    }
    
    public static zzre zzgp(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.common.api.internal.IStatusCallback");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzre) {
            return (zzre)queryLocalInterface;
        }
        return new bv(binder);
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
                parcel2.writeString("com.google.android.gms.common.api.internal.IStatusCallback");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.common.api.internal.IStatusCallback");
                Status status;
                if (parcel.readInt() == 0) {
                    status = null;
                }
                else {
                    status = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzv(status);
                return b;
            }
        }
    }
}
