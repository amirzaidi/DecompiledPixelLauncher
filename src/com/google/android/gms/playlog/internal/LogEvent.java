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
    public final int Ku;
    public final long Kv;
    public final long Kw;
    public final byte[] Kx;
    public final Bundle Ky;
    public final String Kz;
    
    static {
        CREATOR = new b();
    }
    
    LogEvent(final int ku, final long kv, final long kw, final String kz, final byte[] kx, final Bundle ky) {
        this.Ku = ku;
        this.Kv = kv;
        this.Kw = kw;
        this.Kz = kz;
        this.Kx = kx;
        this.Ky = ky;
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("tag=").append(this.Kz).append(",");
        sb.append("eventTime=").append(this.Kv).append(",");
        sb.append("eventUptime=").append(this.Kw).append(",");
        if (this.Ky != null && !this.Ky.isEmpty()) {
            sb.append("keyValues=");
            for (final String s : this.Ky.keySet()) {
                sb.append("(").append(s).append(",");
                sb.append(this.Ky.getString(s)).append(")");
                sb.append(" ");
            }
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.PU(this, parcel, n);
    }
}
