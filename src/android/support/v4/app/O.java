// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Build$VERSION;
import android.util.SparseArray;
import android.support.v4.view.f;
import java.util.List;
import java.util.Collection;
import java.util.Map;
import android.view.ViewGroup;
import android.view.View;
import android.support.v4.a.t;
import java.util.ArrayList;
import android.graphics.Rect;

class o implements Runnable
{
    final /* synthetic */ e Xp;
    final /* synthetic */ e Xq;
    final /* synthetic */ Rect Xr;
    final /* synthetic */ Object Xs;
    final /* synthetic */ ArrayList Xt;
    final /* synthetic */ t Xu;
    final /* synthetic */ boolean Xv;
    final /* synthetic */ Object Xw;
    final /* synthetic */ l Xx;
    final /* synthetic */ ArrayList Xy;
    final /* synthetic */ View Xz;
    
    o(final t xu, final Object xw, final l xx, final ArrayList xt, final View xz, final e xp, final e xq, final boolean xv, final ArrayList xy, final Object xs, final Rect xr) {
        this.Xu = xu;
        this.Xw = xw;
        this.Xx = xx;
        this.Xt = xt;
        this.Xz = xz;
        this.Xp = xp;
        this.Xq = xq;
        this.Xv = xv;
        this.Xy = xy;
        this.Xs = xs;
        this.Xr = xr;
    }
    
    public void run() {
        final t anv = anJ(this.Xu, this.Xw, this.Xx);
        if (anv != null) {
            this.Xt.addAll(anv.values());
            this.Xt.add(this.Xz);
        }
        any(this.Xp, this.Xq, this.Xv, anv, false);
        if (this.Xw != null) {
            Q.alF(this.Xw, this.Xy, this.Xt);
            final View anS = anx(anv, this.Xx, this.Xs, this.Xv);
            if (anS != null) {
                Q.alM(anS, this.Xr);
            }
        }
    }
}
