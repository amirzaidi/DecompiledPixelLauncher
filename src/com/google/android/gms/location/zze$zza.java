// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zze$zza extends Binder implements zze
{
    public zze$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.location.ILocationCallback");
    }
    
    public static zze zzkz(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        if (queryLocalInterface != null && queryLocalInterface instanceof zze) {
            return (zze)queryLocalInterface;
        }
        return new f(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        ReflectedParcelable reflectedParcelable = null;
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.location.ILocationCallback");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.location.ILocationCallback");
                if (parcel.readInt() != 0) {
                    reflectedParcelable = (LocationResult)LocationResult.CREATOR.createFromParcel(parcel);
                }
                this.onLocationResult((LocationResult)reflectedParcelable);
                return b;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.location.ILocationCallback");
                if (parcel.readInt() != 0) {
                    reflectedParcelable = (LocationAvailability)LocationAvailability.CREATOR.createFromParcel(parcel);
                }
                this.onLocationAvailability((LocationAvailability)reflectedParcelable);
                return b;
            }
        }
    }
}
