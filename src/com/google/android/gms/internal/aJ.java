// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import android.os.IBinder;

class aj implements zzqc
{
    private IBinder rN;
    
    aj(final IBinder rn) {
        this.rN = rn;
    }
    
    public IBinder asBinder() {
        return this.rN;
    }
    
    public void zzae(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (status == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            this.rN.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
