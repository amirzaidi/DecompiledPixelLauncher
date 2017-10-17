// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.IInterface;
import android.os.IBinder;
import android.os.Binder;

public abstract class zzq$zza extends Binder implements zzq
{
    public static zzq zzgw(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzq) {
            return (zzq)queryLocalInterface;
        }
        return new r(binder);
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
                parcel2.writeString("com.google.android.gms.common.internal.IAccountAccessor");
                return n3 != 0;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IAccountAccessor");
                final Account account = this.getAccount();
                parcel2.writeNoException();
                if (account == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n3);
                    account.writeToParcel(parcel2, n3);
                }
                return n3 != 0;
            }
        }
    }
}
