// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.Iterator;
import java.util.ArrayList;

class ae implements Runnable
{
    final /* synthetic */ Z To;
    final /* synthetic */ ArrayList Tp;
    
    ae(final Z to, final ArrayList tp) {
        this.To = to;
        this.Tp = tp;
    }
    
    public void run() {
        final Iterator<ai> iterator = this.Tp.iterator();
        while (iterator.hasNext()) {
            this.To.abC(iterator.next());
        }
        this.Tp.clear();
        this.To.SH.remove(this.Tp);
    }
}
