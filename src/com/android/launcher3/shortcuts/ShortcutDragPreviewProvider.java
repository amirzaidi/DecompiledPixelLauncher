// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.shortcuts;

import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.HolographicOutlineHelper;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.android.launcher3.Launcher;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.view.View;
import android.graphics.Point;
import com.android.launcher3.graphics.DragPreviewProvider;

public class ShortcutDragPreviewProvider extends DragPreviewProvider
{
    private final Point mPositionShift;
    
    public ShortcutDragPreviewProvider(final View view, final Point mPositionShift) {
        super(view);
        this.mPositionShift = mPositionShift;
    }
    
    private Bitmap drawScaledPreview(final Canvas canvas, final Bitmap$Config bitmap$Config) {
        final Drawable background = this.mView.getBackground();
        final Rect drawableBounds = DragPreviewProvider.getDrawableBounds(background);
        final int iconSizePx = Launcher.getLauncher(this.mView.getContext()).getDeviceProfile().iconSizePx;
        final Bitmap bitmap = Bitmap.createBitmap(this.blurSizeOutline + iconSizePx, this.blurSizeOutline + iconSizePx, bitmap$Config);
        canvas.setBitmap(bitmap);
        canvas.save(1);
        canvas.translate((float)(this.blurSizeOutline / 2), (float)(this.blurSizeOutline / 2));
        canvas.scale(iconSizePx / drawableBounds.width(), iconSizePx / drawableBounds.height(), 0.0f, 0.0f);
        canvas.translate((float)drawableBounds.left, (float)drawableBounds.top);
        background.draw(canvas);
        canvas.restore();
        return bitmap;
    }
    
    public Bitmap createDragBitmap(final Canvas canvas) {
        final Bitmap drawScaledPreview = this.drawScaledPreview(canvas, Bitmap$Config.ARGB_8888);
        canvas.setBitmap((Bitmap)null);
        return drawScaledPreview;
    }
    
    public Bitmap createDragOutline(final Canvas canvas) {
        final Bitmap drawScaledPreview = this.drawScaledPreview(canvas, Bitmap$Config.ALPHA_8);
        HolographicOutlineHelper.getInstance(this.mView.getContext()).applyExpensiveOutlineWithBlur(drawScaledPreview, canvas);
        canvas.setBitmap((Bitmap)null);
        return drawScaledPreview;
    }
    
    public float getScaleAndPosition(final Bitmap bitmap, final int[] array) {
        final float n = 2.0f;
        final Launcher launcher = Launcher.getLauncher(this.mView.getContext());
        final int width = DragPreviewProvider.getDrawableBounds(this.mView.getBackground()).width();
        final float locationInDragLayer = launcher.getDragLayer().getLocationInDragLayer(this.mView, array);
        int paddingStart = this.mView.getPaddingStart();
        if (Utilities.isRtl(this.mView.getResources())) {
            paddingStart = this.mView.getWidth() - width - paddingStart;
        }
        array[0] += Math.round(paddingStart * locationInDragLayer + (width * locationInDragLayer - bitmap.getWidth()) / n + this.mPositionShift.x);
        final int n2 = 1;
        array[n2] += Math.round((this.mView.getHeight() * locationInDragLayer - bitmap.getHeight()) / n + this.mPositionShift.y);
        return width * locationInDragLayer / launcher.getDeviceProfile().iconSizePx;
    }
}
