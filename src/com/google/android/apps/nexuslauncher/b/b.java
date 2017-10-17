// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.b;

import android.graphics.drawable.AdaptiveIconDrawable;
import com.android.launcher3.Utilities;
import java.util.TimeZone;
import java.util.Calendar;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.Drawable;

public class b
{
    Drawable fb;
    int fc;
    int fd;
    int fe;
    LayerDrawable ff;
    int fg;
    private final Calendar fh;
    int fi;
    int fj;
    float scale;
    
    public b() {
        this.fh = Calendar.getInstance();
    }
    
    public b clone() {
        b b = null;
        if (this.fb == null) {
            return null;
        }
        final b b2 = new b();
        b2.scale = this.scale;
        b2.fg = this.fg;
        b2.fi = this.fi;
        b2.fj = this.fj;
        b2.fc = this.fc;
        b2.fd = this.fd;
        b2.fe = this.fe;
        b2.fb = this.fb.getConstantState().newDrawable();
        b2.ff = b2.dI();
        if (b2.ff != null) {
            b = b2;
        }
        return b;
    }
    
    public boolean dG() {
        final int n = 12;
        final int n2 = 10;
        final boolean b = true;
        final int n3 = -1;
        this.fh.setTimeInMillis(System.currentTimeMillis());
        final int n4 = (this.fh.get(n2) + (12 - this.fc)) % 12;
        final int n5 = (this.fh.get(n) + (60 - this.fd)) % 60;
        final int n6 = (this.fh.get(13) + (60 - this.fe)) % 60;
        boolean b2 = false;
        if (this.fg != n3 && this.ff.getDrawable(this.fg).setLevel(n4 * 60 + this.fh.get(n))) {
            b2 = b;
        }
        if (this.fi != n3 && this.ff.getDrawable(this.fi).setLevel(n5 + this.fh.get(n2) * 60)) {
            b2 = b;
        }
        if (this.fj != n3 && this.ff.getDrawable(this.fj).setLevel(n6 * 10)) {
            b2 = b;
        }
        return b2;
    }
    
    public void dH(final TimeZone timeZone) {
        this.fh.setTimeZone(timeZone);
    }
    
    public LayerDrawable dI() {
        if (this.fb instanceof LayerDrawable) {
            return (LayerDrawable)this.fb;
        }
        if (Utilities.isAtLeastO() && this.fb instanceof AdaptiveIconDrawable) {
            final AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable)this.fb;
            if (adaptiveIconDrawable.getForeground() instanceof LayerDrawable) {
                return (LayerDrawable)adaptiveIconDrawable.getForeground();
            }
        }
        return null;
    }
}
