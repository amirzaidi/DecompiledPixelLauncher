// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import com.android.launcher3.Launcher;
import android.graphics.Bitmap$Config;
import com.android.launcher3.LauncherAppWidgetHostView;
import android.graphics.drawable.Drawable;
import android.graphics.Region$Op;
import com.android.launcher3.folder.FolderIcon;
import android.graphics.Canvas;
import com.android.launcher3.Workspace;
import android.widget.TextView;
import android.content.Context;
import android.view.View;
import android.graphics.Rect;
import android.graphics.Bitmap;

public class DragPreviewProvider
{
    protected final int blurSizeOutline;
    public Bitmap generatedDragOutline;
    private final Rect mTempRect;
    protected final View mView;
    public final int previewPadding;
    
    public DragPreviewProvider(final View view) {
        this(view, view.getContext());
    }
    
    public DragPreviewProvider(final View mView, final Context context) {
        this.mTempRect = new Rect();
        this.mView = mView;
        this.blurSizeOutline = context.getResources().getDimensionPixelSize(2131427428);
        if (this.mView instanceof TextView) {
            final Rect drawableBounds = getDrawableBounds(Workspace.getTextViewIcon((TextView)this.mView));
            this.previewPadding = this.blurSizeOutline - drawableBounds.left - drawableBounds.top;
        }
        else {
            this.previewPadding = this.blurSizeOutline;
        }
    }
    
    private void drawDragView(final Canvas canvas) {
        final boolean textVisible = true;
        canvas.save();
        if (this.mView instanceof TextView) {
            final Drawable textViewIcon = Workspace.getTextViewIcon((TextView)this.mView);
            final Rect drawableBounds = getDrawableBounds(textViewIcon);
            canvas.translate((float)(this.blurSizeOutline / 2 - drawableBounds.left), (float)(this.blurSizeOutline / 2 - drawableBounds.top));
            textViewIcon.draw(canvas);
        }
        else {
            final Rect mTempRect = this.mTempRect;
            this.mView.getDrawingRect(mTempRect);
            int n;
            if (this.mView instanceof FolderIcon && ((FolderIcon)this.mView).getTextVisible()) {
                ((FolderIcon)this.mView).setTextVisible(false);
                n = (textVisible ? 1 : 0);
            }
            else {
                n = 0;
            }
            canvas.translate((float)(-this.mView.getScrollX() + this.blurSizeOutline / 2), (float)(-this.mView.getScrollY() + this.blurSizeOutline / 2));
            canvas.clipRect(mTempRect, Region$Op.REPLACE);
            this.mView.draw(canvas);
            if (n != 0) {
                ((FolderIcon)this.mView).setTextVisible(textVisible);
            }
        }
        canvas.restore();
    }
    
    protected static Rect getDrawableBounds(final Drawable drawable) {
        final Rect rect = new Rect();
        drawable.copyBounds(rect);
        if (rect.width() == 0 || rect.height() == 0) {
            rect.set(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        else {
            rect.offsetTo(0, 0);
        }
        return rect;
    }
    
    public Bitmap createDragBitmap(final Canvas canvas) {
        float scaleToFit = 1.0f;
        int n = this.mView.getWidth();
        int n2 = this.mView.getHeight();
        if (this.mView instanceof TextView) {
            final Rect drawableBounds = getDrawableBounds(Workspace.getTextViewIcon((TextView)this.mView));
            n = drawableBounds.width();
            n2 = drawableBounds.height();
        }
        else if (this.mView instanceof LauncherAppWidgetHostView) {
            scaleToFit = ((LauncherAppWidgetHostView)this.mView).getScaleToFit();
            n = (int)(this.mView.getWidth() * scaleToFit);
            n2 = (int)(this.mView.getHeight() * scaleToFit);
        }
        final Bitmap bitmap = Bitmap.createBitmap(n + this.blurSizeOutline, n2 + this.blurSizeOutline, Bitmap$Config.ARGB_8888);
        canvas.setBitmap(bitmap);
        canvas.save();
        canvas.scale(scaleToFit, scaleToFit);
        this.drawDragView(canvas);
        canvas.restore();
        canvas.setBitmap((Bitmap)null);
        return bitmap;
    }
    
    public Bitmap createDragOutline(final Canvas canvas) {
        float scaleToFit = 1.0f;
        int width = this.mView.getWidth();
        int height = this.mView.getHeight();
        if (this.mView instanceof LauncherAppWidgetHostView) {
            scaleToFit = ((LauncherAppWidgetHostView)this.mView).getScaleToFit();
            width = (int)Math.floor(this.mView.getWidth() * scaleToFit);
            height = (int)Math.floor(this.mView.getHeight() * scaleToFit);
        }
        final Bitmap bitmap = Bitmap.createBitmap(width + this.blurSizeOutline, height + this.blurSizeOutline, Bitmap$Config.ALPHA_8);
        canvas.setBitmap(bitmap);
        canvas.save();
        canvas.scale(scaleToFit, scaleToFit);
        this.drawDragView(canvas);
        canvas.restore();
        HolographicOutlineHelper.getInstance(this.mView.getContext()).applyExpensiveOutlineWithBlur(bitmap, canvas);
        canvas.setBitmap((Bitmap)null);
        return bitmap;
    }
    
    public final void generateDragOutline(final Canvas canvas) {
        this.generatedDragOutline = this.createDragOutline(canvas);
    }
    
    public float getScaleAndPosition(final Bitmap bitmap, final int[] array) {
        final int n = 1;
        final float n2 = 2.0f;
        final float locationInDragLayer = Launcher.getLauncher(this.mView.getContext()).getDragLayer().getLocationInDragLayer(this.mView, array);
        float n3;
        if (this.mView instanceof LauncherAppWidgetHostView) {
            n3 = locationInDragLayer / ((LauncherAppWidgetHostView)this.mView).getScaleToFit();
        }
        else {
            n3 = locationInDragLayer;
        }
        array[0] = Math.round(array[0] - (bitmap.getWidth() - this.mView.getWidth() * n3 * this.mView.getScaleX()) / n2);
        array[n] = Math.round(array[n] - (1.0f - n3) * bitmap.getHeight() / n2 - this.previewPadding / 2);
        return n3;
    }
}
