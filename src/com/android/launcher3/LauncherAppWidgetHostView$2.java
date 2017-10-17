// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.widget.RemoteViews;
import java.util.ArrayList;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.graphics.Rect;
import android.view.ViewConfiguration;
import android.view.KeyEvent;
import android.os.SystemClock;
import android.os.Handler;
import android.appwidget.AppWidgetProviderInfo;
import android.widget.AdapterView;
import android.view.ViewGroup;
import android.widget.Advanceable;
import android.view.View$AccessibilityDelegate;
import android.view.View;
import android.graphics.PointF;
import android.view.LayoutInflater;
import android.content.Context;
import android.util.SparseBooleanArray;
import android.view.View$OnLongClickListener;
import com.android.launcher3.dragndrop.DragLayer$TouchCompleteListener;
import android.appwidget.AppWidgetHostView;

final class LauncherAppWidgetHostView$2 implements Runnable
{
    final /* synthetic */ LauncherAppWidgetHostView this$0;
    
    LauncherAppWidgetHostView$2(final LauncherAppWidgetHostView this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.runAutoAdvance();
    }
}
