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
    static void fu(final Snapshot snapshot, final Parcel parcel, final int n) {
        final int hm = a.hM(parcel);
        a.hX(parcel, 1, snapshot.fO());
        a.hK(parcel, 2, (Parcelable)snapshot.fG(), n, false);
        a.hK(parcel, 3, (Parcelable)snapshot.fE(), n, false);
        a.hK(parcel, 4, (Parcelable)snapshot.fJ(), n, false);
        a.hK(parcel, 5, (Parcelable)snapshot.fH(), n, false);
        a.hK(parcel, 6, (Parcelable)snapshot.fL(), n, false);
        a.hK(parcel, 7, (Parcelable)snapshot.fM(), n, false);
        a.hK(parcel, 8, (Parcelable)snapshot.fK(), n, false);
        a.hK(parcel, 9, (Parcelable)snapshot.fF(), n, false);
        a.hK(parcel, 10, (Parcelable)snapshot.fI(), n, false);
        a.hK(parcel, 11, (Parcelable)snapshot.fN(), n, false);
        a.hS(parcel, hm);
    }
    
    public Snapshot ft(final Parcel parcel) {
        DayAttributesImpl dayAttributesImpl = null;
        final int ix = b.ix(parcel);
        int ib = 0;
        WeatherImpl weatherImpl = null;
        ScreenStateImpl screenStateImpl = null;
        PowerStateImpl powerStateImpl = null;
        DataHolder dataHolder = null;
        NetworkStateImpl networkStateImpl = null;
        Location location = null;
        HeadphoneStateImpl headphoneStateImpl = null;
        BeaconStateImpl beaconStateImpl = null;
        ActivityRecognitionResult activityRecognitionResult = null;
        while (parcel.dataPosition() < ix) {
            final int ig = b.iG(parcel);
            switch (b.iO(ig)) {
                default: {
                    b.io(parcel, ig);
                    continue;
                }
                case 1: {
                    ib = b.iB(parcel, ig);
                    continue;
                }
                case 2: {
                    activityRecognitionResult = (ActivityRecognitionResult)b.iK(parcel, ig, (Parcelable$Creator)ActivityRecognitionResult.CREATOR);
                    continue;
                }
                case 3: {
                    beaconStateImpl = (BeaconStateImpl)b.iK(parcel, ig, BeaconStateImpl.CREATOR);
                    continue;
                }
                case 4: {
                    headphoneStateImpl = (HeadphoneStateImpl)b.iK(parcel, ig, HeadphoneStateImpl.CREATOR);
                    continue;
                }
                case 5: {
                    location = (Location)b.iK(parcel, ig, Location.CREATOR);
                    continue;
                }
                case 6: {
                    networkStateImpl = (NetworkStateImpl)b.iK(parcel, ig, NetworkStateImpl.CREATOR);
                    continue;
                }
                case 7: {
                    dataHolder = (DataHolder)b.iK(parcel, ig, DataHolder.CREATOR);
                    continue;
                }
                case 8: {
                    powerStateImpl = (PowerStateImpl)b.iK(parcel, ig, PowerStateImpl.CREATOR);
                    continue;
                }
                case 9: {
                    screenStateImpl = (ScreenStateImpl)b.iK(parcel, ig, ScreenStateImpl.CREATOR);
                    continue;
                }
                case 10: {
                    weatherImpl = (WeatherImpl)b.iK(parcel, ig, WeatherImpl.CREATOR);
                    continue;
                }
                case 11: {
                    dayAttributesImpl = (DayAttributesImpl)b.iK(parcel, ig, DayAttributesImpl.CREATOR);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == ix) {
            return new Snapshot(ib, activityRecognitionResult, beaconStateImpl, headphoneStateImpl, location, networkStateImpl, dataHolder, powerStateImpl, screenStateImpl, weatherImpl, dayAttributesImpl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(ix).toString(), parcel);
    }
    
    public Snapshot[] fv(final int n) {
        return new Snapshot[n];
    }
}
