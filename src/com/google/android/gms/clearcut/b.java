// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.clearcut;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import java.util.Iterator;
import com.google.android.gms.internal.aq;
import com.google.android.gms.common.a.m;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.at;
import android.content.Context;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.j;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.google.android.gms.common.api.B;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import java.util.ArrayList;
import com.google.android.gms.internal.h;

public class b
{
    private final e HV;
    final /* synthetic */ a HW;
    private String HX;
    private final h HY;
    private boolean HZ;
    private String Ia;
    private ArrayList Ib;
    private ArrayList Ic;
    private int Id;
    private int Ie;
    private ArrayList If;
    private ArrayList Ig;
    private boolean Ih;
    private String Ii;
    private e Ij;
    
    private b(final a a, final byte[] array) {
        this(a, array, (e)null);
    }
    
    private b(final a hw, final byte[] oy, final e hv) {
        this.HW = hw;
        this.Ie = this.HW.HQ;
        this.Ia = this.HW.HG;
        this.HX = this.HW.HF;
        this.Ii = this.HW.HS;
        this.Id = this.HW.HO;
        this.If = null;
        this.Ib = null;
        this.Ic = null;
        this.Ig = null;
        this.Ih = true;
        this.HY = new h();
        this.HZ = false;
        this.HX = hw.HF;
        this.Ii = hw.HS;
        this.HY.oC = hw.HP.mg();
        this.HY.oF = hw.HP.mh();
        this.HY.os = hw.HL.MC(hw.mContext);
        this.HY.oM = hw.HU.MA(this.HY.oC);
        if (oy != null) {
            this.HY.oy = oy;
        }
        this.HV = hv;
    }
    
    public f My() {
        if (this.HZ) {
            throw new IllegalStateException("do not reuse LogEventBuilder");
        }
        this.HZ = true;
        final PlayLoggerContext iv = this.Mz().Iv;
        if (!this.HW.HJ.um(iv.Km, iv.Kq)) {
            return B.hv(Status.hn);
        }
        return this.HW.HT.uy(this.HW.mContext, this.Mz());
    }
    
    public LogEventParcelable Mz() {
        return new LogEventParcelable(new PlayLoggerContext(this.HW.mPackageName, this.HW.HR, this.Ie, this.Ia, this.HX, this.Ii, this.HW.HI, this.Id), this.HY, this.HV, this.Ij, Mn(this.If), Mc(this.Ib), Mn(this.Ic), Mj(this.Ig), this.Ih);
    }
}
