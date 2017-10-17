// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import android.util.Log;

public abstract class w implements v
{
    public final void hk(final m m) {
        final Status gv = m.gV();
        if (!gv.gY()) {
            this.hl(gv);
            if (m instanceof y) {
                try {
                    ((y)m).hq();
                }
                catch (RuntimeException ex) {
                    final String value = String.valueOf(m);
                    Log.w("ResultCallbacks", new StringBuilder(String.valueOf(value).length() + 18).append("Unable to release ").append(value).toString(), (Throwable)ex);
                }
            }
        }
        else {
            this.hm(m);
        }
    }
    
    public abstract void hl(final Status p0);
    
    public abstract void hm(final m p0);
}
