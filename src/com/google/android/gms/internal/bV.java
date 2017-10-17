// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import android.os.IBinder;

class bv implements zzre
{
    private IBinder uE;
    
    bv(final IBinder ue) {
        this.uE = ue;
    }
    
    public IBinder asBinder() {
        return this.uE;
    }
    
    public void zzv(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.common.api.internal.IStatusCallback";
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
            this.uE.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
