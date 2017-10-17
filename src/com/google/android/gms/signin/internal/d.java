// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.AuthAccountRequest;
import android.os.Parcel;
import android.accounts.Account;
import android.os.IBinder;

class d implements zze
{
    private IBinder JT;
    
    d(final IBinder jt) {
        this.JT = jt;
    }
    
    public IBinder asBinder() {
        return this.JT;
    }
    
    public void zza(final int n, final Account account, final zzd zzd) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.signin.internal.ISignInService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    obtain.writeInt(n);
                    if (account == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    }
                    if (zzd == null) {
                        obtain.writeStrongBinder(binder);
                        this.JT.transact(8, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzd.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final AuthAccountRequest authAccountRequest, final zzd zzd) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.signin.internal.ISignInService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (authAccountRequest == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        authAccountRequest.writeToParcel(obtain, 0);
                    }
                    if (zzd == null) {
                        obtain.writeStrongBinder(binder);
                        this.JT.transact(2, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzd.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final ResolveAccountRequest resolveAccountRequest, final zzw zzw) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.signin.internal.ISignInService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (resolveAccountRequest == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        resolveAccountRequest.writeToParcel(obtain, 0);
                    }
                    if (zzw == null) {
                        obtain.writeStrongBinder(binder);
                        this.JT.transact(5, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzw.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final zzq zzq, final int n, final boolean b) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.signin.internal.ISignInService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (zzq != null) {
                binder = zzq.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeInt(n);
            int n2;
            if (!b) {
                n2 = 0;
            }
            else {
                n2 = 1;
            }
            obtain.writeInt(n2);
            this.JT.transact(9, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final CheckServerAuthResult checkServerAuthResult) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.signin.internal.ISignInService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (checkServerAuthResult == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                checkServerAuthResult.writeToParcel(obtain, 0);
            }
            this.JT.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final RecordConsentRequest recordConsentRequest, final zzd zzd) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.signin.internal.ISignInService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (recordConsentRequest == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        recordConsentRequest.writeToParcel(obtain, 0);
                    }
                    if (zzd == null) {
                        obtain.writeStrongBinder(binder);
                        this.JT.transact(10, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzd.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final SignInRequest signInRequest, final zzd zzd) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.signin.internal.ISignInService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (signInRequest == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        signInRequest.writeToParcel(obtain, 0);
                    }
                    if (zzd == null) {
                        obtain.writeStrongBinder(binder);
                        this.JT.transact(12, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzd.asBinder();
                continue;
            }
        }
    }
    
    public void zzajw(final int n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.signin.internal.ISignInService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeInt(n);
            this.JT.transact(7, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzb(final zzd zzd) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.signin.internal.ISignInService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (zzd != null) {
                binder = zzd.asBinder();
            }
            obtain.writeStrongBinder(binder);
            this.JT.transact(11, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzdg(final boolean b) {
        int n = 0;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.signin.internal.ISignInService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (b) {
                n = 1;
            }
            obtain.writeInt(n);
            this.JT.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
