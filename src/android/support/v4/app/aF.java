// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.graphics.Rect;
import android.support.v4.view.f;
import java.util.List;
import java.util.Map;
import android.view.ViewGroup;
import android.support.v4.a.t;
import android.util.SparseArray;
import android.os.Build$VERSION;
import java.util.Collection;
import android.view.View;
import java.util.ArrayList;

class af implements Runnable
{
    final /* synthetic */ g abP;
    final /* synthetic */ ArrayList abQ;
    final /* synthetic */ Object abR;
    final /* synthetic */ Object abS;
    final /* synthetic */ ArrayList abT;
    final /* synthetic */ View abU;
    final /* synthetic */ ArrayList abV;
    
    af(final Object abS, final View abU, final g abP, final ArrayList abV, final ArrayList abQ, final ArrayList abT, final Object abR) {
        this.abS = abS;
        this.abU = abU;
        this.abP = abP;
        this.abV = abV;
        this.abQ = abQ;
        this.abT = abT;
        this.abR = abR;
    }
    
    public void run() {
        if (this.abS != null) {
            R.amM(this.abS, this.abU);
            this.abQ.addAll(aoF(this.abS, this.abP, this.abV, this.abU));
        }
        if (this.abT != null) {
            if (this.abR != null) {
                final ArrayList<View> list = new ArrayList<View>();
                list.add(this.abU);
                R.amT(this.abR, this.abT, list);
            }
            this.abT.clear();
            this.abT.add(this.abU);
        }
    }
}
