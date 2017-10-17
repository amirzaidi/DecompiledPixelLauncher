// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import com.google.android.gms.internal.aI;
import com.google.android.gms.common.internal.u;
import java.util.Arrays;
import android.text.TextUtils;
import com.google.android.gms.internal.zzaxw;
import com.google.android.gms.internal.P;
import com.google.android.gms.internal.E;
import android.os.Parcelable$Creator;
import com.google.android.gms.awareness.state.BeaconState$TypeFilter;

public class BeaconStateImpl$TypeFilterImpl extends BeaconState$TypeFilter
{
    public static final Parcelable$Creator CREATOR;
    private final E mG;
    private final int mH;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    BeaconStateImpl$TypeFilterImpl(final int mh, final byte[] array) {
        this.mH = mh;
        E sk = null;
        while (true) {
            try {
                sk = E.sK(array);
                this.mG = sk;
            }
            catch (zzaxw zzaxw) {
                P.tg("BeaconStateImpl", "Could not deserialize BeaconFence.BeaconTypeFilter");
                continue;
            }
            break;
        }
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof BeaconStateImpl$TypeFilterImpl) {
            final BeaconStateImpl$TypeFilterImpl beaconStateImpl$TypeFilterImpl = (BeaconStateImpl$TypeFilterImpl)o;
            if (!TextUtils.equals((CharSequence)this.qk(), (CharSequence)beaconStateImpl$TypeFilterImpl.qk()) || !TextUtils.equals((CharSequence)this.ql(), (CharSequence)beaconStateImpl$TypeFilterImpl.ql()) || !Arrays.equals(this.qj(), beaconStateImpl$TypeFilterImpl.qj())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        int hashCode = 0;
        final Object[] array = { this.qk(), this.ql(), null };
        final byte[] qj = this.qj();
        final int n = 2;
        if (qj != null) {
            hashCode = Arrays.hashCode(this.qj());
        }
        array[n] = hashCode;
        return u.hI(array);
    }
    
    public byte[] qj() {
        if (this.mG != null && this.mG.pn != null && this.mG.pn.length != 0) {
            return this.mG.pn;
        }
        return null;
    }
    
    public String qk() {
        if (this.mG != null) {
            return this.mG.pk;
        }
        return null;
    }
    
    public String ql() {
        if (this.mG != null) {
            return this.mG.pm;
        }
        return null;
    }
    
    byte[] qm() {
        return aI.uW(this.mG);
    }
    
    int qn() {
        return this.mH;
    }
    
    public String toString() {
        final String value = String.valueOf(this.qk());
        final String value2 = String.valueOf(this.ql());
        String s;
        if (this.qj() != null) {
            s = new String(this.qj());
        }
        else {
            s = "null";
        }
        return new StringBuilder(String.valueOf(value).length() + 4 + String.valueOf(value2).length() + String.valueOf(s).length()).append("(").append(value).append(",").append(value2).append(",").append(s).append(")").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.pT(this, parcel, n);
    }
}
