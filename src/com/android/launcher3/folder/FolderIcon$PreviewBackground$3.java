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
import android.graphics.RadialGradient;
import android.graphics.PorterDuffXfermode;
import com.android.launcher3.CellLayout;

final class FolderIcon$PreviewBackground$3 implements Runnable
{
    final /* synthetic */ FolderIcon$PreviewBackground this$1;
    final /* synthetic */ int val$cellX;
    final /* synthetic */ int val$cellY;
    final /* synthetic */ CellLayout val$cl;
    
    FolderIcon$PreviewBackground$3(final FolderIcon$PreviewBackground this$1, final CellLayout val$cl, final int val$cellX, final int val$cellY) {
        this.this$1 = this$1;
        this.val$cl = val$cl;
        this.val$cellX = val$cellX;
        this.val$cellY = val$cellY;
    }
    
    public void run() {
        this.this$1.delegateDrawing(this.val$cl, this.val$cellX, this.val$cellY);
    }
}
