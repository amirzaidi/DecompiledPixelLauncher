// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import com.google.android.gms.common.internal.u;
import java.lang.ref.WeakReference;

public final class g extends i
{
    private WeakReference jE;
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (!(o instanceof g)) {
            return false;
        }
        if (this != o) {
            final g g = (g)o;
            final e e = (e)this.jE.get();
            final e e2 = (e)g.jE.get();
            return e2 != null && e != null && u.hH(e2, e) && u.hH(g.jO, this.jO) && b;
        }
        return b;
    }
    
    public int hashCode() {
        return u.hI(this.jO);
    }
    
    protected void mI(final Drawable drawable, final boolean b, final boolean b2, final boolean b3) {
        if (!b2) {
            final e e = (e)this.jE.get();
            if (e != null) {
                e.mG(this.jO.jB, drawable, b3);
            }
        }
    }
}
