// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.DeviceProfile;
import android.util.DisplayMetrics;
import android.graphics.Color;
import android.graphics.Paint$Style;
import android.graphics.Path$Direction;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.LauncherAnimUtils;
import android.graphics.Shader$TileMode;
import android.graphics.PorterDuff$Mode;
import android.graphics.Region$Op;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Paint;
import android.view.View;
import com.android.launcher3.CellLayout;
import android.graphics.RadialGradient;
import android.graphics.PorterDuffXfermode;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class FolderIcon$PreviewBackground$1 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ FolderIcon$PreviewBackground this$1;
    final /* synthetic */ float val$bgMultiplier0;
    final /* synthetic */ float val$bgMultiplier1;
    final /* synthetic */ float val$scale0;
    final /* synthetic */ float val$scale1;
    
    FolderIcon$PreviewBackground$1(final FolderIcon$PreviewBackground this$1, final float val$scale1, final float val$scale2, final float val$bgMultiplier1, final float val$bgMultiplier2) {
        this.this$1 = this$1;
        this.val$scale1 = val$scale1;
        this.val$scale0 = val$scale2;
        this.val$bgMultiplier1 = val$bgMultiplier1;
        this.val$bgMultiplier0 = val$bgMultiplier2;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float n = 1.0f;
        final float animatedFraction = valueAnimator.getAnimatedFraction();
        this.this$1.mScale = this.val$scale1 * animatedFraction + (n - animatedFraction) * this.val$scale0;
        this.this$1.mColorMultiplier = (n - animatedFraction) * this.val$bgMultiplier0 + this.val$bgMultiplier1 * animatedFraction;
        this.this$1.invalidate();
    }
}
