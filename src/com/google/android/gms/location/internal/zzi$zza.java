// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.ActivityRecognitionResult;
import java.util.ArrayList;
import com.google.android.gms.location.LocationSettingsRequest;
import android.location.Location;
import com.google.android.gms.location.zzf$zza;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.GestureRequest;
import com.google.android.gms.internal.zzre$zza;
import com.google.android.gms.location.ActivityRecognitionRequest;
import com.google.android.gms.location.GeofencingRequest;
import java.util.List;
import android.app.PendingIntent;
import android.os.Parcelable$Creator;
import android.os.Parcel;
import android.os.IInterface;
import android.os.IBinder;
import android.os.Binder;

public abstract class zzi$zza extends Binder implements zzi
{
    public static zzi zzle(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (queryLocalInterface != null && queryLocalInterface instanceof zzi) {
            return (zzi)queryLocalInterface;
        }
        return new g(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        Object o = null;
        int n3 = 0;
        final int n4 = 1;
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                return n4 != 0;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                final ArrayList typedArrayList = parcel.createTypedArrayList((Parcelable$Creator)ParcelableGeofence.CREATOR);
                PendingIntent pendingIntent;
                if (parcel.readInt() == 0) {
                    pendingIntent = null;
                }
                else {
                    pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza(typedArrayList, pendingIntent, zzh$zza.zzld(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 57: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                GeofencingRequest geofencingRequest;
                if (parcel.readInt() == 0) {
                    geofencingRequest = null;
                }
                else {
                    geofencingRequest = (GeofencingRequest)GeofencingRequest.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza(geofencingRequest, (PendingIntent)o, zzh$zza.zzld(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza((PendingIntent)o, zzh$zza.zzld(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                this.zza(parcel.createStringArray(), zzh$zza.zzld(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                this.zza(zzh$zza.zzld(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 5: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                final long long1 = parcel.readLong();
                final boolean b = parcel.readInt() != 0 && n4;
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza(long1, b, (PendingIntent)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 70: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                ActivityRecognitionRequest activityRecognitionRequest;
                if (parcel.readInt() == 0) {
                    activityRecognitionRequest = null;
                }
                else {
                    activityRecognitionRequest = (ActivityRecognitionRequest)ActivityRecognitionRequest.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza(activityRecognitionRequest, (PendingIntent)o, zzre$zza.zzgp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 6: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zzb((PendingIntent)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 64: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                final ActivityRecognitionResult zzkg = this.zzkg(parcel.readString());
                parcel2.writeNoException();
                if (zzkg == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    zzkg.writeToParcel(parcel2, n4);
                }
                return n4 != 0;
            }
            case 65: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza((PendingIntent)o, zzre$zza.zzgp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 66: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zzb((PendingIntent)o, zzre$zza.zzgp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 60: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                GestureRequest gestureRequest;
                if (parcel.readInt() == 0) {
                    gestureRequest = null;
                }
                else {
                    gestureRequest = (GestureRequest)GestureRequest.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza(gestureRequest, (PendingIntent)o, zzre$zza.zzgp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 61: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zzc((PendingIntent)o, zzre$zza.zzgp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 68: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zzd((PendingIntent)o, zzre$zza.zzgp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 69: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zze((PendingIntent)o, zzre$zza.zzgp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 7: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                final Location zzbrh = this.zzbrh();
                parcel2.writeNoException();
                if (zzbrh == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    zzbrh.writeToParcel(parcel2, n4);
                }
                return n4 != 0;
            }
            case 8: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = LocationRequest.CREATOR.createFromParcel(parcel);
                }
                this.zza((LocationRequest)o, zzf$zza.zzla(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 20: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = LocationRequest.CREATOR.createFromParcel(parcel);
                }
                this.zza((LocationRequest)o, zzf$zza.zzla(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 9: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LocationRequest locationRequest;
                if (parcel.readInt() == 0) {
                    locationRequest = null;
                }
                else {
                    locationRequest = (LocationRequest)LocationRequest.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza(locationRequest, (PendingIntent)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 52: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = LocationRequestInternal.CREATOR.createFromParcel(parcel);
                }
                this.zza((LocationRequestInternal)o, zzf$zza.zzla(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 53: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LocationRequestInternal locationRequestInternal;
                if (parcel.readInt() == 0) {
                    locationRequestInternal = null;
                }
                else {
                    locationRequestInternal = (LocationRequestInternal)LocationRequestInternal.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zza(locationRequestInternal, (PendingIntent)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 10: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                this.zza(zzf$zza.zzla(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 11: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = PendingIntent.CREATOR.createFromParcel(parcel);
                }
                this.zzc((PendingIntent)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 59: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = LocationRequestUpdateData.CREATOR.createFromParcel(parcel);
                }
                this.zza((LocationRequestUpdateData)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 12: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    n3 = n4;
                }
                this.zzcf(n3 != 0);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 13: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = Location.CREATOR.createFromParcel(parcel);
                }
                this.zzc((Location)o);
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 21: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                final Location zzkh = this.zzkh(parcel.readString());
                parcel2.writeNoException();
                if (zzkh == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    zzkh.writeToParcel(parcel2, n4);
                }
                return n4 != 0;
            }
            case 26: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = Location.CREATOR.createFromParcel(parcel);
                }
                this.zza((Location)o, parcel.readInt());
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 67: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                this.zza(zzg$zza.zzlc(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return n4 != 0;
            }
            case 34: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                final LocationAvailability zzki = this.zzki(parcel.readString());
                parcel2.writeNoException();
                if (zzki == null) {
                    parcel2.writeInt(0);
                }
                else {
                    parcel2.writeInt(n4);
                    zzki.writeToParcel(parcel2, n4);
                }
                return n4 != 0;
            }
            case 63: {
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    o = LocationSettingsRequest.CREATOR.createFromParcel(parcel);
                }
                this.zza((LocationSettingsRequest)o, zzj$zza.zzlf(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return n4 != 0;
            }
        }
    }
}
