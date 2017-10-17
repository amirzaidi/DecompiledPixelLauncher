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
import android.animation.ValueAnimator;
import android.graphics.Path;
import android.graphics.Paint;
import android.view.View;
import android.graphics.RadialGradient;
import android.graphics.PorterDuffXfermode;
import android.util.Property;
import com.android.launcher3.CellLayout;

final class PreviewBackground$7 implements Runnable
{
    final /* synthetic */ PreviewBackground this$0;
    final /* synthetic */ int val$cellX;
    final /* synthetic */ int val$cellY;
    final /* synthetic */ CellLayout val$cl;
    
    PreviewBackground$7(final PreviewBackground this$0, final CellLayout val$cl, final int val$cellX, final int val$cellY) {
        this.this$0 = this$0;
        this.val$cl = val$cl;
        this.val$cellX = val$cellX;
        this.val$cellY = val$cellY;
    }
    
    public void run() {
        this.this$0.delegateDrawing(this.val$cl, this.val$cellX, this.val$cellY);
    }
}
