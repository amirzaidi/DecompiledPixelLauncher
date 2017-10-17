// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.IInterface;
import android.os.IBinder;
import android.os.Binder;

public abstract class zzzb$zza extends Binder implements zzzb
{
    public static zzzb zzpe(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzzb) {
            return (zzzb)queryLocalInterface;
        }
        return new m(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.phenotype.internal.IPhenotypeService");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.createStringArray(), parcel.createByteArray());
                parcel2.writeNoException();
                return b;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.createStringArray(), parcel.createIntArray(), parcel.createByteArray());
                parcel2.writeNoException();
                return b;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 5: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zzb(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 6: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zzb(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 7: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return b;
            }
            case 8: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.createByteArray());
                parcel2.writeNoException();
                return b;
            }
            case 9: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return b;
            }
            case 10: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zzc(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 11: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 12: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readLong());
                parcel2.writeNoException();
                return b;
            }
            case 13: {
                parcel.enforceInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
                this.zza(zzza$zza.zzpd(parcel.readStrongBinder()), parcel.readString(), parcel.readInt(), parcel.createStringArray(), parcel.createByteArray(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
        }
    }
}
