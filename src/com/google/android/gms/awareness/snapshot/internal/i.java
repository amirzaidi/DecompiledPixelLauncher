// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.data.DataHolder;
import android.location.Location;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.common.internal.safeparcel.b;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class i implements Parcelable$Creator
{
    static void qA(final Snapshot snapshot, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, snapshot.qU());
        a.eW(parcel, 2, (Parcelable)snapshot.qM(), n, false);
        a.eW(parcel, 3, (Parcelable)snapshot.qK(), n, false);
        a.eW(parcel, 4, (Parcelable)snapshot.qP(), n, false);
        a.eW(parcel, 5, (Parcelable)snapshot.qN(), n, false);
        a.eW(parcel, 6, (Parcelable)snapshot.qR(), n, false);
        a.eW(parcel, 7, (Parcelable)snapshot.qS(), n, false);
        a.eW(parcel, 8, (Parcelable)snapshot.qQ(), n, false);
        a.eW(parcel, 9, (Parcelable)snapshot.qL(), n, false);
        a.eW(parcel, 10, (Parcelable)snapshot.qO(), n, false);
        a.eW(parcel, 11, (Parcelable)snapshot.qT(), n, false);
        a.fe(parcel, ey);
    }
    
    public Snapshot[] qB(final int n) {
        return new Snapshot[n];
    }
    
    public Snapshot qz(final Parcel parcel) {
        DayAttributesImpl dayAttributesImpl = null;
        final int fj = b.fJ(parcel);
        int fn = 0;
        WeatherImpl weatherImpl = null;
        ScreenStateImpl screenStateImpl = null;
        PowerStateImpl powerStateImpl = null;
        DataHolder dataHolder = null;
        NetworkStateImpl networkStateImpl = null;
        Location location = null;
        HeadphoneStateImpl headphoneStateImpl = null;
        BeaconStateImpl beaconStateImpl = null;
        ActivityRecognitionResult activityRecognitionResult = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    activityRecognitionResult = (ActivityRecognitionResult)b.fW(parcel, fs, (Parcelable$Creator)ActivityRecognitionResult.CREATOR);
                    continue;
                }
                case 3: {
                    beaconStateImpl = (BeaconStateImpl)b.fW(parcel, fs, BeaconStateImpl.CREATOR);
                    continue;
                }
                case 4: {
                    headphoneStateImpl = (HeadphoneStateImpl)b.fW(parcel, fs, HeadphoneStateImpl.CREATOR);
                    continue;
                }
                case 5: {
                    location = (Location)b.fW(parcel, fs, Location.CREATOR);
                    continue;
                }
                case 6: {
                    networkStateImpl = (NetworkStateImpl)b.fW(parcel, fs, NetworkStateImpl.CREATOR);
                    continue;
                }
                case 7: {
                    dataHolder = (DataHolder)b.fW(parcel, fs, DataHolder.CREATOR);
                    continue;
                }
                case 8: {
                    powerStateImpl = (PowerStateImpl)b.fW(parcel, fs, PowerStateImpl.CREATOR);
                    continue;
                }
                case 9: {
                    screenStateImpl = (ScreenStateImpl)b.fW(parcel, fs, ScreenStateImpl.CREATOR);
                    continue;
                }
                case 10: {
                    weatherImpl = (WeatherImpl)b.fW(parcel, fs, WeatherImpl.CREATOR);
                    continue;
                }
                case 11: {
                    dayAttributesImpl = (DayAttributesImpl)b.fW(parcel, fs, DayAttributesImpl.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new Snapshot(fn, activityRecognitionResult, beaconStateImpl, headphoneStateImpl, location, networkStateImpl, dataHolder, powerStateImpl, screenStateImpl, weatherImpl, dayAttributesImpl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
