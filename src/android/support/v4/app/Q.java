// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.support.v4.view.f;
import java.util.List;
import java.util.Collection;
import java.util.Map;
import android.view.ViewGroup;
import android.util.SparseArray;
import android.os.Build$VERSION;
import android.view.View;
import android.support.v4.a.t;
import java.util.ArrayList;
import android.graphics.Rect;

class q implements Runnable
{
    final /* synthetic */ g YZ;
    final /* synthetic */ g Za;
    final /* synthetic */ Rect Zb;
    final /* synthetic */ Object Zc;
    final /* synthetic */ ArrayList Zd;
    final /* synthetic */ t Ze;
    final /* synthetic */ boolean Zf;
    final /* synthetic */ Object Zg;
    final /* synthetic */ n Zh;
    final /* synthetic */ ArrayList Zi;
    final /* synthetic */ View Zj;
    
    q(final t ze, final Object zg, final n zh, final ArrayList zd, final View zj, final g yz, final g za, final boolean zf, final ArrayList zi, final Object zc, final Rect zb) {
        this.Ze = ze;
        this.Zg = zg;
        this.Zh = zh;
        this.Zd = zd;
        this.Zj = zj;
        this.YZ = yz;
        this.Za = za;
        this.Zf = zf;
        this.Zi = zi;
        this.Zc = zc;
        this.Zb = zb;
    }
    
    public void run() {
        final t aow = aoK(this.Ze, this.Zg, this.Zh);
        if (aow != null) {
            this.Zd.addAll(aow.values());
            this.Zd.add(this.Zj);
        }
        aoz(this.YZ, this.Za, this.Zf, aow, false);
        if (this.Zg != null) {
            R.amU(this.Zg, this.Zi, this.Zd);
            final View aoT = aoy(aow, this.Zh, this.Zc, this.Zf);
            if (aoT != null) {
                R.anb(aoT, this.Zb);
            }
        }
    }
}
