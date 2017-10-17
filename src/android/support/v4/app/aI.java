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
import java.util.ArrayList;
import android.view.ViewGroup;
import android.support.v4.a.t;
import android.view.View;
import android.graphics.Rect;

class ai implements Runnable
{
    final /* synthetic */ e aau;
    final /* synthetic */ Rect aav;
    final /* synthetic */ e aaw;
    final /* synthetic */ boolean aax;
    final /* synthetic */ View aay;
    final /* synthetic */ t aaz;
    
    ai(final e aau, final e aaw, final boolean aax, final t aaz, final View aay, final Rect aav) {
        this.aau = aau;
        this.aaw = aaw;
        this.aax = aax;
        this.aaz = aaz;
        this.aay = aay;
        this.aav = aav;
    }
    
    public void run() {
        any(this.aau, this.aaw, this.aax, this.aaz, false);
        if (this.aay != null) {
            Q.alM(this.aay, this.aav);
        }
    }
}
