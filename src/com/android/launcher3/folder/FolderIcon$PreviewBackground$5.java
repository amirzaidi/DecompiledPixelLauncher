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
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.android.launcher3.LauncherAnimUtils;
import android.graphics.Shader$TileMode;
import android.graphics.PorterDuff$Mode;
import android.graphics.Region$Op;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.animation.ValueAnimator;
import android.graphics.Path;
import android.graphics.Paint;
import android.view.View;
import com.android.launcher3.CellLayout;
import android.graphics.RadialGradient;
import android.graphics.PorterDuffXfermode;

final class FolderIcon$PreviewBackground$5 implements Runnable
{
    final /* synthetic */ FolderIcon$PreviewBackground this$1;
    
    FolderIcon$PreviewBackground$5(final FolderIcon$PreviewBackground this$1) {
        this.this$1 = this$1;
    }
    
    public void run() {
        this.this$1.clearDrawingDelegate();
    }
}
