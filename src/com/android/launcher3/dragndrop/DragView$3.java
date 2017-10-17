// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.config.FeatureFlags;
import android.graphics.ColorFilter;
import com.android.launcher3.util.Themes;
import android.view.View;
import android.graphics.Canvas;
import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.support.a.c;
import android.support.a.d;
import android.widget.ImageView$ScaleType;
import android.view.ViewGroup$LayoutParams;
import android.widget.FrameLayout$LayoutParams;
import android.graphics.Matrix;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import android.content.pm.LauncherActivityInfo;
import java.util.List;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.graphics.drawable.InsetDrawable;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.Utilities;
import android.animation.TypeEvaluator;
import android.animation.FloatArrayEvaluator;
import java.util.Arrays;
import android.graphics.ColorMatrix;
import android.view.View$MeasureSpec;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.android.launcher3.LauncherAnimUtils;
import android.support.a.i;
import android.support.a.a;
import android.graphics.Paint;
import com.android.launcher3.Launcher;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Bitmap;
import android.widget.ImageView;
import android.animation.ValueAnimator;
import android.widget.FrameLayout;
import android.os.Handler;
import android.os.Looper;
import android.support.a.b;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.android.launcher3.graphics.IconNormalizer;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.content.Context;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.ItemInfo;

final class DragView$3 implements Runnable
{
    final /* synthetic */ DragView this$0;
    final /* synthetic */ ItemInfo val$info;
    
    DragView$3(final DragView this$0, final ItemInfo val$info) {
        this.this$0 = this$0;
        this.val$info = val$info;
    }
    
    public void run() {
        final LauncherAppState instance = LauncherAppState.getInstance((Context)this.this$0.mLauncher);
        final Object[] array = { null };
        final Drawable -wrap2 = this.this$0.getFullDrawable(this.val$info, instance, array);
        if (-wrap2 instanceof AdaptiveIconDrawable) {
            final int width = this.this$0.mBitmap.getWidth();
            final int height = this.this$0.mBitmap.getHeight();
            final AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable)-wrap2;
            final float dimension = this.this$0.mLauncher.getResources().getDimension(2131427438);
            final float n = IconNormalizer.getInstance((Context)this.this$0.mLauncher).getScale((Drawable)adaptiveIconDrawable, null, null, null) * ((width - dimension) / width);
            adaptiveIconDrawable.setBounds(0, 0, width, height);
            final Path -wrap3 = this.this$0.getMaskPath(adaptiveIconDrawable, n);
            this.this$0.mFgImageView = this.this$0.setupImageView(adaptiveIconDrawable.getForeground(), n);
            this.this$0.mBgImageView = this.this$0.setupImageView(adaptiveIconDrawable.getBackground(), n);
            this.this$0.mSpringX = this.this$0.setupSpringAnimation(-width / 4, width / 4, b.agN);
            this.this$0.mSpringY = this.this$0.setupSpringAnimation(-height / 4, height / 4, b.agJ);
            this.this$0.mBadge = this.this$0.getBadge(this.val$info, instance, array[0]);
            final int n2 = (int)dimension / 2;
            this.this$0.mBadge.setBounds(n2, n2, width - n2, height - n2);
            new Handler(Looper.getMainLooper()).post((Runnable)new DragView$3$1(this, -wrap3, this.val$info));
        }
    }
}
