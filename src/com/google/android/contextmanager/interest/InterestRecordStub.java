// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.contextmanager.interest;

import android.os.Parcel;
import com.google.android.gms.internal.aI;
import com.google.android.gms.internal.zzaxw;
import android.util.Log;
import com.google.android.gms.internal.V;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class InterestRecordStub extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final V KK;
    private final int KL;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    InterestRecordStub(final int kl, final byte[] array) {
        this.KL = kl;
        V tw = null;
        while (true) {
            try {
                tw = V.tw(array);
                this.KK = tw;
            }
            catch (zzaxw zzaxw) {
                Log.e("InterestRecordStub", "Could not deserialize interest bytes.", (Throwable)zzaxw);
                continue;
            }
            break;
        }
    }
    
    byte[] QZ() {
        return aI.uW(this.KK);
    }
    
    int Ra() {
        return this.KL;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.Rd(this, parcel, n);
    }
}
