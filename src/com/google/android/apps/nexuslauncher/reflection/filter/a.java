// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.filter;

import android.content.ComponentName;
import com.google.research.reflection.predictor.f;
import java.util.List;
import android.content.Context;

public class a
{
    private Context mContext;
    private int q;
    
    public a(final Context mContext) {
        this.mContext = mContext;
    }
    
    public void G(final List list) {
        this.H(list, null);
    }
    
    public void H(final List list, final List list2) {
        final String ec = com.google.android.apps.nexuslauncher.instantapps.a.eC(this.mContext);
        if (ec != null) {
            final int size = list.size();
            int n;
            if (this.q > 0) {
                n = this.q - 1;
            }
            else {
                n = 4;
            }
            final int min = Math.min(size, n);
            float pc;
            if (min < list.size()) {
                pc = list.get(min).Pc;
            }
            else {
                pc = 0.0f;
            }
            list.add(min, new f(new ComponentName(ec, "@instantapp").flattenToString(), pc));
        }
    }
    
    public void I(final int q) {
        this.q = q;
    }
}
