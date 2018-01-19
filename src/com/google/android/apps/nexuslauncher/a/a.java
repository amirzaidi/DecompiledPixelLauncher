// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.a;

import android.graphics.Rect;
import android.graphics.Canvas;
import java.util.TimeZone;
import android.os.SystemClock;
import android.graphics.Bitmap;
import com.android.launcher3.FastBitmapDrawable;

public class a extends FastBitmapDrawable implements Runnable
{
    private b bZ;
    
    public a(final Bitmap bitmap, final b bz) {
        super(bitmap);
        this.bZ = bz;
    }
    
    private void bG() {
        final long n = 1000L;
        this.unscheduleSelf((Runnable)this);
        final long uptimeMillis = SystemClock.uptimeMillis();
        this.scheduleSelf((Runnable)this, uptimeMillis - uptimeMillis % n + n);
    }
    
    public void bH(final b bz) {
        this.bZ = bz;
        if (this.bZ != null) {
            this.bZ.ca.setBounds(this.getBounds());
        }
        this.invalidateSelf();
    }
    
    public void bI(final TimeZone timeZone) {
        if (this.bZ != null) {
            this.bZ.bK(timeZone);
            this.invalidateSelf();
        }
    }
    
    public void draw(final Canvas canvas) {
        super.draw(canvas);
        if (this.bZ == null) {
            return;
        }
        this.bZ.bJ();
        final Rect bounds = this.getBounds();
        canvas.scale(this.bZ.scale, this.bZ.scale, bounds.exactCenterX(), bounds.exactCenterY());
        this.bZ.ca.draw(canvas);
        this.bG();
    }
    
    protected void onBoundsChange(final Rect bounds) {
        super.onBoundsChange(bounds);
        if (this.bZ != null) {
            this.bZ.ca.setBounds(bounds);
        }
    }
    
    public void run() {
        if (this.bZ.bJ()) {
            this.invalidateSelf();
        }
        else {
            this.bG();
        }
    }
}
