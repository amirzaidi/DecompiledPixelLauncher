// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.app.PendingIntent;
import android.os.IBinder;

class j implements zzh
{
    private IBinder AN;
    
    j(final IBinder an) {
        this.AN = an;
    }
    
    public IBinder asBinder() {
        return this.AN;
    }
    
    public void zza(final int n, final PendingIntent pendingIntent) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGeofencerCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            if (pendingIntent == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                pendingIntent.writeToParcel(obtain, 0);
            }
            this.AN.transact(3, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void zza(final int n, final String[] array) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGeofencerCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            obtain.writeStringArray(array);
            this.AN.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void zzb(final int n, final String[] array) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGeofencerCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            obtain.writeStringArray(array);
            this.AN.transact(2, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
