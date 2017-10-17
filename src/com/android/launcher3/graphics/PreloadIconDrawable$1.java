// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.Rect;
import android.animation.Animator$AnimatorListener;
import android.animation.TimeInterpolator;
import android.view.animation.LinearInterpolator;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import java.lang.ref.WeakReference;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Style;
import android.graphics.Matrix;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.Paint;
import android.graphics.PathMeasure;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.SparseArray;
import com.android.launcher3.FastBitmapDrawable;
import android.util.Property;

final class PreloadIconDrawable$1 extends Property
{
    PreloadIconDrawable$1(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Float get(final PreloadIconDrawable preloadIconDrawable) {
        return preloadIconDrawable.mInternalStateProgress;
    }
    
    public void set(final PreloadIconDrawable preloadIconDrawable, final Float n) {
        preloadIconDrawable.setInternalProgress(n);
    }
}
