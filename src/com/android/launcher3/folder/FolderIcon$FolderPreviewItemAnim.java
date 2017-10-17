// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.MotionEvent;
import android.os.Parcelable;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.AppInfo;
import com.android.launcher3.CellLayout$LayoutParams;
import com.android.launcher3.badge.BadgeInfo;
import android.graphics.Region$Op;
import android.graphics.Paint;
import com.android.launcher3.ItemInfo;
import java.util.List;
import android.widget.TextView;
import android.animation.ObjectAnimator;
import com.android.launcher3.Workspace;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.animation.Interpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher3.CellLayout;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.ShortcutInfo;
import android.view.ViewConfiguration;
import com.android.launcher3.StylusEventHelper$StylusButtonListener;
import com.android.launcher3.SimpleOnStylusPressListener;
import android.view.View$OnFocusChangeListener;
import android.view.View$AccessibilityDelegate;
import android.view.View$OnClickListener;
import android.widget.FrameLayout$LayoutParams;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.graphics.PorterDuff$Mode;
import android.graphics.Color;
import com.android.launcher3.FastBitmapDrawable;
import android.graphics.Canvas;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.config.FeatureFlags;
import android.graphics.Point;
import android.graphics.Rect;
import com.android.launcher3.StylusEventHelper;
import android.graphics.drawable.Drawable;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.Launcher;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.BubbleTextView;
import java.util.ArrayList;
import com.android.launcher3.badge.BadgeRenderer;
import com.android.launcher3.badge.FolderBadgeInfo;
import android.util.Property;
import com.android.launcher3.FolderInfo$FolderListener;
import android.widget.FrameLayout;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import com.android.launcher3.LauncherAnimUtils;
import android.animation.ValueAnimator;

class FolderIcon$FolderPreviewItemAnim
{
    float finalScale;
    float finalTransX;
    float finalTransY;
    ValueAnimator mValueAnimator;
    final /* synthetic */ FolderIcon this$0;
    
    public FolderIcon$FolderPreviewItemAnim(final FolderIcon this$0, final FolderIcon$PreviewItemDrawingParams folderIcon$PreviewItemDrawingParams, final int n, final int n2, final int n3, final int n4, final int n5, final Runnable runnable) {
        this.this$0 = this$0;
        this$0.computePreviewItemDrawingParams(n3, n4, this$0.mTmpParams);
        this.finalScale = this$0.mTmpParams.scale;
        this.finalTransX = this$0.mTmpParams.transX;
        this.finalTransY = this$0.mTmpParams.transY;
        this$0.computePreviewItemDrawingParams(n, n2, this$0.mTmpParams);
        final float scale = this$0.mTmpParams.scale;
        final float transX = this$0.mTmpParams.transX;
        final float transY = this$0.mTmpParams.transY;
        final float[] array2;
        final float[] array = array2 = new float[2];
        array2[0] = 0.0f;
        array2[1] = 1.0f;
        (this.mValueAnimator = LauncherAnimUtils.ofFloat(array)).addUpdateListener((ValueAnimator$AnimatorUpdateListener)new FolderIcon$FolderPreviewItemAnim$1(this, folderIcon$PreviewItemDrawingParams, transX, transY, scale));
        this.mValueAnimator.addListener((Animator$AnimatorListener)new FolderIcon$FolderPreviewItemAnim$2(this, runnable, folderIcon$PreviewItemDrawingParams));
        this.mValueAnimator.setDuration((long)n5);
    }
    
    public void cancel() {
        this.mValueAnimator.cancel();
    }
    
    public boolean hasEqualFinalState(final FolderIcon$FolderPreviewItemAnim folderIcon$FolderPreviewItemAnim) {
        boolean b = false;
        if (this.finalTransY == folderIcon$FolderPreviewItemAnim.finalTransY && this.finalTransX == folderIcon$FolderPreviewItemAnim.finalTransX && this.finalScale == folderIcon$FolderPreviewItemAnim.finalScale) {
            b = true;
        }
        return b;
    }
    
    public void start() {
        this.mValueAnimator.start();
    }
}
