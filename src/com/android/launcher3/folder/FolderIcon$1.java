// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.Animator$AnimatorListener;
import android.view.MotionEvent;
import android.os.Parcelable;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.AppInfo;
import com.android.launcher3.LauncherAnimUtils;
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
import com.android.launcher3.FolderInfo$FolderListener;
import android.widget.FrameLayout;
import android.util.Property;

final class FolderIcon$1 extends Property
{
    FolderIcon$1(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Float get(final FolderIcon folderIcon) {
        return folderIcon.mBadgeScale;
    }
    
    public void set(final FolderIcon folderIcon, final Float n) {
        folderIcon.mBadgeScale = n;
        folderIcon.invalidate();
    }
}
