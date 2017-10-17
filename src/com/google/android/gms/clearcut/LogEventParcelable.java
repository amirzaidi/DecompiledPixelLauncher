// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.clearcut;

import android.os.Parcel;
import java.util.Arrays;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.google.android.gms.internal.h;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class LogEventParcelable extends AbstractSafeParcelable
{
    public static final i CREATOR;
    public final int GH;
    public String[] GI;
    public final h GJ;
    public byte[] GK;
    public int[] GL;
    public final e GM;
    public boolean GN;
    public int[] GO;
    public byte[][] GP;
    public PlayLoggerContext GQ;
    public final e GR;
    
    static {
        CREATOR = new i();
    }
    
    LogEventParcelable(final int gh, final PlayLoggerContext gq, final byte[] gk, final int[] gl, final String[] gi, final int[] go, final byte[][] gp, final boolean gn) {
        this.GH = gh;
        this.GQ = gq;
        this.GK = gk;
        this.GL = gl;
        this.GI = gi;
        this.GJ = null;
        this.GR = null;
        this.GM = null;
        this.GO = go;
        this.GP = gp;
        this.GN = gn;
    }
    
    public LogEventParcelable(final PlayLoggerContext gq, final h gj, final e gr, final e gm, final int[] gl, final String[] gi, final int[] go, final byte[][] gp, final boolean gn) {
        this.GH = 1;
        this.GQ = gq;
        this.GJ = gj;
        this.GR = gr;
        this.GM = gm;
        this.GL = gl;
        this.GI = gi;
        this.GO = go;
        this.GP = gp;
        this.GN = gn;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (!(o instanceof LogEventParcelable)) {
            return false;
        }
        final LogEventParcelable logEventParcelable = (LogEventParcelable)o;
        if (this.GH != logEventParcelable.GH || !u.hH(this.GQ, logEventParcelable.GQ) || !Arrays.equals(this.GK, logEventParcelable.GK) || !Arrays.equals(this.GL, logEventParcelable.GL) || !Arrays.equals(this.GI, logEventParcelable.GI) || !u.hH(this.GJ, logEventParcelable.GJ) || !u.hH(this.GR, logEventParcelable.GR) || !u.hH(this.GM, logEventParcelable.GM) || !Arrays.equals(this.GO, logEventParcelable.GO) || !Arrays.deepEquals(this.GP, logEventParcelable.GP) || this.GN != logEventParcelable.GN) {
            b = false;
        }
        return b;
    }
    
    public int hashCode() {
        return u.hI(this.GH, this.GQ, this.GK, this.GL, this.GI, this.GJ, this.GR, this.GM, this.GO, this.GP, this.GN);
    }
    
    public String toString() {
        String s = null;
        final StringBuilder append = new StringBuilder("LogEventParcelable[").append(this.GH).append(", ").append(this.GQ).append(", ").append("LogEventBytes: ");
        if (this.GK != null) {
            s = new String(this.GK);
        }
        return append.append(s).append(", ").append("TestCodes: ").append(Arrays.toString(this.GL)).append(", ").append("MendelPackages: ").append(Arrays.toString(this.GI)).append(", ").append("LogEvent: ").append(this.GJ).append(", ").append("ExtensionProducer: ").append(this.GR).append(", ").append("VeProducer: ").append(this.GM).append(", ").append("ExperimentIDs: ").append(Arrays.toString(this.GO)).append(", ").append("ExperimentTokens: ").append(Arrays.toString(this.GP)).append(", ").append("AddPhenotypeExperimentTokens: ").append(this.GN).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.LL(this, parcel, n);
    }
}
