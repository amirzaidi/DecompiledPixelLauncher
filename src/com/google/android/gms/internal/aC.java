// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import android.os.IBinder;

class ac implements zzqc
{
    private IBinder rQ;
    
    ac(final IBinder rq) {
        this.rQ = rq;
    }
    
    public IBinder asBinder() {
        return this.rQ;
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
            this.rQ.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
