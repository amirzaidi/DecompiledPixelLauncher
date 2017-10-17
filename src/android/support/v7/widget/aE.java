// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.Iterator;
import java.util.ArrayList;

class ae implements Runnable
{
    final /* synthetic */ Z RF;
    final /* synthetic */ ArrayList RG;
    
    ae(final Z rf, final ArrayList rg) {
        this.RF = rf;
        this.RG = rg;
    }
    
    public void run() {
        final Iterator<ai> iterator = this.RG.iterator();
        while (iterator.hasNext()) {
            this.RF.aaA(iterator.next());
        }
        this.RG.clear();
        this.RF.QY.remove(this.RG);
    }
}
