// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.os;

import android.os.Parcel;
import android.os.Bundle;
import android.os.IBinder;

class e implements IResultReceiver
{
    private IBinder adu;
    
    e(final IBinder adu) {
        this.adu = adu;
    }
    
    public IBinder asBinder() {
        return this.adu;
    }
    
    public void send(final int n, final Bundle bundle) {
        final Parcel obtain = Parcel.obtain();
        final String s = "android.support.v4.os.IResultReceiver";
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
            this.adu.transact(1, obtain, (Parcel)null, 1);
        }
        finally {
            obtain.recycle();
        }
    }
}
