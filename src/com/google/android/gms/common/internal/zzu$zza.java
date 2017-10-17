// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.IInterface;
import android.os.IBinder;
import android.os.Binder;

public abstract class zzu$zza extends Binder implements zzu
{
    public static zzu zzha(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzu) {
            return (zzu)queryLocalInterface;
        }
        return new o(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        Object o = null;
        final boolean b = true;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
                return b;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int1 = parcel.readInt();
                final String string = parcel.readString();
                final String string2 = parcel.readString();
                final String[] stringArray = parcel.createStringArray();
                final String string3 = parcel.readString();
                Bundle bundle;
                if (parcel.readInt() == 0) {
                    bundle = null;
                }
                else {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zza(zzgz, int1, string, string2, stringArray, string3, bundle);
                parcel2.writeNoException();
                return b;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz2 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int2 = parcel.readInt();
                final String string4 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zza(zzgz2, int2, string4, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zza(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zza(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return b;
            }
            case 5: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz3 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int3 = parcel.readInt();
                final String string5 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzb(zzgz3, int3, string5, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 6: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz4 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int4 = parcel.readInt();
                final String string6 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzc(zzgz4, int4, string6, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 7: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz5 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int5 = parcel.readInt();
                final String string7 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzd(zzgz5, int5, string7, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 8: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz6 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int6 = parcel.readInt();
                final String string8 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zze(zzgz6, int6, string8, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 9: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz7 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int7 = parcel.readInt();
                final String string9 = parcel.readString();
                final String string10 = parcel.readString();
                final String[] stringArray2 = parcel.createStringArray();
                final String string11 = parcel.readString();
                final IBinder strongBinder = parcel.readStrongBinder();
                final String string12 = parcel.readString();
                Bundle bundle2;
                if (parcel.readInt() == 0) {
                    bundle2 = null;
                }
                else {
                    bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zza(zzgz7, int7, string9, string10, stringArray2, string11, strongBinder, string12, bundle2);
                parcel2.writeNoException();
                return b;
            }
            case 10: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zza(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel2.writeNoException();
                return b;
            }
            case 11: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz8 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int8 = parcel.readInt();
                final String string13 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzf(zzgz8, int8, string13, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 12: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz9 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int9 = parcel.readInt();
                final String string14 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzg(zzgz9, int9, string14, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 13: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz10 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int10 = parcel.readInt();
                final String string15 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzh(zzgz10, int10, string15, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 14: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz11 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int11 = parcel.readInt();
                final String string16 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzi(zzgz11, int11, string16, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 15: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz12 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int12 = parcel.readInt();
                final String string17 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzj(zzgz12, int12, string17, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 16: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz13 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int13 = parcel.readInt();
                final String string18 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzk(zzgz13, int13, string18, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 17: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz14 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int14 = parcel.readInt();
                final String string19 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzl(zzgz14, int14, string19, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 18: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz15 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int15 = parcel.readInt();
                final String string20 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzm(zzgz15, int15, string20, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 19: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz16 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int16 = parcel.readInt();
                final String string21 = parcel.readString();
                final IBinder strongBinder2 = parcel.readStrongBinder();
                Bundle bundle3;
                if (parcel.readInt() == 0) {
                    bundle3 = null;
                }
                else {
                    bundle3 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zza(zzgz16, int16, string21, strongBinder2, bundle3);
                parcel2.writeNoException();
                return b;
            }
            case 20: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz17 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int17 = parcel.readInt();
                final String string22 = parcel.readString();
                final String[] stringArray3 = parcel.createStringArray();
                final String string23 = parcel.readString();
                Bundle bundle4;
                if (parcel.readInt() == 0) {
                    bundle4 = null;
                }
                else {
                    bundle4 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zza(zzgz17, int17, string22, stringArray3, string23, bundle4);
                parcel2.writeNoException();
                return b;
            }
            case 21: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzb(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 22: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzc(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 23: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz18 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int18 = parcel.readInt();
                final String string24 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzn(zzgz18, int18, string24, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 24: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzd(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 25: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz19 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int19 = parcel.readInt();
                final String string25 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzo(zzgz19, int19, string25, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 26: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zze(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 27: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz20 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int20 = parcel.readInt();
                final String string26 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzp(zzgz20, int20, string26, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 28: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzaxb();
                parcel2.writeNoException();
                return b;
            }
            case 30: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz21 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int21 = parcel.readInt();
                final String string27 = parcel.readString();
                final String string28 = parcel.readString();
                final String[] stringArray4 = parcel.createStringArray();
                Bundle bundle5;
                if (parcel.readInt() == 0) {
                    bundle5 = null;
                }
                else {
                    bundle5 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zza(zzgz21, int21, string27, string28, stringArray4, bundle5);
                parcel2.writeNoException();
                return b;
            }
            case 31: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzf(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 32: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzg(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 33: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zza(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel2.writeNoException();
                return b;
            }
            case 34: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zza(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 35: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzh(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 36: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzi(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 37: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz22 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int22 = parcel.readInt();
                final String string29 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzq(zzgz22, int22, string29, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 38: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz23 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int23 = parcel.readInt();
                final String string30 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzr(zzgz23, int23, string30, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 40: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzj(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 41: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz24 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int24 = parcel.readInt();
                final String string31 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzs(zzgz24, int24, string31, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 42: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzk(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 43: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz25 = zzt$zza.zzgz(parcel.readStrongBinder());
                final int int25 = parcel.readInt();
                final String string32 = parcel.readString();
                if (parcel.readInt() != 0) {
                    o = Bundle.CREATOR.createFromParcel(parcel);
                }
                this.zzt(zzgz25, int25, string32, (Bundle)o);
                parcel2.writeNoException();
                return b;
            }
            case 44: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzl(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 45: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                this.zzm(zzt$zza.zzgz(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return b;
            }
            case 46: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz26 = zzt$zza.zzgz(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    o = GetServiceRequest.CREATOR.createFromParcel(parcel);
                }
                this.zza(zzgz26, (GetServiceRequest)o);
                parcel2.writeNoException();
                return b;
            }
            case 47: {
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                final zzt zzgz27 = zzt$zza.zzgz(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    o = ValidateAccountRequest.CREATOR.createFromParcel(parcel);
                }
                this.zza(zzgz27, (ValidateAccountRequest)o);
                parcel2.writeNoException();
                return b;
            }
        }
    }
}
