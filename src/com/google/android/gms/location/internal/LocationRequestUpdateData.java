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
    zze As;
    LocationRequestInternal At;
    PendingIntent Au;
    private final int Av;
    int Aw;
    zzf Ax;
    zzg Ay;
    
    static {
        CREATOR = new f();
    }
    
    LocationRequestUpdateData(final int av, final int aw, final LocationRequestInternal at, final IBinder binder, final PendingIntent au, final IBinder binder2, final IBinder binder3) {
        zzg zzlc = null;
        this.Av = av;
        this.Aw = aw;
        this.At = at;
        zzf zzla;
        if (binder != null) {
            zzla = zzf$zza.zzla(binder);
        }
        else {
            zzla = null;
        }
        this.Ax = zzla;
        this.Au = au;
        zze zzkz;
        if (binder2 != null) {
            zzkz = zze$zza.zzkz(binder2);
        }
        else {
            zzkz = null;
        }
        this.As = zzkz;
        if (binder3 != null) {
            zzlc = zzg$zza.zzlc(binder3);
        }
        this.Ay = zzlc;
    }
    
    public static LocationRequestUpdateData EV(final zzf zzf, final zzg zzg) {
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
    
    public static LocationRequestUpdateData EY(final zze zze, final zzg zzg) {
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
    
    IBinder EU() {
        IBinder binder = null;
        if (this.Ax != null) {
            binder = this.Ax.asBinder();
        }
        return binder;
    }
    
    int EW() {
        return this.Av;
    }
    
    IBinder EX() {
        IBinder binder = null;
        if (this.As != null) {
            binder = this.As.asBinder();
        }
        return binder;
    }
    
    IBinder EZ() {
        IBinder binder = null;
        if (this.Ay != null) {
            binder = this.Ay.asBinder();
        }
        return binder;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        f.Fe(this, parcel, n);
    }
}
