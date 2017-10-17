// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import android.os.IBinder;

class f implements zze
{
    private IBinder CG;
    
    f(final IBinder cg) {
        this.CG = cg;
    }
    
    public IBinder asBinder() {
        return this.CG;
    }
    
    public void onLocationAvailability(final LocationAvailability locationAvailability) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.location.ILocationCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (locationAvailability == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                locationAvailability.writeToParcel(obtain, 0);
            }
            this.CG.transact(2, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void onLocationResult(final LocationResult locationResult) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.location.ILocationCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (locationResult == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                locationResult.writeToParcel(obtain, 0);
            }
            this.CG.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
