// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.os.Handler;
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
import android.content.Context;
import android.support.a.i;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.ItemInfo;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.support.a.a;
import android.graphics.Path;
import android.graphics.Paint;
import com.android.launcher3.Launcher;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Bitmap;
import android.widget.ImageView;
import android.graphics.drawable.Drawable;
import android.animation.ValueAnimator;
import android.widget.FrameLayout;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class DragView$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ DragView this$0;
    
    DragView$2(final DragView this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (!this.this$0.mAnimationCancelled) {
            this.this$0.mDragController.onDragViewAnimationEnd();
        }
    }
}
