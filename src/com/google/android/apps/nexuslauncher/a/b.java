// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.a;

import android.graphics.drawable.AdaptiveIconDrawable;
import com.android.launcher3.Utilities;
import java.util.TimeZone;
import java.util.Calendar;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.Drawable;

public class b
{
    Drawable ca;
    int cb;
    int cc;
    int cd;
    LayerDrawable ce;
    int cf;
    private final Calendar cg;
    int ch;
    int ci;
    float scale;
    
    public b() {
        this.cg = Calendar.getInstance();
    }
    
    public boolean bJ() {
        final int n = 12;
        final int n2 = 10;
        final boolean b = true;
        final int n3 = -1;
        this.cg.setTimeInMillis(System.currentTimeMillis());
        final int n4 = (this.cg.get(n2) + (12 - this.cb)) % 12;
        final int n5 = (this.cg.get(n) + (60 - this.cc)) % 60;
        final int n6 = (this.cg.get(13) + (60 - this.cd)) % 60;
        boolean b2 = false;
        if (this.cf != n3 && this.ce.getDrawable(this.cf).setLevel(n4 * 60 + this.cg.get(n))) {
            b2 = b;
        }
        if (this.ch != n3 && this.ce.getDrawable(this.ch).setLevel(n5 + this.cg.get(n2) * 60)) {
            b2 = b;
        }
        if (this.ci != n3 && this.ce.getDrawable(this.ci).setLevel(n6 * 10)) {
            b2 = b;
        }
        return b2;
    }
    
    public void bK(final TimeZone timeZone) {
        this.cg.setTimeZone(timeZone);
    }
    
    public LayerDrawable bL() {
        if (this.ca instanceof LayerDrawable) {
            return (LayerDrawable)this.ca;
        }
        if (Utilities.ATLEAST_OREO && this.ca instanceof AdaptiveIconDrawable) {
            final AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable)this.ca;
            if (adaptiveIconDrawable.getForeground() instanceof LayerDrawable) {
                return (LayerDrawable)adaptiveIconDrawable.getForeground();
            }
        }
        return null;
    }
    
    public b clone() {
        b b = null;
        if (this.ca == null) {
            return null;
        }
        final b b2 = new b();
        b2.scale = this.scale;
        b2.cf = this.cf;
        b2.ch = this.ch;
        b2.ci = this.ci;
        b2.cb = this.cb;
        b2.cc = this.cc;
        b2.cd = this.cd;
        b2.ca = this.ca.getConstantState().newDrawable();
        b2.ce = b2.bL();
        if (b2.ce != null) {
            b = b2;
        }
        return b;
    }
}
