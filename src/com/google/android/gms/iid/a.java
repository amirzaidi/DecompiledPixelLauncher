// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.iid;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable$Creator;

class a implements Parcelable$Creator
{
    public MessengerCompat[] Pd(final int n) {
        return new MessengerCompat[n];
    }
    
    public MessengerCompat Pe(final Parcel parcel) {
        MessengerCompat messengerCompat = null;
        final IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder != null) {
            messengerCompat = new MessengerCompat(strongBinder);
        }
        return messengerCompat;
    }
}
