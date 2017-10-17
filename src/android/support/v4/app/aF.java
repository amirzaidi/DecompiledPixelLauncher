// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Build$VERSION;
import android.graphics.Rect;
import android.util.SparseArray;
import android.support.v4.view.f;
import java.util.List;
import java.util.Map;
import android.view.ViewGroup;
import android.support.v4.a.t;
import java.util.Collection;
import android.view.View;
import java.util.ArrayList;

class af implements Runnable
{
    final /* synthetic */ e aak;
    final /* synthetic */ ArrayList aal;
    final /* synthetic */ Object aam;
    final /* synthetic */ Object aan;
    final /* synthetic */ ArrayList aao;
    final /* synthetic */ View aap;
    final /* synthetic */ ArrayList aaq;
    
    af(final Object aan, final View aap, final e aak, final ArrayList aaq, final ArrayList aal, final ArrayList aao, final Object aam) {
        this.aan = aan;
        this.aap = aap;
        this.aak = aak;
        this.aaq = aaq;
        this.aal = aal;
        this.aao = aao;
        this.aam = aam;
    }
    
    public void run() {
        if (this.aan != null) {
            Q.alx(this.aan, this.aap);
            this.aal.addAll(anE(this.aan, this.aak, this.aaq, this.aap));
        }
        if (this.aao != null) {
            if (this.aam != null) {
                final ArrayList<View> list = new ArrayList<View>();
                list.add(this.aap);
                Q.alE(this.aam, this.aao, list);
            }
            this.aao.clear();
            this.aao.add(this.aap);
        }
    }
}
