// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.ViewGroup$LayoutParams;
import android.graphics.PorterDuff$Mode;
import com.android.launcher3.dragndrop.DragLayer$LayoutParams;
import android.graphics.Bitmap$Config;
import android.view.View;
import com.android.launcher3.Launcher;
import android.content.Context;
import android.graphics.Rect;
import com.android.launcher3.dragndrop.DragLayer;
import android.graphics.Canvas;
import android.graphics.Bitmap;
import android.widget.ImageView;

public class PreviewImageView extends ImageView
{
    private Bitmap mBitmap;
    private Canvas mCanvas;
    private final DragLayer mParent;
    private final Rect mTempRect;
    
    public PreviewImageView(final DragLayer mParent) {
        super(mParent.getContext());
        this.mTempRect = new Rect();
        this.mParent = mParent;
    }
    
    public static PreviewImageView get(final Context context) {
        final int n = 2131623941;
        final DragLayer dragLayer = Launcher.getLauncher(context).getDragLayer();
        PreviewImageView previewImageView = (PreviewImageView)dragLayer.getTag(n);
        if (previewImageView == null) {
            previewImageView = new PreviewImageView(dragLayer);
            dragLayer.setTag(n, (Object)previewImageView);
        }
        return previewImageView;
    }
    
    public void copy(final View view) {
        final int measuredWidth = view.getMeasuredWidth();
        final int measuredHeight = view.getMeasuredHeight();
        if (this.mBitmap == null || this.mBitmap.getWidth() != measuredWidth || this.mBitmap.getHeight() != measuredHeight) {
            this.mBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap$Config.ARGB_8888);
            this.mCanvas = new Canvas(this.mBitmap);
        }
        DragLayer$LayoutParams dragLayer$LayoutParams;
        if (this.getLayoutParams() instanceof DragLayer$LayoutParams) {
            dragLayer$LayoutParams = (DragLayer$LayoutParams)this.getLayoutParams();
        }
        else {
            dragLayer$LayoutParams = new DragLayer$LayoutParams(measuredWidth, measuredHeight);
        }
        final float descendantRectRelativeToSelf = this.mParent.getDescendantRectRelativeToSelf(view, this.mTempRect);
        dragLayer$LayoutParams.customPosition = true;
        dragLayer$LayoutParams.x = this.mTempRect.left;
        dragLayer$LayoutParams.y = this.mTempRect.top;
        dragLayer$LayoutParams.width = (int)(measuredWidth * descendantRectRelativeToSelf);
        dragLayer$LayoutParams.height = (int)(measuredHeight * descendantRectRelativeToSelf);
        this.mCanvas.drawColor(0, PorterDuff$Mode.CLEAR);
        view.draw(this.mCanvas);
        this.setImageBitmap(this.mBitmap);
        this.removeFromParent();
        this.mParent.addView((View)this, (ViewGroup$LayoutParams)dragLayer$LayoutParams);
    }
    
    public void removeFromParent() {
        if (this.mParent.indexOfChild((View)this) != -1) {
            this.mParent.removeView((View)this);
        }
    }
}
