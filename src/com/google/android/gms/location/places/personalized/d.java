// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.places.personalized;

import java.util.List;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class d implements Parcelable$Creator
{
    static void CS(final PlaceUserData placeUserData, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fo(parcel, 1, placeUserData.CP(), false);
        a.fo(parcel, 2, placeUserData.CQ(), false);
        a.fc(parcel, 6, placeUserData.CR(), false);
        a.fj(parcel, 1000, placeUserData.xR);
        a.fe(parcel, ey);
    }
    
    public PlaceUserData createFromParcel(final Parcel parcel) {
        List fz = null;
        final int fj = b.fJ(parcel);
        String fq = null;
        int fn = 0;
        String fq2 = null;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fq = b.fQ(parcel, fs);
                    continue;
                }
                case 2: {
                    fq2 = b.fQ(parcel, fs);
                    continue;
                }
                case 6: {
                    fz = b.fZ(parcel, fs, (Parcelable$Creator)PlaceAlias.CREATOR);
                    continue;
                }
                case 1000: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new PlaceUserData(fn, fq, fq2, fz);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public PlaceUserData[] newArray(final int n) {
        return new PlaceUserData[n];
    }
}
