// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.clearcut.LogEventParcelable;
import android.os.IBinder;

class ap implements zzqd
{
    private IBinder rR;
    
    ap(final IBinder rr) {
        this.rR = rr;
    }
    
    public IBinder asBinder() {
        return this.rR;
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
            this.rR.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
