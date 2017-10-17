// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.b;

import android.graphics.Rect;
import android.graphics.Canvas;
import java.util.TimeZone;
import android.os.SystemClock;
import android.graphics.Bitmap;
import com.android.launcher3.FastBitmapDrawable;

public class a extends FastBitmapDrawable implements Runnable
{
    private b fa;
    
    public a(final Bitmap bitmap, final b fa) {
        super(bitmap);
        this.fa = fa;
    }
    
    private void dD() {
        final long n = 1000L;
        this.unscheduleSelf((Runnable)this);
        final long uptimeMillis = SystemClock.uptimeMillis();
        this.scheduleSelf((Runnable)this, uptimeMillis - uptimeMillis % n + n);
    }
    
    public void dE(final b fa) {
        this.fa = fa;
        if (this.fa != null) {
            this.fa.fb.setBounds(this.getBounds());
        }
        this.invalidateSelf();
    }
    
    public void dF(final TimeZone timeZone) {
        if (this.fa != null) {
            this.fa.dH(timeZone);
            this.invalidateSelf();
        }
    }
    
    public void draw(final Canvas canvas) {
        super.draw(canvas);
        if (this.fa == null) {
            return;
        }
        this.fa.dG();
        final Rect bounds = this.getBounds();
        canvas.scale(this.fa.scale, this.fa.scale, bounds.exactCenterX(), bounds.exactCenterY());
        this.fa.fb.draw(canvas);
        this.dD();
    }
    
    protected void onBoundsChange(final Rect bounds) {
        super.onBoundsChange(bounds);
        if (this.fa != null) {
            this.fa.fb.setBounds(bounds);
        }
    }
    
    public void run() {
        if (this.fa.dG()) {
            this.invalidateSelf();
        }
        else {
            this.dD();
        }
    }
}
