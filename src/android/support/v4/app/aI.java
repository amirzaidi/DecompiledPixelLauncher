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
import java.util.ArrayList;
import android.support.v4.a.t;
import android.view.View;
import android.graphics.Rect;

class ai implements Runnable
{
    final /* synthetic */ g abZ;
    final /* synthetic */ Rect aca;
    final /* synthetic */ g acb;
    final /* synthetic */ boolean acc;
    final /* synthetic */ View acd;
    final /* synthetic */ t ace;
    
    ai(final g abZ, final g acb, final boolean acc, final t ace, final View acd, final Rect aca) {
        this.abZ = abZ;
        this.acb = acb;
        this.acc = acc;
        this.ace = ace;
        this.acd = acd;
        this.aca = aca;
    }
    
    public void run() {
        aoz(this.abZ, this.acb, this.acc, this.ace, false);
        if (this.acd != null) {
            R.anb(this.acd, this.aca);
        }
    }
}
