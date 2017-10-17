// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import com.google.android.gms.dynamic.zzd;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzs$zza extends Binder implements zzs
{
    public zzs$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.common.internal.ICertData");
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        IBinder binder = null;
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.common.internal.ICertData");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.common.internal.ICertData");
                final zzd zzarf = this.zzarf();
                parcel2.writeNoException();
                if (zzarf != null) {
                    binder = zzarf.asBinder();
                }
                parcel2.writeStrongBinder(binder);
                return b;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.common.internal.ICertData");
                final int zzarg = this.zzarg();
                parcel2.writeNoException();
                parcel2.writeInt(zzarg);
                return b;
            }
        }
    }
}
