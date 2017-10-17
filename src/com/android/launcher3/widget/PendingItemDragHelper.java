// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import com.android.launcher3.DeviceProfile;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.dragndrop.DragController$DragListener;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.dragndrop.LivePreviewWidgetCell;
import android.content.Context;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.DragSource;
import android.graphics.Point;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.graphics.HolographicOutlineHelper;
import android.graphics.Paint;
import android.graphics.Rect;
import com.android.launcher3.Launcher;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.view.View;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.graphics.DragPreviewProvider;

public class PendingItemDragHelper extends DragPreviewProvider
{
    private final PendingAddItemInfo mAddInfo;
    private RemoteViews mPreview;
    private Bitmap mPreviewBitmap;
    
    public PendingItemDragHelper(final View view) {
        super(view);
        this.mAddInfo = (PendingAddItemInfo)view.getTag();
    }
    
    public Bitmap createDragOutline(final Canvas canvas) {
        if (this.mAddInfo instanceof PendingAddShortcutInfo) {
            final Bitmap bitmap = Bitmap.createBitmap(this.mPreviewBitmap.getWidth() + this.blurSizeOutline, this.mPreviewBitmap.getHeight() + this.blurSizeOutline, Bitmap$Config.ALPHA_8);
            canvas.setBitmap(bitmap);
            final int iconSizePx = Launcher.getLauncher(this.mView.getContext()).getDeviceProfile().iconSizePx;
            final Rect rect = new Rect(0, 0, this.mPreviewBitmap.getWidth(), this.mPreviewBitmap.getHeight());
            final Rect rect2 = new Rect(0, 0, iconSizePx, iconSizePx);
            rect2.offset(this.blurSizeOutline / 2, this.blurSizeOutline / 2);
            canvas.drawBitmap(this.mPreviewBitmap, rect, rect2, new Paint(2));
            HolographicOutlineHelper.getInstance(this.mView.getContext()).applyExpensiveOutlineWithBlur(bitmap, canvas);
            canvas.setBitmap((Bitmap)null);
            return bitmap;
        }
        final int[] estimateItemSize = Launcher.getLauncher(this.mView.getContext()).getWorkspace().estimateItemSize(this.mAddInfo, false, false);
        final int n = estimateItemSize[0];
        final int n2 = estimateItemSize[1];
        final Bitmap bitmap2 = Bitmap.createBitmap(n, n2, Bitmap$Config.ALPHA_8);
        canvas.setBitmap(bitmap2);
        final Rect rect3 = new Rect(0, 0, this.mPreviewBitmap.getWidth(), this.mPreviewBitmap.getHeight());
        final float min = Math.min((n - this.blurSizeOutline) / this.mPreviewBitmap.getWidth(), (n2 - this.blurSizeOutline) / this.mPreviewBitmap.getHeight());
        final int n3 = (int)(this.mPreviewBitmap.getWidth() * min);
        final int n4 = (int)(min * this.mPreviewBitmap.getHeight());
        final Rect rect4 = new Rect(0, 0, n3, n4);
        rect4.offset((n - n3) / 2, (n2 - n4) / 2);
        canvas.drawBitmap(this.mPreviewBitmap, rect3, rect4, (Paint)null);
        HolographicOutlineHelper.getInstance(this.mView.getContext()).applyExpensiveOutlineWithBlur(bitmap2, canvas);
        canvas.setBitmap((Bitmap)null);
        return bitmap2;
    }
    
    public void setPreview(final RemoteViews mPreview) {
        this.mPreview = mPreview;
    }
    
    public void startDrag(final Rect rect, final int n, final int n2, final Point point, final DragSource dragSource, final DragOptions dragOptions) {
        final Launcher launcher = Launcher.getLauncher(this.mView.getContext());
        final LauncherAppState instance = LauncherAppState.getInstance((Context)launcher);
        float n4;
        Point point2;
        Rect rect2;
        Bitmap mPreviewBitmap;
        if (this.mAddInfo instanceof PendingAddWidgetInfo) {
            final PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo)this.mAddInfo;
            final int min = Math.min((int)(n * 1.25f), launcher.getWorkspace().estimateItemSize(pendingAddWidgetInfo, true, false)[0]);
            final int[] array = { 0 };
            Bitmap bitmap;
            if (this.mPreview != null) {
                bitmap = LivePreviewWidgetCell.generateFromRemoteViews(launcher, this.mPreview, pendingAddWidgetInfo.info, min, array);
            }
            else {
                bitmap = null;
            }
            if (bitmap == null) {
                bitmap = instance.getWidgetCache().generateWidgetPreview(launcher, pendingAddWidgetInfo.info, min, null, array);
            }
            if (array[0] < n) {
                int n3 = (n - array[0]) / 2;
                if (n > n2) {
                    n3 = n3 * n2 / n;
                }
                rect.left += n3;
                rect.right -= n3;
            }
            n4 = rect.width() / bitmap.getWidth();
            launcher.getDragController().addDragListener(new WidgetHostViewLoader(launcher, this.mView));
            point2 = null;
            rect2 = null;
            mPreviewBitmap = bitmap;
        }
        else {
            final Bitmap scaledBitmapWithoutShadow = LauncherIcons.createScaledBitmapWithoutShadow(((PendingAddShortcutInfo)this.mAddInfo).activityInfo.getFullResIcon(instance.getIconCache()), (Context)launcher, 0);
            final PendingAddItemInfo mAddInfo = this.mAddInfo;
            this.mAddInfo.spanY = 1;
            mAddInfo.spanX = 1;
            n4 = launcher.getDeviceProfile().iconSizePx / scaledBitmapWithoutShadow.getWidth();
            point2 = new Point(this.previewPadding / 2, this.previewPadding / 2);
            final int[] estimateItemSize = launcher.getWorkspace().estimateItemSize(this.mAddInfo, false, true);
            final DeviceProfile deviceProfile = launcher.getDeviceProfile();
            final int iconSizePx = deviceProfile.iconSizePx;
            final int dimensionPixelSize = launcher.getResources().getDimensionPixelSize(2131427408);
            rect.left += dimensionPixelSize;
            rect.top += dimensionPixelSize;
            rect2 = new Rect();
            rect2.left = (estimateItemSize[0] - iconSizePx) / 2;
            rect2.right = rect2.left + iconSizePx;
            rect2.top = (estimateItemSize[1] - iconSizePx - deviceProfile.iconTextSizePx - deviceProfile.iconDrawablePaddingPx) / 2;
            rect2.bottom = rect2.top + iconSizePx;
            mPreviewBitmap = scaledBitmapWithoutShadow;
        }
        launcher.getWorkspace().prepareDragWithProvider(this);
        final int n5 = (int)((mPreviewBitmap.getWidth() * n4 - mPreviewBitmap.getWidth()) / 2.0f) + (point.x + rect.left);
        final int n6 = (int)((mPreviewBitmap.getHeight() * n4 - mPreviewBitmap.getHeight()) / 2.0f) + (point.y + rect.top);
        this.mPreviewBitmap = mPreviewBitmap;
        launcher.getDragController().startDrag(mPreviewBitmap, n5, n6, dragSource, this.mAddInfo, point2, rect2, n4, dragOptions);
    }
}
