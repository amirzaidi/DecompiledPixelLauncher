// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.content.res.Resources$Theme;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.DrawableWrapper;

public class FixedScaleDrawable extends DrawableWrapper
{
    private float mScaleX;
    private float mScaleY;
    
    public FixedScaleDrawable() {
        final float n = 0.46669f;
        super((Drawable)new ColorDrawable());
        this.mScaleX = n;
        this.mScaleY = n;
    }
    
    public void draw(final Canvas canvas) {
        final int save = canvas.save(1);
        canvas.scale(this.mScaleX, this.mScaleY, this.getBounds().exactCenterX(), this.getBounds().exactCenterY());
        super.draw(canvas);
        canvas.restoreToCount(save);
    }
    
    public void inflate(final Resources resources, final XmlPullParser xmlPullParser, final AttributeSet set) {
    }
    
    public void inflate(final Resources resources, final XmlPullParser xmlPullParser, final AttributeSet set, final Resources$Theme resources$Theme) {
    }
    
    public void setScale(final float n) {
        final float n2 = 0.46669f;
        final float n3 = this.getIntrinsicHeight();
        final float n4 = this.getIntrinsicWidth();
        this.mScaleX = n * n2;
        this.mScaleY = n * n2;
        if (n3 > n4 && n4 > 0.0f) {
            this.mScaleX *= n4 / n3;
        }
        else if (n4 > n3 && n3 > 0.0f) {
            this.mScaleY *= n3 / n4;
        }
    }
}
