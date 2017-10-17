// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Bundle;
import android.os.IBinder;

class g implements zzt
{
    private IBinder fu;
    
    g(final IBinder fu) {
        this.fu = fu;
    }
    
    public IBinder asBinder() {
        return this.fu;
    }
    
    public void zza(final int n, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.common.internal.IGmsCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            if (bundle == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
            }
            this.fu.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final int n, final IBinder binder, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.common.internal.IGmsCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            obtain.writeStrongBinder(binder);
            if (bundle == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                bundle.writeToParcel(obtain, 0);
            }
            this.fu.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
