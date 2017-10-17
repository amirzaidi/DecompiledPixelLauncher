// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.location.DetectedActivity;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcelable$Creator;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.ActivityRecognitionResult;
import java.util.List;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zzf;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.GestureRequest;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.ActivityRecognitionRequest;
import android.location.Location;
import com.google.android.gms.internal.zzre;
import android.os.Parcel;
import android.app.PendingIntent;
import android.os.IBinder;

class g implements zzi
{
    private IBinder AA;
    
    g(final IBinder aa) {
        this.AA = aa;
    }
    
    public IBinder asBinder() {
        return this.AA;
    }
    
    public void zza(final long n, final boolean b, final PendingIntent pendingIntent) {
        final boolean b2 = true;
        int n2 = 0;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            obtain.writeLong(n);
            if (b) {
                n2 = (b2 ? 1 : 0);
            }
            obtain.writeInt(n2);
            if (pendingIntent == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                pendingIntent.writeToParcel(obtain, 0);
            }
            this.AA.transact(5, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final PendingIntent pendingIntent, final zzre zzre) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (pendingIntent == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    }
                    if (zzre == null) {
                        obtain.writeStrongBinder(binder);
                        this.AA.transact(65, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzre.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final PendingIntent pendingIntent, final zzh zzh, final String s) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s2 = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s2);
                    if (pendingIntent == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    }
                    if (zzh == null) {
                        obtain.writeStrongBinder(binder);
                        obtain.writeString(s);
                        this.AA.transact(2, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzh.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final Location location, final int n) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (location == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                location.writeToParcel(obtain, 0);
            }
            obtain.writeInt(n);
            this.AA.transact(26, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final ActivityRecognitionRequest activityRecognitionRequest, final PendingIntent pendingIntent, final zzre zzre) {
    Label_0060_Outer:
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
            Label_0175:
                while (true) {
                    try {
                        parcel.writeInterfaceToken(s);
                        if (activityRecognitionRequest == null) {
                            obtain.writeInt(0);
                        }
                        else {
                            obtain.writeInt(1);
                            activityRecognitionRequest.writeToParcel(obtain, 0);
                        }
                        if (pendingIntent == null) {
                            obtain.writeInt(0);
                            if (zzre == null) {
                                obtain.writeStrongBinder(binder);
                                this.AA.transact(70, obtain, obtain2, 0);
                                obtain2.readException();
                                return;
                            }
                            break Label_0175;
                        }
                    }
                    finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                    continue Label_0060_Outer;
                }
                binder = zzre.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final GeofencingRequest geofencingRequest, final PendingIntent pendingIntent, final zzh zzh) {
    Label_0060_Outer:
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
            Label_0175:
                while (true) {
                    try {
                        parcel.writeInterfaceToken(s);
                        if (geofencingRequest == null) {
                            obtain.writeInt(0);
                        }
                        else {
                            obtain.writeInt(1);
                            geofencingRequest.writeToParcel(obtain, 0);
                        }
                        if (pendingIntent == null) {
                            obtain.writeInt(0);
                            if (zzh == null) {
                                obtain.writeStrongBinder(binder);
                                this.AA.transact(57, obtain, obtain2, 0);
                                obtain2.readException();
                                return;
                            }
                            break Label_0175;
                        }
                    }
                    finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                    continue Label_0060_Outer;
                }
                binder = zzh.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final GestureRequest gestureRequest, final PendingIntent pendingIntent, final zzre zzre) {
    Label_0060_Outer:
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
            Label_0175:
                while (true) {
                    try {
                        parcel.writeInterfaceToken(s);
                        if (gestureRequest == null) {
                            obtain.writeInt(0);
                        }
                        else {
                            obtain.writeInt(1);
                            gestureRequest.writeToParcel(obtain, 0);
                        }
                        if (pendingIntent == null) {
                            obtain.writeInt(0);
                            if (zzre == null) {
                                obtain.writeStrongBinder(binder);
                                this.AA.transact(60, obtain, obtain2, 0);
                                obtain2.readException();
                                return;
                            }
                            break Label_0175;
                        }
                    }
                    finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                    obtain.writeInt(1);
                    pendingIntent.writeToParcel(obtain, 0);
                    continue Label_0060_Outer;
                }
                binder = zzre.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final LocationRequest locationRequest, final PendingIntent pendingIntent) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (locationRequest == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        locationRequest.writeToParcel(obtain, 0);
                    }
                    if (pendingIntent == null) {
                        obtain.writeInt(0);
                        this.AA.transact(9, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                obtain.writeInt(1);
                pendingIntent.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void zza(final LocationRequest locationRequest, final zzf zzf) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (locationRequest == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        locationRequest.writeToParcel(obtain, 0);
                    }
                    if (zzf == null) {
                        obtain.writeStrongBinder(binder);
                        this.AA.transact(8, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzf.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final LocationRequest locationRequest, final zzf zzf, final String s) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s2 = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s2);
                    if (locationRequest == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        locationRequest.writeToParcel(obtain, 0);
                    }
                    if (zzf == null) {
                        obtain.writeStrongBinder(binder);
                        obtain.writeString(s);
                        this.AA.transact(20, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzf.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final LocationSettingsRequest locationSettingsRequest, final zzj zzj, final String s) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s2 = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s2);
                    if (locationSettingsRequest == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        locationSettingsRequest.writeToParcel(obtain, 0);
                    }
                    if (zzj == null) {
                        obtain.writeStrongBinder(binder);
                        obtain.writeString(s);
                        this.AA.transact(63, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzj.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final LocationRequestInternal locationRequestInternal, final PendingIntent pendingIntent) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (locationRequestInternal == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        locationRequestInternal.writeToParcel(obtain, 0);
                    }
                    if (pendingIntent == null) {
                        obtain.writeInt(0);
                        this.AA.transact(53, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                obtain.writeInt(1);
                pendingIntent.writeToParcel(obtain, 0);
                continue;
            }
        }
    }
    
    public void zza(final LocationRequestInternal locationRequestInternal, final zzf zzf) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (locationRequestInternal == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        locationRequestInternal.writeToParcel(obtain, 0);
                    }
                    if (zzf == null) {
                        obtain.writeStrongBinder(binder);
                        this.AA.transact(52, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzf.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final LocationRequestUpdateData locationRequestUpdateData) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (locationRequestUpdateData == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                locationRequestUpdateData.writeToParcel(obtain, 0);
            }
            this.AA.transact(59, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzg zzg) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (zzg != null) {
                binder = zzg.asBinder();
            }
            obtain.writeStrongBinder(binder);
            this.AA.transact(67, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzh zzh, final String s) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            if (zzh != null) {
                binder = zzh.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            this.AA.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final zzf zzf) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (zzf != null) {
                binder = zzf.asBinder();
            }
            obtain.writeStrongBinder(binder);
            this.AA.transact(10, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zza(final List list, final PendingIntent pendingIntent, final zzh zzh, final String s) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s2 = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s2);
                    obtain.writeTypedList(list);
                    if (pendingIntent == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    }
                    if (zzh == null) {
                        obtain.writeStrongBinder(binder);
                        obtain.writeString(s);
                        this.AA.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzh.asBinder();
                continue;
            }
        }
    }
    
    public void zza(final String[] array, final zzh zzh, final String s) {
        IBinder binder = null;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            obtain.writeStringArray(array);
            if (zzh != null) {
                binder = zzh.asBinder();
            }
            obtain.writeStrongBinder(binder);
            obtain.writeString(s);
            this.AA.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzb(final PendingIntent pendingIntent) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (pendingIntent == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                pendingIntent.writeToParcel(obtain, 0);
            }
            this.AA.transact(6, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzb(final PendingIntent pendingIntent, final zzre zzre) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (pendingIntent == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    }
                    if (zzre == null) {
                        obtain.writeStrongBinder(binder);
                        this.AA.transact(66, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzre.asBinder();
                continue;
            }
        }
    }
    
    public Location zzbrh() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            this.AA.transact(7, obtain, obtain2, 0);
            obtain2.readException();
            Location location;
            if (obtain2.readInt() == 0) {
                location = null;
            }
            else {
                location = (Location)Location.CREATOR.createFromParcel(obtain2);
            }
            return location;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzc(final PendingIntent pendingIntent) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (pendingIntent == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                pendingIntent.writeToParcel(obtain, 0);
            }
            this.AA.transact(11, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzc(final PendingIntent pendingIntent, final zzre zzre) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (pendingIntent == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    }
                    if (zzre == null) {
                        obtain.writeStrongBinder(binder);
                        this.AA.transact(61, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzre.asBinder();
                continue;
            }
        }
    }
    
    public void zzc(final Location location) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (location == null) {
                obtain.writeInt(0);
            }
            else {
                obtain.writeInt(1);
                location.writeToParcel(obtain, 0);
            }
            this.AA.transact(13, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzcf(final boolean b) {
        int n = 0;
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s);
            if (b) {
                n = 1;
            }
            obtain.writeInt(n);
            this.AA.transact(12, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public void zzd(final PendingIntent pendingIntent, final zzre zzre) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (pendingIntent == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    }
                    if (zzre == null) {
                        obtain.writeStrongBinder(binder);
                        this.AA.transact(68, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzre.asBinder();
                continue;
            }
        }
    }
    
    public void zze(final PendingIntent pendingIntent, final zzre zzre) {
        while (true) {
            IBinder binder = null;
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            final String s = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
            final Parcel parcel = obtain;
            while (true) {
                try {
                    parcel.writeInterfaceToken(s);
                    if (pendingIntent == null) {
                        obtain.writeInt(0);
                    }
                    else {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    }
                    if (zzre == null) {
                        obtain.writeStrongBinder(binder);
                        this.AA.transact(69, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                binder = zzre.asBinder();
                continue;
            }
        }
    }
    
    public ActivityRecognitionResult zzkg(final String s) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            obtain.writeString(s);
            this.AA.transact(64, obtain, obtain2, 0);
            obtain2.readException();
            ActivityRecognitionResult activityRecognitionResult;
            if (obtain2.readInt() == 0) {
                activityRecognitionResult = null;
            }
            else {
                activityRecognitionResult = (ActivityRecognitionResult)ActivityRecognitionResult.CREATOR.createFromParcel(obtain2);
            }
            return activityRecognitionResult;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public Location zzkh(final String s) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            obtain.writeString(s);
            this.AA.transact(21, obtain, obtain2, 0);
            obtain2.readException();
            Location location;
            if (obtain2.readInt() == 0) {
                location = null;
            }
            else {
                location = (Location)Location.CREATOR.createFromParcel(obtain2);
            }
            return location;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public LocationAvailability zzki(final String s) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        final String s2 = "com.google.android.gms.location.internal.IGoogleLocationManagerService";
        final Parcel parcel = obtain;
        try {
            parcel.writeInterfaceToken(s2);
            obtain.writeString(s);
            this.AA.transact(34, obtain, obtain2, 0);
            obtain2.readException();
            LocationAvailability locationAvailability;
            if (obtain2.readInt() == 0) {
                locationAvailability = null;
            }
            else {
                locationAvailability = (LocationAvailability)LocationAvailability.CREATOR.createFromParcel(obtain2);
            }
            return locationAvailability;
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
