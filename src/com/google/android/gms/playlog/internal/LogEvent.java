// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import java.util.Iterator;
import android.os.Bundle;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class LogEvent extends AbstractSafeParcelable
{
    public static final b CREATOR;
    public final int IP;
    public final long IQ;
    public final long IR;
    public final byte[] IS;
    public final Bundle IT;
    public final String IU;
    
    static {
        CREATOR = new b();
    }
    
    LogEvent(final int ip, final long iq, final long ir, final String iu, final byte[] is, final Bundle it) {
        this.IP = ip;
        this.IQ = iq;
        this.IR = ir;
        this.IU = iu;
        this.IS = is;
        this.IT = it;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("tag=").append(this.IU).append(",");
        sb.append("eventTime=").append(this.IQ).append(",");
        sb.append("eventUptime=").append(this.IR).append(",");
        if (this.IT != null && !this.IT.isEmpty()) {
            sb.append("keyValues=");
            for (final String s : this.IT.keySet()) {
                sb.append("(").append(s).append(",");
                sb.append(this.IT.getString(s)).append(")");
                sb.append(" ");
            }
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.Pb(this, parcel, n);
    }
}
