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
    public final int Im;
    public String[] In;
    public final h Io;
    public byte[] Ip;
    public int[] Iq;
    public final e Ir;
    public boolean Is;
    public int[] It;
    public byte[][] Iu;
    public PlayLoggerContext Iv;
    public final e Iw;
    
    static {
        CREATOR = new i();
    }
    
    LogEventParcelable(final int im, final PlayLoggerContext iv, final byte[] ip, final int[] iq, final String[] in, final int[] it, final byte[][] iu, final boolean is) {
        this.Im = im;
        this.Iv = iv;
        this.Ip = ip;
        this.Iq = iq;
        this.In = in;
        this.Io = null;
        this.Iw = null;
        this.Ir = null;
        this.It = it;
        this.Iu = iu;
        this.Is = is;
    }
    
    public LogEventParcelable(final PlayLoggerContext iv, final h io, final e iw, final e ir, final int[] iq, final String[] in, final int[] it, final byte[][] iu, final boolean is) {
        this.Im = 1;
        this.Iv = iv;
        this.Io = io;
        this.Iw = iw;
        this.Ir = ir;
        this.Iq = iq;
        this.In = in;
        this.It = it;
        this.Iu = iu;
        this.Is = is;
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
        if (this.Im != logEventParcelable.Im || !u.kv(this.Iv, logEventParcelable.Iv) || !Arrays.equals(this.Ip, logEventParcelable.Ip) || !Arrays.equals(this.Iq, logEventParcelable.Iq) || !Arrays.equals(this.In, logEventParcelable.In) || !u.kv(this.Io, logEventParcelable.Io) || !u.kv(this.Iw, logEventParcelable.Iw) || !u.kv(this.Ir, logEventParcelable.Ir) || !Arrays.equals(this.It, logEventParcelable.It) || !Arrays.deepEquals(this.Iu, logEventParcelable.Iu) || this.Is != logEventParcelable.Is) {
            b = false;
        }
        return b;
    }
    
    public int hashCode() {
        return u.kw(this.Im, this.Iv, this.Ip, this.Iq, this.In, this.Io, this.Iw, this.Ir, this.It, this.Iu, this.Is);
    }
    
    public String toString() {
        String s = null;
        final StringBuilder append = new StringBuilder("LogEventParcelable[").append(this.Im).append(", ").append(this.Iv).append(", ").append("LogEventBytes: ");
        if (this.Ip != null) {
            s = new String(this.Ip);
        }
        return append.append(s).append(", ").append("TestCodes: ").append(Arrays.toString(this.Iq)).append(", ").append("MendelPackages: ").append(Arrays.toString(this.In)).append(", ").append("LogEvent: ").append(this.Io).append(", ").append("ExtensionProducer: ").append(this.Iw).append(", ").append("VeProducer: ").append(this.Ir).append(", ").append("ExperimentIDs: ").append(Arrays.toString(this.It)).append(", ").append("ExperimentTokens: ").append(Arrays.toString(this.Iu)).append(", ").append("AddPhenotypeExperimentTokens: ").append(this.Is).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        i.ME(this, parcel, n);
    }
}
