// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.os.Handler;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.Themes;
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
import android.content.Context;
import android.support.a.i;
import com.android.launcher3.LauncherAppState;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.support.a.a;
import android.graphics.Paint;
import com.android.launcher3.Launcher;
import android.graphics.Point;
import android.graphics.Rect;
import android.widget.ImageView;
import android.graphics.drawable.Drawable;
import android.animation.ValueAnimator;
import android.widget.FrameLayout;
import android.graphics.ColorFilter;
import android.graphics.Bitmap;
import com.android.launcher3.FastBitmapDrawable;
import android.view.View;
import android.graphics.Path;
import com.android.launcher3.ItemInfo;

final class DragView$3$1 implements Runnable
{
    final /* synthetic */ DragView$3 this$1;
    final /* synthetic */ ItemInfo val$info;
    final /* synthetic */ Path val$mask;
    
    DragView$3$1(final DragView$3 this$1, final Path val$mask, final ItemInfo val$info) {
        this.this$1 = this$1;
        this.val$mask = val$mask;
        this.val$info = val$info;
    }
    
    public void run() {
        final boolean b = true;
        this.this$1.this$0.mScaledMaskPath = this.val$mask;
        this.this$1.this$0.addView((View)this.this$1.this$0.mBgImageView);
        this.this$1.this$0.addView((View)this.this$1.this$0.mFgImageView);
        this.this$1.this$0.setWillNotDraw(b);
        if (this.val$info.isDisabled()) {
            final FastBitmapDrawable fastBitmapDrawable = new FastBitmapDrawable(null);
            fastBitmapDrawable.setIsDisabled(b);
            final ColorFilter colorFilter = fastBitmapDrawable.getColorFilter();
            this.this$1.this$0.mBgImageView.setColorFilter(colorFilter);
            this.this$1.this$0.mFgImageView.setColorFilter(colorFilter);
            this.this$1.this$0.mBadge.setColorFilter(colorFilter);
        }
    }
}
