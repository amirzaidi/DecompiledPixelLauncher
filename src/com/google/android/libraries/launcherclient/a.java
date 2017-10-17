// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.os.Parcel;
import android.os.IBinder;

class a implements ILauncherOverlayCallback
{
    private IBinder KI;
    
    a(final IBinder ki) {
        this.KI = ki;
    }
    
    public IBinder asBinder() {
        return this.KI;
    }
    
    public void overlayScrollChanged(final float n) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlayCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeFloat(n);
            this.KI.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
    
    public void overlayStatusChanged(final int n) {
        final Parcel obtain = Parcel.obtain();
        final String s = "com.google.android.libraries.launcherclient.ILauncherOverlayCallback";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.KI.transact(2, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
