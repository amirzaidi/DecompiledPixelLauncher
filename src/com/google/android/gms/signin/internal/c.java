// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import android.os.IBinder;

class c implements zzd
{
    private IBinder JS;
    
    c(final IBinder js) {
        this.JS = js;
    }
    
    public IBinder asBinder() {
        return this.JS;
    }
    
    public void zza(final ConnectionResult connectionResult, final AuthAccountResult authAccountResult) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.signin.internal.ISignInCallbacks";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (connectionResult == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        connectionResult.writeToParcel(obtain, 0);
                    }
                    if (authAccountResult == null) {
                        obtain.writeInt(0);
                        this.JS.transact(3, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                obtain.writeInt(1);
                authAccountResult.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void zza(final Status status, final GoogleSignInAccount googleSignInAccount) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.signin.internal.ISignInCallbacks";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (status == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    }
                    if (googleSignInAccount == null) {
                        obtain.writeInt(0);
                        this.JS.transact(7, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                obtain.writeInt(1);
                googleSignInAccount.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void zzb(final SignInResponse signInResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.signin.internal.ISignInCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (signInResponse == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                signInResponse.writeToParcel(obtain, 0);
            }
            this.JS.transact(8, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzio(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.signin.internal.ISignInCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (status == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            this.JS.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzip(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.signin.internal.ISignInCallbacks";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (status == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            this.JS.transact(6, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
