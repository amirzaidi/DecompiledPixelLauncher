// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.View$OnKeyListener;
import android.view.View$MeasureSpec;
import android.view.ActionMode$Callback;
import android.view.KeyEvent;
import android.widget.TextView;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import android.text.Spannable;
import android.text.Selection;
import com.android.launcher3.Utilities;
import android.view.FocusFinder;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import android.view.accessibility.AccessibilityEvent;
import java.util.Iterator;
import android.view.ViewGroup$LayoutParams;
import java.util.List;
import java.util.Collections;
import android.animation.ValueAnimator;
import android.util.Property;
import android.animation.AnimatorSet;
import android.animation.Animator;
import android.view.animation.AccelerateInterpolator;
import com.android.launcher3.util.CircleRevealOutlineProvider;
import android.animation.TimeInterpolator;
import com.android.launcher3.LogDecelerateInterpolator;
import android.animation.PropertyValuesHolder;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Workspace$ItemOperator;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.DropTarget$DragObject;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragLayer$LayoutParams;
import android.animation.ObjectAnimator;
import android.graphics.Paint;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.LauncherAnimUtils;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.pageindicators.PageIndicatorDots;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.Alarm;
import com.android.launcher3.Launcher;
import java.util.ArrayList;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.dragndrop.DragController;
import android.view.View;
import android.graphics.Rect;
import java.util.Comparator;
import com.android.launcher3.ExtendedEditText$OnBackKeyListener;
import com.android.launcher3.UninstallDropTarget$DropTargetSource;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.view.View$OnFocusChangeListener;
import android.widget.TextView$OnEditorActionListener;
import com.android.launcher3.FolderInfo$FolderListener;
import com.android.launcher3.DropTarget;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;
import com.android.launcher3.DragSource;
import com.android.launcher3.AbstractFloatingView;

final class Folder$6 implements Runnable
{
    final /* synthetic */ Folder this$0;
    
    Folder$6(final Folder this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.mFolderName.setHint((CharSequence)"");
        this.this$0.mIsEditingName = true;
    }
}
