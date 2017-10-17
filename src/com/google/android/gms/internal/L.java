// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.IBinder;

class l implements zzzb
{
    private IBinder oX;
    
    l(final IBinder ox) {
        this.oX = ox;
    }
    
    public IBinder asBinder() {
        return this.oX;
    }
    
    public void zza(final zzza zzza) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            this.oX.transact(7, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzza zzza, final long n) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeLong(n);
            this.oX.transact(12, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzza zzza, final String s) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            this.oX.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzza zzza, final String s, final int n, final String[] array, final byte[] array2) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            obtain.writeInt(n);
            obtain.writeStringArray(array);
            obtain.writeByteArray(array2);
            this.oX.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzza zzza, final String s, final int n, final String[] array, final byte[] array2, final String s2, final String s3) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s4 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s4);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            obtain.writeInt(n);
            obtain.writeStringArray(array);
            obtain.writeByteArray(array2);
            obtain.writeString(s2);
            obtain.writeString(s3);
            this.oX.transact(13, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzza zzza, final String s, final int n, final String[] array, final int[] array2, final byte[] array3) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            obtain.writeInt(n);
            obtain.writeStringArray(array);
            obtain.writeIntArray(array2);
            obtain.writeByteArray(array3);
            this.oX.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzza zzza, final String s, final String s2) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s3 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s3);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            obtain.writeString(s2);
            this.oX.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzza zzza, final String s, final String s2, final int n) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s3 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s3);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            obtain.writeString(s2);
            obtain.writeInt(n);
            this.oX.transact(9, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzza zzza, final String s, final String s2, final String s3) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s4 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s4);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            obtain.writeString(s2);
            obtain.writeString(s3);
            this.oX.transact(11, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzza zzza, final byte[] array) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeByteArray(array);
            this.oX.transact(8, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzb(final zzza zzza, final String s) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            this.oX.transact(5, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzb(final zzza zzza, final String s, final String s2) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s3 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s3);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            obtain.writeString(s2);
            this.oX.transact(6, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzc(final zzza zzza, final String s) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.phenotype.internal.IPhenotypeService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            if (zzza != null) {
                binder = zzza.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            this.oX.transact(10, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
