// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.maps.model.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable$Creator;
import android.os.Parcel;
import com.google.android.gms.maps.model.Tile;
import android.os.IBinder;

class a implements zzi
{
    private IBinder Fd;
    
    a(final IBinder fd) {
        this.Fd = fd;
    }
    
    public IBinder asBinder() {
        return this.Fd;
    }
    
    public Tile getTile(final int n, final int n2, final int n3) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.maps.model.internal.ITileProviderDelegate";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            obtain.writeInt(n2);
            obtain.writeInt(n3);
            this.Fd.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            Tile tile;
            if (obtain2.readInt() == 0) {
                tile = null;
            }
            else {
                tile = (Tile)Tile.CREATOR.createFromParcel(obtain2);
            }
            return tile;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
