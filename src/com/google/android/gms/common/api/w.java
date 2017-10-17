// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import android.util.Log;

public abstract class w implements a
{
    public final void C(final b b) {
        final Status dr = b.dr();
        if (!dr.dF()) {
            this.ex(dr);
            if (b instanceof y) {
                try {
                    ((y)b).eC();
                }
                catch (RuntimeException ex) {
                    final String value = String.valueOf(b);
                    Log.w("ResultCallbacks", new StringBuilder(String.valueOf(value).length() + 18).append("Unable to release ").append(value).toString(), (Throwable)ex);
                }
            }
        }
        else {
            this.ey(b);
        }
    }
    
    public abstract void ex(final Status p0);
    
    public abstract void ey(final b p0);
}
