// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class PlayLoggerContext extends AbstractSafeParcelable
{
    public static final a CREATOR;
    public final int Kl;
    public final String Km;
    public final int Kn;
    public final String Ko;
    public final boolean Kp;
    public final int Kq;
    public final String Kr;
    public final boolean Ks;
    public final int Kt;
    public final String packageName;
    
    static {
        CREATOR = new a();
    }
    
    public PlayLoggerContext(final int kl, final String packageName, final int kt, final int kq, final String ko, final String kr, final boolean kp, final String km, final boolean ks, final int kn) {
        this.Kl = kl;
        this.packageName = packageName;
        this.Kt = kt;
        this.Kq = kq;
        this.Ko = ko;
        this.Kr = kr;
        this.Kp = kp;
        this.Km = km;
        this.Ks = ks;
        this.Kn = kn;
    }
    
    public PlayLoggerContext(final String s, final int kt, final int kq, final String km, final String ko, final String kr, final boolean ks, final int kn) {
        final boolean kl = true;
        this.Kl = (kl ? 1 : 0);
        this.packageName = (String)l.kh(s);
        this.Kt = kt;
        this.Kq = kq;
        this.Km = km;
        this.Ko = ko;
        this.Kr = kr;
        this.Kp = (!ks && kl);
        this.Ks = ks;
        this.Kn = kn;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (!(o instanceof PlayLoggerContext)) {
            return false;
        }
        final PlayLoggerContext playLoggerContext = (PlayLoggerContext)o;
        if (this.Kl != playLoggerContext.Kl || !this.packageName.equals(playLoggerContext.packageName) || this.Kt != playLoggerContext.Kt || this.Kq != playLoggerContext.Kq || !u.kv(this.Km, playLoggerContext.Km) || !u.kv(this.Ko, playLoggerContext.Ko) || !u.kv(this.Kr, playLoggerContext.Kr) || this.Kp != playLoggerContext.Kp || this.Ks != playLoggerContext.Ks || this.Kn != playLoggerContext.Kn) {
            b = false;
        }
        return b;
    }
    
    public int hashCode() {
        return u.kw(this.Kl, this.packageName, this.Kt, this.Kq, this.Km, this.Ko, this.Kr, this.Kp, this.Ks, this.Kn);
    }
    
    public String toString() {
        final char c = ',';
        final StringBuilder sb = new StringBuilder();
        sb.append("PlayLoggerContext[");
        sb.append("versionCode=").append(this.Kl).append(c);
        sb.append("package=").append(this.packageName).append(c);
        sb.append("packageVersionCode=").append(this.Kt).append(c);
        sb.append("logSource=").append(this.Kq).append(c);
        sb.append("logSourceName=").append(this.Km).append(c);
        sb.append("uploadAccount=").append(this.Ko).append(c);
        sb.append("loggingId=").append(this.Kr).append(c);
        sb.append("logAndroidId=").append(this.Kp).append(c);
        sb.append("isAnonymous=").append(this.Ks).append(c);
        sb.append("qosTier=").append(this.Kn);
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.PS(this, parcel, n);
    }
}
