// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.a;

import android.graphics.drawable.Drawable;
import android.graphics.Rect;
import android.os.SystemClock;
import com.android.launcher3.BubbleTextView;
import android.graphics.Canvas;
import android.graphics.Bitmap;
import java.util.Calendar;
import com.android.launcher3.FastBitmapDrawable;

public class b extends FastBitmapDrawable implements Runnable
{
    private final a dr;
    private final Calendar ds;
    
    public b(final Bitmap bitmap, final a dr) {
        super(bitmap);
        this.ds = Calendar.getInstance();
        this.dr = dr;
    }
    
    public void draw(final Canvas canvas) {
        final long n = 100;
        if (!(this.getCallback() instanceof BubbleTextView)) {
            this.drawInternal(canvas);
            return;
        }
        if (!this.dr.cO()) {
            super.draw(canvas);
            return;
        }
        this.ds.setTimeInMillis(System.currentTimeMillis());
        final Rect bounds = this.getBounds();
        final Drawable cm = this.dr.cM(this.ds);
        cm.setBounds(bounds);
        final float cn = this.dr.cN();
        canvas.scale(cn, cn, bounds.exactCenterX(), bounds.exactCenterY());
        cm.draw(canvas);
        this.unscheduleSelf((Runnable)this);
        final long uptimeMillis = SystemClock.uptimeMillis();
        this.scheduleSelf((Runnable)this, uptimeMillis - uptimeMillis % n + n);
    }
    
    public void run() {
        this.invalidateSelf();
    }
}
