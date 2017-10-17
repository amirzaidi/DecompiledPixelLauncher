// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.ConnectionResult;
import android.os.Parcel;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Binder;

public abstract class zzd$zza extends Binder implements zzd
{
    public zzd$zza() {
        this.attachInterface((IInterface)this, "com.google.android.gms.signin.internal.ISignInCallbacks");
    }
    
    public static zzd zzqx(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzd) {
            return (zzd)queryLocalInterface;
        }
        return new c(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        AbstractSafeParcelable abstractSafeParcelable = null;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.signin.internal.ISignInCallbacks");
                return b;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                ConnectionResult connectionResult;
                if (parcel.readInt() == 0) {
                    connectionResult = null;
                }
                else {
                    connectionResult = (ConnectionResult)ConnectionResult.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (AuthAccountResult)AuthAccountResult.CREATOR.createFromParcel(parcel);
                }
                this.zza(connectionResult, (AuthAccountResult)abstractSafeParcelable);
                parcel2.writeNoException();
                return b;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzio((Status)abstractSafeParcelable);
                parcel2.writeNoException();
                return b;
            }
            case 6: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                this.zzip((Status)abstractSafeParcelable);
                parcel2.writeNoException();
                return b;
            }
            case 7: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                Status status;
                if (parcel.readInt() == 0) {
                    status = null;
                }
                else {
                    status = (Status)Status.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (GoogleSignInAccount)GoogleSignInAccount.CREATOR.createFromParcel(parcel);
                }
                this.zza(status, (GoogleSignInAccount)abstractSafeParcelable);
                parcel2.writeNoException();
                return b;
            }
            case 8: {
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                if (parcel.readInt() != 0) {
                    abstractSafeParcelable = (SignInResponse)SignInResponse.CREATOR.createFromParcel(parcel);
                }
                this.zzb((SignInResponse)abstractSafeParcelable);
                parcel2.writeNoException();
                return b;
            }
        }
    }
}
