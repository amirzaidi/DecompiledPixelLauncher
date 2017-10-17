// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.appwidget.AppWidgetHostView;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import com.android.launcher3.dragndrop.DragLayer$LayoutParams;
import com.android.launcher3.ItemInfo;
import android.content.Context;
import com.android.launcher3.LauncherAppWidgetProviderInfo;

final class WidgetHostViewLoader$2 implements Runnable
{
    final /* synthetic */ WidgetHostViewLoader this$0;
    final /* synthetic */ LauncherAppWidgetProviderInfo val$pInfo;
    
    WidgetHostViewLoader$2(final WidgetHostViewLoader this$0, final LauncherAppWidgetProviderInfo val$pInfo) {
        this.this$0 = this$0;
        this.val$pInfo = val$pInfo;
    }
    
    public void run() {
        final int mWidgetLoadingId = -1;
        final int customPosition = 1;
        if (this.this$0.mWidgetLoadingId == mWidgetLoadingId) {
            return;
        }
        final AppWidgetHostView view = this.this$0.mLauncher.getAppWidgetHost().createView((Context)this.this$0.mLauncher, this.this$0.mWidgetLoadingId, this.val$pInfo);
        this.this$0.mInfo.boundWidget = view;
        this.this$0.mWidgetLoadingId = mWidgetLoadingId;
        view.setVisibility(4);
        final int[] estimateItemSize = this.this$0.mLauncher.getWorkspace().estimateItemSize(this.this$0.mInfo, false, customPosition != 0);
        final DragLayer$LayoutParams layoutParams = new DragLayer$LayoutParams(estimateItemSize[0], estimateItemSize[customPosition]);
        layoutParams.y = 0;
        layoutParams.x = 0;
        layoutParams.customPosition = (customPosition != 0);
        view.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.this$0.mLauncher.getDragLayer().addView((View)view);
        this.this$0.mView.setTag((Object)this.this$0.mInfo);
    }
}
