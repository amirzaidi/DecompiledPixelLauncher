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
import android.util.Property;
import com.android.launcher3.FastBitmapDrawable;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PreloadIconDrawable$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ PreloadIconDrawable this$0;
    
    PreloadIconDrawable$2(final PreloadIconDrawable this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mRanFinishAnimation = true;
    }
}
