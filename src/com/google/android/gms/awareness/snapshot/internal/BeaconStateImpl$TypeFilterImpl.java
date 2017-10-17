// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.awareness.snapshot.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.aC;
import java.util.Arrays;
import android.text.TextUtils;
import com.google.android.gms.internal.zzaxw;
import com.google.android.gms.internal.J;
import com.google.android.gms.internal.z;
import android.os.Parcelable$Creator;
import com.google.android.gms.awareness.state.BeaconState$TypeFilter;

public class BeaconStateImpl$TypeFilterImpl extends BeaconState$TypeFilter
{
    public static final Parcelable$Creator CREATOR;
    private final z gd;
    private final int ge;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
    }
    
    BeaconStateImpl$TypeFilterImpl(final int ge, final byte[] array) {
        this.ge = ge;
        z sj = null;
        while (true) {
            try {
                sj = z.sJ(array);
                this.gd = sj;
            }
            catch (zzaxw zzaxw) {
                J.tf("BeaconStateImpl", "Could not deserialize BeaconFence.BeaconTypeFilter");
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
            if (!TextUtils.equals((CharSequence)this.fe(), (CharSequence)beaconStateImpl$TypeFilterImpl.fe()) || !TextUtils.equals((CharSequence)this.ff(), (CharSequence)beaconStateImpl$TypeFilterImpl.ff()) || !Arrays.equals(this.fd(), beaconStateImpl$TypeFilterImpl.fd())) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public byte[] fd() {
        if (this.gd != null && this.gd.pu != null && this.gd.pu.length != 0) {
            return this.gd.pu;
        }
        return null;
    }
    
    public String fe() {
        if (this.gd != null) {
            return this.gd.pr;
        }
        return null;
    }
    
    public String ff() {
        if (this.gd != null) {
            return this.gd.pt;
        }
        return null;
    }
    
    byte[] fg() {
        return aC.uV(this.gd);
    }
    
    int fh() {
        return this.ge;
    }
    
    public int hashCode() {
        int hashCode = 0;
        final Object[] array = { this.fe(), this.ff(), null };
        final byte[] fd = this.fd();
        final int n = 2;
        if (fd != null) {
            hashCode = Arrays.hashCode(this.fd());
        }
        array[n] = hashCode;
        return u.kw(array);
    }
    
    public String toString() {
        final String value = String.valueOf(this.fe());
        final String value2 = String.valueOf(this.ff());
        String s;
        if (this.fd() != null) {
            s = new String(this.fd());
        }
        else {
            s = "null";
        }
        return new StringBuilder(String.valueOf(value).length() + 4 + String.valueOf(value2).length() + String.valueOf(s).length()).append("(").append(value).append(",").append(value2).append(",").append(s).append(")").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.eN(this, parcel, n);
    }
}
