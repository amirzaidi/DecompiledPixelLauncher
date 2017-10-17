// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Rect;
import android.graphics.Canvas;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuff$Mode;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import com.android.launcher3.graphics.IconPalette;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.ColorMatrix;
import android.util.SparseArray;
import android.animation.TimeInterpolator;
import android.graphics.drawable.Drawable;
import android.util.Property;

final class FastBitmapDrawable$2 extends Property
{
    FastBitmapDrawable$2(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Float get(final FastBitmapDrawable fastBitmapDrawable) {
        return fastBitmapDrawable.getBrightness();
    }
    
    public void set(final FastBitmapDrawable fastBitmapDrawable, final Float n) {
        fastBitmapDrawable.setBrightness(n);
    }
}
