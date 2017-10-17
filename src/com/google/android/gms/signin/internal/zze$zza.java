// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzq$zza;
import android.accounts.Account;
import com.google.android.gms.common.internal.zzw$zza;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.AuthAccountRequest;
import android.os.Parcel;
import android.os.IInterface;
import android.os.IBinder;
import android.os.Binder;

public abstract class zze$zza extends Binder implements zze
{
    public static zze zzqy(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        if (queryLocalInterface != null && queryLocalInterface instanceof zze) {
            return (zze)queryLocalInterface;
        }
        return new d(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        Object o = null;
        boolean b = false;
        final boolean b2 = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.signin.internal.ISignInService");
                return b2;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    o = AuthAccountRequest.CREATOR.createFromParcel(parcel);
                }
                this.zza((AuthAccountRequest)o, zzd$zza.zzqx(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return b2;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    o = CheckServerAuthResult.CREATOR.createFromParcel(parcel);
                }
                this.zza((CheckServerAuthResult)o);
                parcel2.writeNoException();
                return b2;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                this.zzdg(parcel.readInt() != 0 && b2);
                parcel2.writeNoException();
                return b2;
            }
            case 5: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    o = ResolveAccountRequest.CREATOR.createFromParcel(parcel);
                }
                this.zza((ResolveAccountRequest)o, zzw$zza.zzhc(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return b2;
            }
            case 7: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                this.zzajw(parcel.readInt());
                parcel2.writeNoException();
                return b2;
            }
            case 8: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                final int int1 = parcel.readInt();
                if (parcel.readInt() != 0) {
                    o = Account.CREATOR.createFromParcel(parcel);
                }
                this.zza(int1, (Account)o, zzd$zza.zzqx(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return b2;
            }
            case 9: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                final zzq zzgw = zzq$zza.zzgw(parcel.readStrongBinder());
                final int int2 = parcel.readInt();
                if (parcel.readInt() != 0) {
                    b = b2;
                }
                this.zza(zzgw, int2, b);
                parcel2.writeNoException();
                return b2;
            }
            case 10: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    o = RecordConsentRequest.CREATOR.createFromParcel(parcel);
                }
                this.zza((RecordConsentRequest)o, zzd$zza.zzqx(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return b2;
            }
            case 11: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                this.zzb(zzd$zza.zzqx(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return b2;
            }
            case 12: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                if (parcel.readInt() != 0) {
                    o = SignInRequest.CREATOR.createFromParcel(parcel);
                }
                this.zza((SignInRequest)o, zzd$zza.zzqx(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return b2;
            }
        }
    }
}
