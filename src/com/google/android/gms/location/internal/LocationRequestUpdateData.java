// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.location.zze$zza;
import com.google.android.gms.location.zzf$zza;
import android.os.IBinder;
import com.google.android.gms.location.zzf;
import android.app.PendingIntent;
import com.google.android.gms.location.zze;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class LocationRequestUpdateData extends AbstractSafeParcelable
{
    public static final f CREATOR;
    zze BX;
    LocationRequestInternal BY;
    PendingIntent BZ;
    private final int Ca;
    int Cb;
    zzf Cc;
    zzg Cd;
    
    static {
        CREATOR = new f();
    }
    
    LocationRequestUpdateData(final int ca, final int cb, final LocationRequestInternal by, final IBinder binder, final PendingIntent bz, final IBinder binder2, final IBinder binder3) {
        zzg zzlc = null;
        this.Ca = ca;
        this.Cb = cb;
        this.BY = by;
        zzf zzla;
        if (binder != null) {
            zzla = zzf$zza.zzla(binder);
        }
        else {
            zzla = null;
        }
        this.Cc = zzla;
        this.BZ = bz;
        zze zzkz;
        if (binder2 != null) {
            zzkz = zze$zza.zzkz(binder2);
        }
        else {
            zzkz = null;
        }
        this.BX = zzkz;
        if (binder3 != null) {
            zzlc = zzg$zza.zzlc(binder3);
        }
        this.Cd = zzlc;
    }
    
    public static LocationRequestUpdateData FO(final zzf zzf, final zzg zzg) {
        final IBinder binder = zzf.asBinder();
        final boolean b = true;
        final int n = 2;
        IBinder binder2;
        if (zzg == null) {
            binder2 = null;
        }
        else {
            binder2 = zzg.asBinder();
        }
        return new LocationRequestUpdateData(b ? 1 : 0, n, null, binder, null, null, binder2);
    }
    
    public static LocationRequestUpdateData FR(final zze zze, final zzg zzg) {
        final IBinder binder = zze.asBinder();
        final boolean b = true;
        final int n = 2;
        IBinder binder2;
        if (zzg == null) {
            binder2 = null;
        }
        else {
            binder2 = zzg.asBinder();
        }
        return new LocationRequestUpdateData(b ? 1 : 0, n, null, null, null, binder, binder2);
    }
    
    IBinder FN() {
        IBinder binder = null;
        if (this.Cc != null) {
            binder = this.Cc.asBinder();
        }
        return binder;
    }
    
    int FP() {
        return this.Ca;
    }
    
    IBinder FQ() {
        IBinder binder = null;
        if (this.BX != null) {
            binder = this.BX.asBinder();
        }
        return binder;
    }
    
    IBinder FS() {
        IBinder binder = null;
        if (this.Cd != null) {
            binder = this.Cd.asBinder();
        }
        return binder;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.FX(this, parcel, n);
    }
}
