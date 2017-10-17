// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzh$zza extends Binder implements zzh
{
    public zzh$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.location.internal.IGeofencerCallbacks");
    }
    
    public static zzh zzld(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzh) {
            return (zzh)queryLocalInterface;
        }
        return new j(binder);
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
                parcel2.writeString("com.google.android.gms.location.internal.IGeofencerCallbacks");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
                this.zza(parcel.readInt(), parcel.createStringArray());
                return b;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
                this.zzb(parcel.readInt(), parcel.createStringArray());
                return b;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
                final int int1 = parcel.readInt();
                PendingIntent pendingIntent;
                if (parcel.readInt() == 0) {
                    pendingIntent = null;
                }
                else {
                    pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza(int1, pendingIntent);
                return b;
            }
        }
    }
}
