// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model.internal;

import com.google.android.gms.maps.model.Tile;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzi$zza extends Binder implements zzi
{
    public zzi$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }
    
    public static zzi zznr(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzi) {
            return (zzi)queryLocalInterface;
        }
        return new a(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final int n3 = 1;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
                return n3 != 0;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
                final Tile tile = this.getTile(parcel.readInt(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                if (tile == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n3);
                    tile.writeToParcel(parcel2, n3);
                }
                return n3 != 0;
            }
        }
    }
}
