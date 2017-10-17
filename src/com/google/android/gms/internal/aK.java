// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.clearcut.LogEventParcelable;
import android.os.IBinder;

class ak implements zzqd
{
    private IBinder rX;
    
    ak(final IBinder rx) {
        this.rX = rx;
    }
    
    public IBinder asBinder() {
        return this.rX;
    }
    
    public void zza(final zzqc zzqc, final LogEventParcelable logEventParcelable) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (zzqc != null) {
                binder = zzqc.asBinder();
            }
            obtain.writeStrongBinder(binder);
            if (logEventParcelable == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                logEventParcelable.writeToParcel(obtain, 0);
            }
            this.rX.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
