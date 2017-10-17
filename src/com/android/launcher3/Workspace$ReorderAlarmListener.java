// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.util.PackageUserKey;
import java.util.Set;
import android.animation.AnimatorSet;
import android.animation.Animator;
import com.android.launcher3.anim.AnimationLayerSet;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.HashSet;
import android.os.UserHandle;
import android.os.Bundle;
import android.appwidget.AppWidgetProviderInfo;
import android.os.IBinder;
import android.view.View$OnClickListener;
import com.android.launcher3.accessibility.OverviewAccessibilityDelegate;
import java.util.Iterator;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import android.view.MotionEvent;
import android.graphics.Bitmap$Config;
import android.view.View$MeasureSpec;
import android.view.accessibility.AccessibilityManager;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import android.view.LayoutInflater;
import android.graphics.Bitmap;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.shortcuts.ShortcutDragPreviewProvider;
import android.graphics.Point;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.accessibility.OverviewScreenAccessibilityDelegate;
import android.widget.Toast;
import android.util.Property;
import android.appwidget.AppWidgetHostView;
import android.view.ViewGroup;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.accessibility.WorkspaceAccessibilityHelper;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.dragndrop.DragView;
import android.animation.Animator$AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.ViewGroup$LayoutParams;
import com.android.launcher3.folder.Folder;
import android.view.View$OnKeyListener;
import android.util.Log;
import android.content.res.Resources;
import android.view.animation.DecelerateInterpolator;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.util.LongArrayMap;
import com.android.launcher3.util.WallpaperOffsetInterpolator;
import android.app.WallpaperManager;
import com.android.launcher3.dragndrop.SpringLoadedDragController;
import android.util.SparseArray;
import java.util.ArrayList;
import android.view.View$AccessibilityDelegate;
import com.android.launcher3.graphics.DragPreviewProvider;
import android.animation.LayoutTransition;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.dragndrop.DragController;
import android.graphics.Canvas;
import android.view.animation.Interpolator;
import android.graphics.Rect;
import android.view.ViewGroup$OnHierarchyChangeListener;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.view.View$OnTouchListener;
import android.view.View;

class Workspace$ReorderAlarmListener implements OnAlarmListener
{
    final View child;
    final DropTarget$DragObject dragObject;
    final float[] dragViewCenter;
    final int minSpanX;
    final int minSpanY;
    final int spanX;
    final int spanY;
    final /* synthetic */ Workspace this$0;
    
    public Workspace$ReorderAlarmListener(final Workspace this$0, final float[] dragViewCenter, final int minSpanX, final int minSpanY, final int spanX, final int spanY, final DropTarget$DragObject dragObject, final View child) {
        this.this$0 = this$0;
        this.dragViewCenter = dragViewCenter;
        this.minSpanX = minSpanX;
        this.minSpanY = minSpanY;
        this.spanX = spanX;
        this.spanY = spanY;
        this.child = child;
        this.dragObject = dragObject;
    }
    
    public void onAlarm(final Alarm alarm) {
        final int n = 1;
        final int[] array = new int[2];
        this.this$0.mTargetCell = this.this$0.findNearestArea((int)this.this$0.mDragViewVisualCenter[0], (int)this.this$0.mDragViewVisualCenter[n], this.minSpanX, this.minSpanY, this.this$0.mDragTargetLayout, this.this$0.mTargetCell);
        this.this$0.mLastReorderX = this.this$0.mTargetCell[0];
        this.this$0.mLastReorderY = this.this$0.mTargetCell[n];
        this.this$0.mTargetCell = this.this$0.mDragTargetLayout.performReorder((int)this.this$0.mDragViewVisualCenter[0], (int)this.this$0.mDragViewVisualCenter[n], this.minSpanX, this.minSpanY, this.spanX, this.spanY, this.child, this.this$0.mTargetCell, array, n);
        if (this.this$0.mTargetCell[0] < 0 || this.this$0.mTargetCell[n] < 0) {
            this.this$0.mDragTargetLayout.revertTempState();
        }
        else {
            this.this$0.setDragMode(3);
        }
        boolean b;
        if (array[0] != this.spanX || array[n] != this.spanY) {
            b = (n != 0);
        }
        else {
            b = false;
        }
        this.this$0.mDragTargetLayout.visualizeDropLocation(this.child, this.this$0.mOutlineProvider, this.this$0.mTargetCell[0], this.this$0.mTargetCell[n], array[0], array[n], b, this.dragObject);
    }
}
