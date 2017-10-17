// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.Animator$AnimatorListener;
import android.graphics.drawable.Drawable;
import com.android.launcher3.Utilities;
import android.view.MotionEvent;
import android.os.Parcelable;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.AppInfo;
import com.android.launcher3.LauncherAnimUtils;
import java.util.ArrayList;
import com.android.launcher3.badge.BadgeInfo;
import com.android.launcher3.graphics.IconPalette;
import android.graphics.Region$Op;
import android.graphics.Paint;
import android.graphics.Canvas;
import android.animation.ObjectAnimator;
import android.animation.Animator;
import com.android.launcher3.CellLayout$LayoutParams;
import com.android.launcher3.ItemInfo;
import java.util.List;
import com.android.launcher3.Workspace;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.animation.Interpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.Collection;
import com.android.launcher3.CellLayout;
import com.android.launcher3.dragndrop.DragView;
import android.view.ViewConfiguration;
import com.android.launcher3.StylusEventHelper$StylusButtonListener;
import com.android.launcher3.SimpleOnStylusPressListener;
import com.android.launcher3.DeviceProfile;
import android.view.View$OnFocusChangeListener;
import android.view.View$AccessibilityDelegate;
import android.view.View$OnClickListener;
import android.widget.FrameLayout$LayoutParams;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.config.FeatureFlags;
import android.graphics.Point;
import android.graphics.Rect;
import com.android.launcher3.StylusEventHelper;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.Launcher;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.badge.BadgeRenderer;
import com.android.launcher3.badge.FolderBadgeInfo;
import android.util.Property;
import com.android.launcher3.FolderInfo$FolderListener;
import android.widget.FrameLayout;
import com.android.launcher3.ShortcutInfo;

final class FolderIcon$3 implements Runnable
{
    final /* synthetic */ FolderIcon this$0;
    final /* synthetic */ int val$finalIndex;
    final /* synthetic */ ShortcutInfo val$item;
    
    FolderIcon$3(final FolderIcon this$0, final int val$finalIndex, final ShortcutInfo val$item) {
        this.this$0 = this$0;
        this.val$finalIndex = val$finalIndex;
        this.val$item = val$item;
    }
    
    public void run() {
        this.this$0.mPreviewItemManager.hidePreviewItem(this.val$finalIndex, false);
        this.this$0.mFolder.showItem(this.val$item);
        this.this$0.invalidate();
    }
}
