// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.DeviceProfile;
import android.content.Context;
import com.android.launcher3.util.Themes;
import com.android.launcher3.Launcher;
import android.graphics.Color;
import android.support.v4.b.a;
import android.graphics.Path$Direction;
import android.graphics.Region$Op;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.graphics.Paint$Style;
import android.graphics.Canvas;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.LauncherAnimUtils;
import android.graphics.Shader$TileMode;
import android.graphics.PorterDuff$Mode;
import android.animation.ObjectAnimator;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Paint;
import android.view.View;
import com.android.launcher3.CellLayout;
import android.graphics.RadialGradient;
import android.graphics.PorterDuffXfermode;
import android.util.Property;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

final class PreviewBackground$5 implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ PreviewBackground this$0;
    final /* synthetic */ float val$bgMultiplier0;
    final /* synthetic */ float val$bgMultiplier1;
    final /* synthetic */ float val$scale0;
    final /* synthetic */ float val$scale1;
    
    PreviewBackground$5(final PreviewBackground this$0, final float val$scale1, final float val$scale2, final float val$bgMultiplier1, final float val$bgMultiplier2) {
        this.this$0 = this$0;
        this.val$scale1 = val$scale1;
        this.val$scale0 = val$scale2;
        this.val$bgMultiplier1 = val$bgMultiplier1;
        this.val$bgMultiplier0 = val$bgMultiplier2;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        final float n = 1.0f;
        final float animatedFraction = valueAnimator.getAnimatedFraction();
        this.this$0.mScale = this.val$scale1 * animatedFraction + (n - animatedFraction) * this.val$scale0;
        this.this$0.mColorMultiplier = (n - animatedFraction) * this.val$bgMultiplier0 + this.val$bgMultiplier1 * animatedFraction;
        this.this$0.invalidate();
    }
}
