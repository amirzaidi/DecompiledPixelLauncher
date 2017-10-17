// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.accounts.Account;
import android.os.IBinder;

class r implements zzq
{
    private IBinder iz;
    
    r(final IBinder iz) {
        this.iz = iz;
    }
    
    public IBinder asBinder() {
        return this.iz;
    }
    
    public Account getAccount() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.common.internal.IAccountAccessor";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.iz.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            Account account;
            if (obtain2.readInt() == 0) {
                account = null;
            }
            else {
                account = (Account)Account.CREATOR.createFromParcel(obtain2);
            }
            return account;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
