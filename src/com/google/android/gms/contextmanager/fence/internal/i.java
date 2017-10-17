// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.fence.internal;

import android.os.Parcel;
import android.os.IBinder;

class i implements zzm
{
    private IBinder JD;
    
    i(final IBinder jd) {
        this.JD = jd;
    }
    
    public IBinder asBinder() {
        return this.JD;
    }
    
    public void zza(final FenceTriggerInfoImpl fenceTriggerInfoImpl) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.contextmanager.fence.internal.IContextFenceListener";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (fenceTriggerInfoImpl == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                fenceTriggerInfoImpl.writeToParcel(obtain, 0);
            }
            this.JD.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
