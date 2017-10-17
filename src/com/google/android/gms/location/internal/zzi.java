// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.internal;

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
import android.app.PendingIntent;
import android.os.IInterface;

public interface zzi extends IInterface
{
    void zza(final long p0, final boolean p1, final PendingIntent p2);
    
    void zza(final PendingIntent p0, final zzre p1);
    
    void zza(final PendingIntent p0, final zzh p1, final String p2);
    
    void zza(final Location p0, final int p1);
    
    void zza(final ActivityRecognitionRequest p0, final PendingIntent p1, final zzre p2);
    
    void zza(final GeofencingRequest p0, final PendingIntent p1, final zzh p2);
    
    void zza(final GestureRequest p0, final PendingIntent p1, final zzre p2);
    
    void zza(final LocationRequest p0, final PendingIntent p1);
    
    void zza(final LocationRequest p0, final zzf p1);
    
    void zza(final LocationRequest p0, final zzf p1, final String p2);
    
    void zza(final LocationSettingsRequest p0, final zzj p1, final String p2);
    
    void zza(final LocationRequestInternal p0, final PendingIntent p1);
    
    void zza(final LocationRequestInternal p0, final zzf p1);
    
    void zza(final LocationRequestUpdateData p0);
    
    void zza(final zzg p0);
    
    void zza(final zzh p0, final String p1);
    
    void zza(final zzf p0);
    
    void zza(final List p0, final PendingIntent p1, final zzh p2, final String p3);
    
    void zza(final String[] p0, final zzh p1, final String p2);
    
    void zzb(final PendingIntent p0);
    
    void zzb(final PendingIntent p0, final zzre p1);
    
    Location zzbrh();
    
    void zzc(final PendingIntent p0);
    
    void zzc(final PendingIntent p0, final zzre p1);
    
    void zzc(final Location p0);
    
    void zzcf(final boolean p0);
    
    void zzd(final PendingIntent p0, final zzre p1);
    
    void zze(final PendingIntent p0, final zzre p1);
    
    ActivityRecognitionResult zzkg(final String p0);
    
    Location zzkh(final String p0);
    
    LocationAvailability zzki(final String p0);
}
