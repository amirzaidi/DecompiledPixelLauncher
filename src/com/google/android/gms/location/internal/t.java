// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.location.LocationSettingsResult;
import android.os.IBinder;

class t implements zzj
{
    private IBinder CO;
    
    t(final IBinder co) {
        this.CO = co;
    }
    
    public IBinder asBinder() {
        return this.CO;
    }
    
    public void zza(final LocationSettingsResult locationSettingsResult) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.ISettingsCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (locationSettingsResult == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                locationSettingsResult.writeToParcel(obtain, 0);
            }
            this.CO.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
