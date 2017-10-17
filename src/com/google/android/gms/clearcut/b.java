// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.clearcut;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import java.util.Iterator;
import com.google.android.gms.internal.av;
import com.google.android.gms.common.a.m;
import com.google.android.gms.internal.az;
import android.content.Context;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.api.l;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.google.android.gms.common.api.B;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import com.google.android.gms.internal.h;
import java.util.ArrayList;

public class b
{
    private ArrayList GA;
    private ArrayList GB;
    private boolean GC;
    private String GD;
    private e GE;
    private final e Gq;
    final /* synthetic */ a Gr;
    private String Gs;
    private final h Gt;
    private boolean Gu;
    private String Gv;
    private ArrayList Gw;
    private ArrayList Gx;
    private int Gy;
    private int Gz;
    
    private b(final a a, final byte[] array) {
        this(a, array, (e)null);
    }
    
    private b(final a gr, final byte[] nw, final e gq) {
        this.Gr = gr;
        this.Gz = this.Gr.Gl;
        this.Gv = this.Gr.Gb;
        this.Gs = this.Gr.Ga;
        this.GD = this.Gr.Gn;
        this.Gy = this.Gr.Gj;
        this.GA = null;
        this.Gw = null;
        this.Gx = null;
        this.GB = null;
        this.GC = true;
        this.Gt = new h();
        this.Gu = false;
        this.Gs = gr.Ga;
        this.GD = gr.Gn;
        this.Gt.oa = gr.Gk.js();
        this.Gt.od = gr.Gk.jt();
        this.Gt.nQ = gr.Gg.LJ(gr.mContext);
        this.Gt.ok = gr.Gp.LH(this.Gt.oa);
        if (nw != null) {
            this.Gt.nW = nw;
        }
        this.Gq = gq;
    }
    
    public c LF() {
        if (this.Gu) {
            throw new IllegalStateException("do not reuse LogEventBuilder");
        }
        this.Gu = true;
        final PlayLoggerContext gq = this.LG().GQ;
        if (!this.Gr.Ge.un(gq.IH, gq.IL)) {
            return B.eH(Status.dU);
        }
        return this.Gr.Go.uz(this.Gr.mContext, this.LG());
    }
    
    public LogEventParcelable LG() {
        return new LogEventParcelable(new PlayLoggerContext(this.Gr.mPackageName, this.Gr.Gm, this.Gz, this.Gv, this.Gs, this.GD, this.Gr.Gd, this.Gy), this.Gt, this.Gq, this.GE, Lu(this.GA), Lj(this.Gw), Lu(this.Gx), Lq(this.GB), this.GC);
    }
}
