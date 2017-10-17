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
import android.animation.ValueAnimator$AnimatorUpdateListener;
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
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PreviewBackground$6 extends AnimatorListenerAdapter
{
    final /* synthetic */ PreviewBackground this$0;
    final /* synthetic */ Runnable val$onEnd;
    final /* synthetic */ Runnable val$onStart;
    
    PreviewBackground$6(final PreviewBackground this$0, final Runnable val$onStart, final Runnable val$onEnd) {
        this.this$0 = this$0;
        this.val$onStart = val$onStart;
        this.val$onEnd = val$onEnd;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.val$onEnd != null) {
            this.val$onEnd.run();
        }
        this.this$0.mScaleAnimator = null;
    }
    
    public void onAnimationStart(final Animator animator) {
        if (this.val$onStart != null) {
            this.val$onStart.run();
        }
    }
}
