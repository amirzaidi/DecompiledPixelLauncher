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
import android.graphics.Matrix;
import android.animation.ValueAnimator;
import android.graphics.Path;
import android.graphics.Paint;
import android.view.View;
import com.android.launcher3.CellLayout;
import android.graphics.RadialGradient;
import android.graphics.PorterDuffXfermode;
import android.util.Property;
import android.animation.ObjectAnimator;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PreviewBackground$4 extends AnimatorListenerAdapter
{
    final /* synthetic */ PreviewBackground this$0;
    
    PreviewBackground$4(final PreviewBackground this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mStrokeAlphaAnimator = null;
    }
}
