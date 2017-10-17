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
    public final int IG;
    public final String IH;
    public final int II;
    public final String IJ;
    public final boolean IK;
    public final int IL;
    public final String IM;
    public final boolean IN;
    public final int IO;
    public final String packageName;
    
    static {
        CREATOR = new a();
    }
    
    public PlayLoggerContext(final int ig, final String packageName, final int io, final int il, final String ij, final String im, final boolean ik, final String ih, final boolean in, final int ii) {
        this.IG = ig;
        this.packageName = packageName;
        this.IO = io;
        this.IL = il;
        this.IJ = ij;
        this.IM = im;
        this.IK = ik;
        this.IH = ih;
        this.IN = in;
        this.II = ii;
    }
    
    public PlayLoggerContext(final String s, final int io, final int il, final String ih, final String ij, final String im, final boolean in, final int ii) {
        final boolean ig = true;
        this.IG = (ig ? 1 : 0);
        this.packageName = (String)l.ht(s);
        this.IO = io;
        this.IL = il;
        this.IH = ih;
        this.IJ = ij;
        this.IM = im;
        this.IK = (!in && ig);
        this.IN = in;
        this.II = ii;
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
        if (this.IG != playLoggerContext.IG || !this.packageName.equals(playLoggerContext.packageName) || this.IO != playLoggerContext.IO || this.IL != playLoggerContext.IL || !u.hH(this.IH, playLoggerContext.IH) || !u.hH(this.IJ, playLoggerContext.IJ) || !u.hH(this.IM, playLoggerContext.IM) || this.IK != playLoggerContext.IK || this.IN != playLoggerContext.IN || this.II != playLoggerContext.II) {
            b = false;
        }
        return b;
    }
    
    public int hashCode() {
        return u.hI(this.IG, this.packageName, this.IO, this.IL, this.IH, this.IJ, this.IM, this.IK, this.IN, this.II);
    }
    
    public String toString() {
        final char c = ',';
        final StringBuilder sb = new StringBuilder();
        sb.append("PlayLoggerContext[");
        sb.append("versionCode=").append(this.IG).append(c);
        sb.append("package=").append(this.packageName).append(c);
        sb.append("packageVersionCode=").append(this.IO).append(c);
        sb.append("logSource=").append(this.IL).append(c);
        sb.append("logSourceName=").append(this.IH).append(c);
        sb.append("uploadAccount=").append(this.IJ).append(c);
        sb.append("loggingId=").append(this.IM).append(c);
        sb.append("logAndroidId=").append(this.IK).append(c);
        sb.append("isAnonymous=").append(this.IN).append(c);
        sb.append("qosTier=").append(this.II);
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.OZ(this, parcel, n);
    }
}
