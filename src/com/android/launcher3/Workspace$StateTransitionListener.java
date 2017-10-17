// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.util.PackageUserKey;
import java.util.Set;
import android.animation.AnimatorSet;
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
import android.view.View;
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
import android.animation.ValueAnimator;
import android.animation.Animator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.AnimatorListenerAdapter;

class Workspace$StateTransitionListener extends AnimatorListenerAdapter implements ValueAnimator$AnimatorUpdateListener
{
    final /* synthetic */ Workspace this$0;
    
    private Workspace$StateTransitionListener(final Workspace this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.onEndStateTransition();
    }
    
    public void onAnimationStart(final Animator animator) {
        if (this.this$0.mState == Workspace$State.SPRING_LOADED) {
            this.this$0.showPageIndicatorAtCurrentScroll();
        }
        this.this$0.mTransitionProgress = 0.0f;
    }
    
    public void onAnimationUpdate(final ValueAnimator valueAnimator) {
        this.this$0.mTransitionProgress = valueAnimator.getAnimatedFraction();
    }
}
