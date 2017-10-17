// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import com.google.android.gms.location.LocationSettingsResult;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzj$zza extends Binder implements zzj
{
    public zzj$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.location.internal.ISettingsCallbacks");
    }
    
    public static zzj zzlf(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.location.internal.ISettingsCallbacks");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzj) {
            return (zzj)queryLocalInterface;
        }
        return new t(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.location.internal.ISettingsCallbacks");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.location.internal.ISettingsCallbacks");
                LocationSettingsResult locationSettingsResult;
                if (parcel.readInt() == 0) {
                    locationSettingsResult = null;
                }
                else {
                    locationSettingsResult = (LocationSettingsResult)LocationSettingsResult.CREATOR.createFromParcel(parcel);
                }
                this.zza(locationSettingsResult);
                return b;
            }
        }
    }
}
