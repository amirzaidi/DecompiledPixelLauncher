// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.IBinder;

class o implements zzg
{
    private IBinder Bh;
    
    o(final IBinder bh) {
        this.Bh = bh;
    }
    
    public IBinder asBinder() {
        return this.Bh;
    }
    
    public void zza(final FusedLocationProviderResult fusedLocationProviderResult) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IFusedLocationProviderCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (fusedLocationProviderResult == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                fusedLocationProviderResult.writeToParcel(obtain, 0);
            }
            this.Bh.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
