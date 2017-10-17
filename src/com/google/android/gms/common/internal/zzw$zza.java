// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.IInterface;
import android.os.IBinder;
import android.os.Binder;

public abstract class zzw$zza extends Binder implements zzw
{
    public static zzw zzhc(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzw) {
            return (zzw)queryLocalInterface;
        }
        return new O(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                return b;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                ResolveAccountResponse resolveAccountResponse;
                if (parcel.readInt() == 0) {
                    resolveAccountResponse = null;
                }
                else {
                    resolveAccountResponse = (ResolveAccountResponse)ResolveAccountResponse.CREATOR.createFromParcel(parcel);
                }
                this.zza(resolveAccountResponse);
                parcel2.writeNoException();
                return b;
            }
        }
    }
}
