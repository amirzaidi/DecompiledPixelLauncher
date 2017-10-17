// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import com.google.android.gms.common.internal.u;
import java.lang.ref.WeakReference;

public final class g extends i
{
    private WeakReference mw;
    
    public boolean equals(final Object o) {
        final boolean b = true;
        if (!(o instanceof g)) {
            return false;
        }
        if (this != o) {
            final g g = (g)o;
            final e e = (e)this.mw.get();
            final e e2 = (e)g.mw.get();
            return e2 != null && e != null && u.kv(e2, e) && u.kv(g.mG, this.mG) && b;
        }
        return b;
    }
    
    public int hashCode() {
        return u.kw(this.mG);
    }
    
    protected void pw(final Drawable drawable, final boolean b, final boolean b2, final boolean b3) {
        if (!b2) {
            final e e = (e)this.mw.get();
            if (e != null) {
                e.pu(this.mG.mt, drawable, b3);
            }
        }
    }
}
