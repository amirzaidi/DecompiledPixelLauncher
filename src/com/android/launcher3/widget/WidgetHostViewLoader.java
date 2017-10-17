// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import android.appwidget.AppWidgetHostView;
import com.android.launcher3.AppWidgetResizeFrame;
import android.graphics.Rect;
import android.os.Bundle;
import android.content.Context;
import android.view.View;
import com.android.launcher3.Launcher;
import android.os.Handler;
import com.android.launcher3.dragndrop.DragController$DragListener;

public class WidgetHostViewLoader implements DragController$DragListener
{
    private Runnable mBindWidgetRunnable;
    Handler mHandler;
    Runnable mInflateWidgetRunnable;
    final PendingAddWidgetInfo mInfo;
    Launcher mLauncher;
    final View mView;
    int mWidgetLoadingId;
    
    public WidgetHostViewLoader(final Launcher mLauncher, final View mView) {
        this.mInflateWidgetRunnable = null;
        this.mBindWidgetRunnable = null;
        this.mWidgetLoadingId = -1;
        this.mLauncher = mLauncher;
        this.mHandler = new Handler();
        this.mView = mView;
        this.mInfo = (PendingAddWidgetInfo)mView.getTag();
    }
    
    public static Bundle getDefaultOptionsForWidget(final Context context, final PendingAddWidgetInfo pendingAddWidgetInfo) {
        final Rect rect = new Rect();
        AppWidgetResizeFrame.getWidgetSizeRanges(context, pendingAddWidgetInfo.spanX, pendingAddWidgetInfo.spanY, rect);
        final Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(context, pendingAddWidgetInfo.componentName, (Rect)null);
        final float density = context.getResources().getDisplayMetrics().density;
        final int n = (int)((defaultPaddingForWidget.left + defaultPaddingForWidget.right) / density);
        final int n2 = (int)((defaultPaddingForWidget.bottom + defaultPaddingForWidget.top) / density);
        final Bundle bundle = new Bundle();
        bundle.putInt("appWidgetMinWidth", rect.left - n);
        bundle.putInt("appWidgetMinHeight", rect.top - n2);
        bundle.putInt("appWidgetMaxWidth", rect.right - n);
        bundle.putInt("appWidgetMaxHeight", rect.bottom - n2);
        return bundle;
    }
    
    private boolean preloadWidget() {
        final LauncherAppWidgetProviderInfo info = this.mInfo.info;
        if (info.isCustomWidget) {
            return false;
        }
        final Bundle defaultOptionsForWidget = getDefaultOptionsForWidget((Context)this.mLauncher, this.mInfo);
        if (this.mInfo.getHandler().needsConfigure()) {
            this.mInfo.bindOptions = defaultOptionsForWidget;
            return false;
        }
        this.mBindWidgetRunnable = new WidgetHostViewLoader$1(this, info, defaultOptionsForWidget);
        this.mInflateWidgetRunnable = new WidgetHostViewLoader$2(this, info);
        this.mHandler.post(this.mBindWidgetRunnable);
        return true;
    }
    
    public void onDragEnd() {
        final int mWidgetLoadingId = -1;
        this.mLauncher.getDragController().removeDragListener(this);
        this.mHandler.removeCallbacks(this.mBindWidgetRunnable);
        this.mHandler.removeCallbacks(this.mInflateWidgetRunnable);
        if (this.mWidgetLoadingId != mWidgetLoadingId) {
            this.mLauncher.getAppWidgetHost().deleteAppWidgetId(this.mWidgetLoadingId);
            this.mWidgetLoadingId = mWidgetLoadingId;
        }
        if (this.mInfo.boundWidget != null) {
            this.mLauncher.getDragLayer().removeView((View)this.mInfo.boundWidget);
            this.mLauncher.getAppWidgetHost().deleteAppWidgetId(this.mInfo.boundWidget.getAppWidgetId());
            this.mInfo.boundWidget = null;
        }
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        this.preloadWidget();
    }
}
