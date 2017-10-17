// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.contextmanager.interest;

import android.os.Parcel;
import com.google.android.gms.internal.aC;
import com.google.android.gms.internal.zzaxw;
import android.util.Log;
import com.google.android.gms.internal.O;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class InterestRecordStub extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final O Mn;
    private final int Mo;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    InterestRecordStub(final int mo, final byte[] array) {
        this.Mo = mo;
        O tt = null;
        while (true) {
            try {
                tt = O.tt(array);
                this.Mn = tt;
            }
            catch (zzaxw zzaxw) {
                Log.e("InterestRecordStub", "Could not deserialize interest bytes.", (Throwable)zzaxw);
                continue;
            }
            break;
        }
    }
    
    byte[] RT() {
        return aC.uV(this.Mn);
    }
    
    int RU() {
        return this.Mo;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.RX(this, parcel, n);
    }
}
