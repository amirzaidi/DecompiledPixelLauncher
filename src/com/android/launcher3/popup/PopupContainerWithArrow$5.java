// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import java.util.Set;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.util.PackageUserKey;
import java.util.Map;
import android.os.Looper;
import android.os.Handler;
import com.android.launcher3.LauncherModel;
import java.util.Collections;
import android.view.ViewConfiguration;
import android.view.MotionEvent;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.dragndrop.DragOptions$PreDragCondition;
import android.graphics.Outline;
import android.util.Property;
import com.android.launcher3.anim.PropertyResetListener;
import com.android.launcher3.badge.BadgeInfo;
import java.util.List;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.anim.PropertyListBuilder;
import android.animation.ValueAnimator;
import android.graphics.Point;
import android.animation.Animator$AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.android.launcher3.LauncherAnimUtils;
import android.view.LayoutInflater;
import android.content.res.Resources;
import com.android.launcher3.shortcuts.DeepShortcutView;
import android.view.View$AccessibilityDelegate;
import android.view.ViewGroup;
import android.graphics.Paint;
import android.view.ViewGroup$LayoutParams;
import android.graphics.drawable.Drawable;
import android.graphics.PathEffect;
import android.graphics.CornerPathEffect;
import com.android.launcher3.util.Themes;
import android.graphics.drawable.shapes.Shape;
import android.graphics.drawable.ShapeDrawable;
import com.android.launcher3.graphics.TriangleShape;
import android.view.Gravity;
import android.widget.LinearLayout$LayoutParams;
import com.android.launcher3.Utilities;
import com.android.launcher3.accessibility.ShortcutMenuAccessibilityDelegate;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.shortcuts.ShortcutsItemView;
import android.animation.AnimatorSet;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.notification.NotificationItemView;
import com.android.launcher3.Launcher;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.dragndrop.DragController$DragListener;
import com.android.launcher3.DragSource;
import com.android.launcher3.AbstractFloatingView;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class PopupContainerWithArrow$5 extends AnimatorListenerAdapter
{
    final /* synthetic */ PopupContainerWithArrow this$0;
    
    PopupContainerWithArrow$5(final PopupContainerWithArrow this$0) {
        this.this$0 = this$0;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mOpenCloseAnimator = null;
        if (this.this$0.mDeferContainerRemoval) {
            this.this$0.setVisibility(4);
        }
        else {
            this.this$0.closeComplete();
        }
    }
}
