// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Set;
import android.animation.Animator;
import com.android.launcher3.anim.AnimationLayerSet;
import android.content.IntentSender$SendIntentException;
import android.content.IntentSender;
import android.app.SearchManager;
import android.view.ViewTreeObserver$OnDrawListener;
import android.database.sqlite.SQLiteDatabase;
import android.animation.Animator$AnimatorListener;
import android.os.Parcelable;
import android.view.KeyboardShortcutGroup;
import android.view.KeyboardShortcutInfo;
import android.view.Menu;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.keyboard.CustomActionsPopup;
import android.text.Editable;
import android.text.method.TextKeyListener;
import android.view.Display;
import com.android.launcher3.util.Themes;
import android.content.IntentFilter;
import com.android.launcher3.dragndrop.PinItemDragListener;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import android.view.accessibility.AccessibilityManager;
import android.graphics.Point;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.content.ActivityNotFoundException;
import android.widget.Toast;
import com.android.launcher3.pageindicators.PageIndicator;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.util.PackageUserKey;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.app.ActivityOptions;
import android.view.View$AccessibilityDelegate;
import com.android.launcher3.notification.NotificationListener$NotificationsChangedListener;
import com.android.launcher3.notification.NotificationListener;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.text.Spannable;
import android.text.Selection;
import java.util.Iterator;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.shortcuts.ShortcutKey;
import android.content.ComponentName;
import android.os.UserHandle;
import java.util.HashSet;
import android.animation.AnimatorSet;
import java.util.Collection;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.widget.WidgetHostViewLoader;
import java.util.List;
import android.os.StrictMode$VmPolicy;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import android.os.StrictMode$VmPolicy$Builder;
import android.os.StrictMode;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.os.Bundle;
import android.app.Activity;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import android.view.View$OnFocusChangeListener;
import android.content.DialogInterface$OnClickListener;
import android.app.AlertDialog$Builder;
import android.content.ContextWrapper;
import android.animation.TimeInterpolator;
import android.view.animation.OvershootInterpolator;
import android.animation.ValueAnimator;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.util.PackageManagerHelper;
import android.util.Log;
import android.os.Process;
import android.content.Context;
import com.android.launcher3.compat.LauncherAppsCompatVO;
import android.content.Intent;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import android.view.inputmethod.InputMethodManager;
import com.android.launcher3.widget.WidgetsContainerView;
import android.content.SharedPreferences;
import android.animation.ObjectAnimator;
import android.content.BroadcastReceiver;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.util.PendingRequestArgs;
import com.android.launcher3.util.ViewOnDrawExecutor;
import com.android.launcher3.util.ActivityResultInfo;
import android.view.ViewGroup;
import com.android.launcher3.model.ModelWriter;
import android.os.Handler;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.dynamicui.ExtractedColors;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragController;
import android.text.SpannableStringBuilder;
import java.util.ArrayList;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.allapps.AllAppsTransitionController;
import android.view.View;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import java.util.HashMap;
import com.android.launcher3.dynamicui.WallpaperColorInfo$OnThemeChangeListener;
import android.view.accessibility.AccessibilityManager$AccessibilityStateChangeListener;
import android.view.View$OnTouchListener;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;

final class Launcher$24 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ Runnable val$onCompleteRunnable;
    final /* synthetic */ boolean val$successfulDrop;
    
    Launcher$24(final Launcher this$0, final boolean val$successfulDrop, final Runnable val$onCompleteRunnable) {
        this.this$0 = this$0;
        this.val$successfulDrop = val$successfulDrop;
        this.val$onCompleteRunnable = val$onCompleteRunnable;
    }
    
    public void run() {
        if (this.val$successfulDrop) {
            this.this$0.mWidgetsView.setVisibility(8);
            this.this$0.showWorkspace(true, this.val$onCompleteRunnable);
        }
        else {
            this.this$0.exitSpringLoadedDragMode();
        }
        this.this$0.mExitSpringLoadedModeRunnable = null;
    }
}
