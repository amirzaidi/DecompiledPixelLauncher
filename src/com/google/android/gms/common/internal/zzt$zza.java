// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzt$zza extends Binder implements zzt
{
    public zzt$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.common.internal.IGmsCallbacks");
    }
    
    public static zzt zzgz(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzt) {
            return (zzt)queryLocalInterface;
        }
        return new g(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        Bundle bundle = null;
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.common.internal.IGmsCallbacks");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                final int int1 = parcel.readInt();
                final IBinder strongBinder = parcel.readStrongBinder();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zza(int1, strongBinder, bundle);
                parcel2.writeNoException();
                return b;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                final int int2 = parcel.readInt();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zza(int2, bundle);
                parcel2.writeNoException();
                return b;
            }
        }
    }
}
