// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import android.location.Location;
import android.os.IBinder;

class r implements zzf
{
    private IBinder Dp;
    
    r(final IBinder dp) {
        this.Dp = dp;
    }
    
    public IBinder asBinder() {
        return this.Dp;
    }
    
    public void onLocationChanged(final Location location) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.location.ILocationListener";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (location == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                location.writeToParcel(obtain, 0);
            }
            this.Dp.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
