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
import android.os.Parcelable;
import android.view.KeyboardShortcutGroup;
import android.view.KeyboardShortcutInfo;
import android.view.Menu;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.keyboard.CustomActionsPopup;
import android.text.Editable;
import android.text.method.TextKeyListener;
import android.view.Display;
import com.android.launcher3.dragndrop.PinItemDragListener;
import android.content.SharedPreferences$OnSharedPreferenceChangeListener;
import android.view.accessibility.AccessibilityManager;
import android.graphics.Point;
import android.content.ActivityNotFoundException;
import android.widget.Toast;
import com.android.launcher3.pageindicators.PageIndicator;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.popup.PopupContainerWithArrow;
import android.content.IntentFilter;
import com.android.launcher3.util.PackageUserKey;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.app.ActivityOptions;
import android.widget.TextView;
import android.view.View$AccessibilityDelegate;
import com.android.launcher3.notification.NotificationListener$NotificationsChangedListener;
import com.android.launcher3.notification.NotificationListener;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.KeyEvent;
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
import com.android.launcher3.folder.FolderIcon;
import android.os.StrictMode$VmPolicy;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import android.os.StrictMode$VmPolicy$Builder;
import android.os.StrictMode;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.allapps.AllAppsSearchBarController;
import com.android.launcher3.allapps.DefaultAppSearchController;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.os.Bundle;
import android.app.Activity;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import android.view.View$OnFocusChangeListener;
import android.content.DialogInterface$OnClickListener;
import android.app.AlertDialog$Builder;
import android.content.ContextWrapper;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.view.animation.OvershootInterpolator;
import android.animation.ValueAnimator;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.util.PackageManagerHelper;
import android.util.Log;
import android.os.Process;
import android.content.Context;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.compat.PinItemRequestCompat;
import android.content.Intent;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import android.view.inputmethod.InputMethodManager;
import com.android.launcher3.widget.WidgetsContainerView;
import android.content.SharedPreferences;
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
import android.view.accessibility.AccessibilityManager$AccessibilityStateChangeListener;
import android.view.View$OnTouchListener;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;

public class Launcher extends BaseActivity implements LauncherExterns, View$OnClickListener, View$OnLongClickListener, LauncherModel$Callbacks, View$OnTouchListener, LauncherProviderChangeListener, AccessibilityManager$AccessibilityStateChangeListener
{
    static int NEW_APPS_ANIMATION_DELAY;
    private static int NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS;
    private static int NEW_APPS_PAGE_MOVE_DELAY;
    protected static HashMap sCustomAppWidgets;
    private LauncherAccessibilityDelegate mAccessibilityDelegate;
    private View mAllAppsButton;
    AllAppsTransitionController mAllAppsController;
    MultiHashMap mAllWidgets;
    private LauncherAppWidgetHost mAppWidgetHost;
    private AppWidgetManagerCompat mAppWidgetManager;
    AllAppsContainerView mAppsView;
    private boolean mAttached;
    private Runnable mBindAllApplicationsRunnable;
    private Runnable mBindAllWidgetsRunnable;
    private ArrayList mBindOnResumeCallbacks;
    Runnable mBuildLayersRunnable;
    private SpannableStringBuilder mDefaultKeySsb;
    private DragController mDragController;
    DragLayer mDragLayer;
    private DropTargetBar mDropTargetBar;
    private Runnable mExitSpringLoadedModeRunnable;
    private ExtractedColors mExtractedColors;
    public ViewGroupFocusHelper mFocusHandler;
    private Handler mHandler;
    private View$OnTouchListener mHapticFeedbackTouchListener;
    private boolean mHasFocus;
    Hotseat mHotseat;
    private IconCache mIconCache;
    private boolean mIsResumeFromActionScreenOff;
    private boolean mIsSafeModeEnabled;
    private float mLastDispatchTouchEventX;
    private LauncherCallbacks mLauncherCallbacks;
    private View mLauncherView;
    private LauncherModel mModel;
    private ModelWriter mModelWriter;
    private boolean mMoveToDefaultScreenFromNewIntent;
    private ArrayList mOnResumeCallbacks;
    private boolean mOnResumeNeedsLoad;
    private Launcher$State mOnResumeState;
    private ViewGroup mOverviewPanel;
    private boolean mPaused;
    private ActivityResultInfo mPendingActivityResult;
    private ViewOnDrawExecutor mPendingExecutor;
    private PendingRequestArgs mPendingRequestArgs;
    private PopupDataProvider mPopupDataProvider;
    private View mQsbContainer;
    private final BroadcastReceiver mReceiver;
    private boolean mRotationEnabled;
    private Launcher$RotationPrefChangeHandler mRotationPrefChangeHandler;
    private SharedPreferences mSharedPrefs;
    Launcher$State mState;
    LauncherStateTransitionAnimation mStateTransitionAnimation;
    private final ArrayList mSynchronouslyBoundPages;
    private int[] mTmpAddItemCellCoordinates;
    ArrayList mTmpAppsList;
    private BubbleTextView mWaitingForResume;
    private View mWidgetsButton;
    WidgetsContainerView mWidgetsView;
    Workspace mWorkspace;
    boolean mWorkspaceLoading;
    
    static {
        final int new_APPS_ANIMATION_DELAY = Launcher.NEW_APPS_PAGE_MOVE_DELAY = 500;
        Launcher.NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS = 5;
        Launcher.NEW_APPS_ANIMATION_DELAY = new_APPS_ANIMATION_DELAY;
        Launcher.sCustomAppWidgets = new HashMap();
    }
    
    public Launcher() {
        final boolean b = true;
        this.mState = Launcher$State.WORKSPACE;
        this.mTmpAddItemCellCoordinates = new int[2];
        this.mOnResumeState = Launcher$State.NONE;
        this.mDefaultKeySsb = null;
        this.mWorkspaceLoading = b;
        this.mPaused = b;
        this.mBindOnResumeCallbacks = new ArrayList();
        this.mOnResumeCallbacks = new ArrayList();
        this.mHandler = new Handler();
        this.mHasFocus = false;
        this.mAttached = false;
        this.mSynchronouslyBoundPages = new ArrayList();
        this.mBuildLayersRunnable = new Launcher$1(this);
        this.mLastDispatchTouchEventX = 0.0f;
        this.mRotationEnabled = false;
        this.mReceiver = new Launcher$2(this);
        this.mBindAllApplicationsRunnable = new Launcher$3(this);
        this.mBindAllWidgetsRunnable = new Launcher$4(this);
    }
    
    private boolean acceptFilter() {
        return ((InputMethodManager)this.getSystemService("input_method")).isFullscreenMode() ^ true;
    }
    
    private void addAppWidgetFromDrop(final PendingAddWidgetInfo pendingAddWidgetInfo) {
        final AppWidgetHostView boundWidget = pendingAddWidgetInfo.boundWidget;
        final WidgetAddFlowHandler handler = pendingAddWidgetInfo.getHandler();
        if (boundWidget != null) {
            this.getDragLayer().removeView((View)boundWidget);
            this.addAppWidgetFromDropImpl(boundWidget.getAppWidgetId(), pendingAddWidgetInfo, boundWidget, handler);
            pendingAddWidgetInfo.boundWidget = null;
        }
        else {
            final int allocateAppWidgetId = this.getAppWidgetHost().allocateAppWidgetId();
            if (this.mAppWidgetManager.bindAppWidgetIdIfAllowed(allocateAppWidgetId, pendingAddWidgetInfo.info, pendingAddWidgetInfo.bindOptions)) {
                this.addAppWidgetFromDropImpl(allocateAppWidgetId, pendingAddWidgetInfo, null, handler);
            }
            else {
                handler.startBindFlow(this, allocateAppWidgetId, pendingAddWidgetInfo, 11);
            }
        }
    }
    
    private void bindAddScreens(final ArrayList list) {
        for (int size = list.size(), i = 0; i < size; ++i) {
            final long longValue = list.get(i);
            if (longValue != 0L) {
                this.mWorkspace.insertNewWorkspaceScreenBeforeEmptyScreen(longValue);
            }
        }
    }
    
    private boolean canRunNewAppsAnimation() {
        return System.currentTimeMillis() - this.mDragController.getLastGestureUpTime() > Launcher.NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS * 1000;
    }
    
    private long completeAdd(final int n, final Intent intent, final int n2, final PendingRequestArgs pendingRequestArgs) {
        long n3 = pendingRequestArgs.screenId;
        if (pendingRequestArgs.container == -100) {
            n3 = this.ensurePendingDropLayoutExists(pendingRequestArgs.screenId);
        }
        switch (n) {
            case 1: {
                this.completeAddShortcut(intent, pendingRequestArgs.container, n3, pendingRequestArgs.cellX, pendingRequestArgs.cellY, pendingRequestArgs);
                break;
            }
            case 5: {
                this.completeAddAppWidget(n2, pendingRequestArgs, null, null);
                break;
            }
            case 12: {
                this.completeRestoreAppWidget(n2, 0);
                break;
            }
            case 14: {
                final LauncherAppWidgetInfo completeRestoreAppWidget = this.completeRestoreAppWidget(n2, 4);
                if (completeRestoreAppWidget == null) {
                    break;
                }
                final LauncherAppWidgetProviderInfo launcherAppWidgetInfo = this.mAppWidgetManager.getLauncherAppWidgetInfo(n2);
                if (launcherAppWidgetInfo != null) {
                    new WidgetAddFlowHandler(launcherAppWidgetInfo).startConfigActivity(this, completeRestoreAppWidget, 12);
                    break;
                }
                break;
            }
        }
        return n3;
    }
    
    private void completeAddShortcut(final Intent intent, final long n, final long n2, final int n3, final int n4, final PendingRequestArgs pendingRequestArgs) {
        final int[] mTmpAddItemCellCoordinates = this.mTmpAddItemCellCoordinates;
        final CellLayout cellLayout = this.getCellLayout(n, n2);
        if (pendingRequestArgs.getRequestCode() != 1 || pendingRequestArgs.getPendingIntent().getComponent() == null) {
            return;
        }
        ShortcutInfo shortcutInfo = null;
        if (Utilities.isAtLeastO()) {
            shortcutInfo = LauncherAppsCompat.createShortcutInfoFromPinItemRequest((Context)this, PinItemRequestCompat.getPinItemRequest(intent), 0L);
        }
        if (shortcutInfo == null) {
            if (Process.myUserHandle().equals((Object)pendingRequestArgs.user)) {
                shortcutInfo = InstallShortcutReceiver.fromShortcutIntent((Context)this, intent);
            }
            else {
                shortcutInfo = null;
            }
            if (shortcutInfo == null) {
                Log.e("Launcher", "Unable to parse a valid custom shortcut result");
                return;
            }
            if (!new PackageManagerHelper((Context)this).hasPermissionForActivity(shortcutInfo.intent, pendingRequestArgs.getPendingIntent().getComponent().getPackageName())) {
                Log.e("Launcher", "Ignoring malicious intent " + shortcutInfo.intent.toUri(0));
                return;
            }
        }
        final ShortcutInfo dragInfo = shortcutInfo;
        final View shortcut = this.createShortcut(shortcutInfo);
        boolean cellForSpan;
        if (n3 >= 0 && n4 >= 0) {
            mTmpAddItemCellCoordinates[0] = n3;
            mTmpAddItemCellCoordinates[1] = n4;
            final boolean b = true;
            if (this.mWorkspace.createUserFolderIfNecessary(shortcut, n, cellLayout, mTmpAddItemCellCoordinates, 0.0f, true, null, null)) {
                return;
            }
            final DropTarget$DragObject dropTarget$DragObject = new DropTarget$DragObject();
            dropTarget$DragObject.dragInfo = dragInfo;
            if (this.mWorkspace.addToExistingFolderIfNecessary(shortcut, cellLayout, mTmpAddItemCellCoordinates, 0.0f, dropTarget$DragObject, true)) {
                return;
            }
            cellForSpan = b;
        }
        else {
            cellForSpan = cellLayout.findCellForSpan(mTmpAddItemCellCoordinates, 1, 1);
        }
        if (!cellForSpan) {
            this.mWorkspace.onNoCellFound((View)cellLayout);
            return;
        }
        this.getModelWriter().addItemToDatabase(dragInfo, n, n2, mTmpAddItemCellCoordinates[0], mTmpAddItemCellCoordinates[1]);
        this.mWorkspace.addInScreen(shortcut, dragInfo);
    }
    
    private LauncherAppWidgetInfo completeRestoreAppWidget(final int n, final int restoreStatus) {
        final LauncherAppWidgetHostView widgetForAppWidgetId = this.mWorkspace.getWidgetForAppWidgetId(n);
        if (widgetForAppWidgetId == null || (widgetForAppWidgetId instanceof PendingAppWidgetHostView ^ true)) {
            Log.e("Launcher", "Widget update called, when the widget no longer exists.");
            return null;
        }
        final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo)widgetForAppWidgetId.getTag();
        launcherAppWidgetInfo.restoreStatus = restoreStatus;
        this.mWorkspace.reinflateWidgetsIfNecessary();
        this.getModelWriter().updateItemInDatabase(launcherAppWidgetInfo);
        return launcherAppWidgetInfo;
    }
    
    private ValueAnimator createNewAppBounceAnimation(final View view, final int n) {
        final float n2 = 1.0f;
        final ObjectAnimator ofViewAlphaAndScale = LauncherAnimUtils.ofViewAlphaAndScale(view, n2, n2, n2);
        ((ValueAnimator)ofViewAlphaAndScale).setDuration(450L);
        ((ValueAnimator)ofViewAlphaAndScale).setStartDelay((long)(n * 85));
        ((ValueAnimator)ofViewAlphaAndScale).setInterpolator((TimeInterpolator)new OvershootInterpolator(1.3f));
        return (ValueAnimator)ofViewAlphaAndScale;
    }
    
    private void deleteWidgetInfo(final LauncherAppWidgetInfo launcherAppWidgetInfo) {
        final LauncherAppWidgetHost appWidgetHost = this.getAppWidgetHost();
        if (appWidgetHost != null && (launcherAppWidgetInfo.isCustomWidget() ^ true) && launcherAppWidgetInfo.isWidgetIdAllocated()) {
            new Launcher$17(this, appWidgetHost, launcherAppWidgetInfo).executeOnExecutor(Utilities.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
        }
        this.getModelWriter().deleteItemFromDatabase(launcherAppWidgetInfo);
    }
    
    private long ensurePendingDropLayoutExists(final long n) {
        if (this.mWorkspace.getScreenWithId(n) == null) {
            this.mWorkspace.addExtraEmptyScreen();
            return this.mWorkspace.commitExtraEmptyScreen();
        }
        return n;
    }
    
    public static Launcher getLauncher(final Context context) {
        if (context instanceof Launcher) {
            return (Launcher)context;
        }
        return (Launcher)((ContextWrapper)context).getBaseContext();
    }
    
    private String getTypedText() {
        return this.mDefaultKeySsb.toString();
    }
    
    private void handleActivityResult(final int n, final int n2, final Intent intent) {
        if (this.isWorkspaceLoading()) {
            this.mPendingActivityResult = new ActivityResultInfo(n, n2, intent);
            return;
        }
        this.mPendingActivityResult = null;
        final PendingRequestArgs mPendingRequestArgs = this.mPendingRequestArgs;
        this.setWaitingForResult(null);
        if (mPendingRequestArgs == null) {
            return;
        }
        int widgetId = mPendingRequestArgs.getWidgetId();
        final Launcher$6 launcher$6 = new Launcher$6(this, n2);
        if (n == 11) {
            int intExtra;
            if (intent != null) {
                intExtra = intent.getIntExtra("appWidgetId", -1);
            }
            else {
                intExtra = -1;
            }
            if (n2 == 0) {
                this.completeTwoStageWidgetDrop(0, intExtra, mPendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, launcher$6, 500, false);
            }
            else if (n2 == -1) {
                this.addAppWidgetImpl(intExtra, mPendingRequestArgs, null, mPendingRequestArgs.getWidgetHandler(), 500);
            }
            return;
        }
        if (n == 10) {
            if (n2 == -1 && this.mWorkspace.isInOverviewMode()) {
                this.mWorkspace.setCurrentPage(this.mWorkspace.getPageNearestToCenterOfScreen());
                this.showWorkspace(false);
            }
            return;
        }
        int n3;
        if (n != 9) {
            if (n == 5) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
        }
        else {
            n3 = 1;
        }
        if (n3 != 0) {
            int intExtra2;
            if (intent != null) {
                intExtra2 = intent.getIntExtra("appWidgetId", -1);
            }
            else {
                intExtra2 = -1;
            }
            if (intExtra2 >= 0) {
                widgetId = intExtra2;
            }
            if (widgetId < 0 || n2 == 0) {
                Log.e("Launcher", "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity.");
                this.completeTwoStageWidgetDrop(0, widgetId, mPendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, new Launcher$7(this), 500, false);
            }
            else {
                if (mPendingRequestArgs.container == -100) {
                    mPendingRequestArgs.screenId = this.ensurePendingDropLayoutExists(mPendingRequestArgs.screenId);
                }
                final CellLayout screenWithId = this.mWorkspace.getScreenWithId(mPendingRequestArgs.screenId);
                screenWithId.setDropPending(true);
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, new Launcher$8(this, n2, widgetId, mPendingRequestArgs, screenWithId), 500, false);
            }
            return;
        }
        if (n == 12 || n == 14) {
            if (n2 == -1) {
                this.completeAdd(n, intent, widgetId, mPendingRequestArgs);
            }
            return;
        }
        if (n == 1) {
            if (n2 == -1 && mPendingRequestArgs.container != -1) {
                this.completeAdd(n, intent, -1, mPendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, launcher$6, 500, false);
            }
            else if (n2 == 0) {
                this.mWorkspace.removeExtraEmptyScreenDelayed(true, launcher$6, 500, false);
            }
        }
        this.mDragLayer.clearAnimatedView();
    }
    
    private void loadExtractedColorsAndColorItems() {
        if (Utilities.ATLEAST_NOUGAT) {
            this.mExtractedColors.load((Context)this);
            this.mHotseat.updateColor(this.mExtractedColors, this.mPaused ^ true);
            this.mWorkspace.getPageIndicator().updateColor(this.mExtractedColors);
            this.activateLightSystemBars(this.isAllAppsVisible(), true, this.isAllAppsVisible());
        }
    }
    
    private void markAppsViewShown() {
        if (this.mSharedPrefs.getBoolean("launcher.apps_view_shown", false)) {
            return;
        }
        this.mSharedPrefs.edit().putBoolean("launcher.apps_view_shown", true).apply();
    }
    
    private void onClickPendingAppItem(final View view, final String s, final boolean b) {
        if (b) {
            this.startMarketIntentForPackage(view, s);
            return;
        }
        new AlertDialog$Builder((Context)this).setTitle(2131492960).setMessage(2131492961).setPositiveButton(2131492959, (DialogInterface$OnClickListener)new Launcher$18(this, view, s)).setNeutralButton(2131492958, (DialogInterface$OnClickListener)new Launcher$19(this, s)).create().show();
    }
    
    private void prepareAppWidget(final AppWidgetHostView appWidgetHostView, final LauncherAppWidgetInfo tag) {
        appWidgetHostView.setTag((Object)tag);
        tag.onBindAppWidget(this, appWidgetHostView);
        appWidgetHostView.setFocusable(true);
        appWidgetHostView.setOnFocusChangeListener((View$OnFocusChangeListener)this.mFocusHandler);
    }
    
    private void processShortcutFromDrop(final PendingAddShortcutInfo pendingAddShortcutInfo) {
        final int n = 1;
        this.setWaitingForResult(PendingRequestArgs.forIntent(n, new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(pendingAddShortcutInfo.componentName), pendingAddShortcutInfo));
        if (!pendingAddShortcutInfo.activityInfo.startConfigActivity(this, n)) {
            this.handleActivityResult(n, 0, null);
        }
    }
    
    private void restoreState(final Bundle bundle) {
        if (bundle == null) {
            return;
        }
        final int int1 = bundle.getInt("launcher.state", Launcher$State.WORKSPACE.ordinal());
        final Launcher$State[] values = Launcher$State.values();
        Launcher$State workspace;
        if (int1 >= 0 && int1 < values.length) {
            workspace = values[int1];
        }
        else {
            workspace = Launcher$State.WORKSPACE;
        }
        if (workspace == Launcher$State.APPS || workspace == Launcher$State.WIDGETS) {
            this.mOnResumeState = workspace;
        }
        final PendingRequestArgs waitingForResult = (PendingRequestArgs)bundle.getParcelable("launcher.request_args");
        if (waitingForResult != null) {
            this.setWaitingForResult(waitingForResult);
        }
        this.mPendingActivityResult = (ActivityResultInfo)bundle.getParcelable("launcher.activity_result");
    }
    
    private void setState(final Launcher$State mState) {
        this.mState = mState;
        this.updateSoftInputMode();
    }
    
    private void setWorkspaceLoading(final boolean mWorkspaceLoading) {
        final boolean workspaceLocked = this.isWorkspaceLocked();
        this.mWorkspaceLoading = mWorkspaceLoading;
        if (workspaceLocked != this.isWorkspaceLocked()) {
            this.onWorkspaceLockedChanged();
        }
    }
    
    private void setupOverviewPanel() {
        this.mOverviewPanel = (ViewGroup)this.findViewById(2131624004);
        final View viewById = this.findViewById(2131624019);
        new Launcher$10(this, 3).attachTo(viewById);
        viewById.setOnTouchListener(this.getHapticFeedbackTouchListener());
        this.mWidgetsButton = this.findViewById(2131624020);
        new Launcher$11(this, 2).attachTo(this.mWidgetsButton);
        this.mWidgetsButton.setOnTouchListener(this.getHapticFeedbackTouchListener());
        final View viewById2 = this.findViewById(2131624021);
        if (this.hasSettings()) {
            new Launcher$12(this, 4).attachTo(viewById2);
            viewById2.setOnTouchListener(this.getHapticFeedbackTouchListener());
        }
        else {
            viewById2.setVisibility(8);
        }
        this.mOverviewPanel.setAlpha(0.0f);
    }
    
    private void setupViews() {
        this.mDragLayer = (DragLayer)this.findViewById(2131624002);
        this.mFocusHandler = this.mDragLayer.getFocusIndicatorHelper();
        this.mWorkspace = (Workspace)this.mDragLayer.findViewById(2131623970);
        final DragLayer mDragLayer = this.mDragLayer;
        int n;
        if (this.mDeviceProfile.isVerticalBarLayout()) {
            n = 2131623939;
        }
        else {
            n = 2131624006;
        }
        this.mQsbContainer = mDragLayer.findViewById(n);
        this.mWorkspace.initParentViews((View)this.mDragLayer);
        this.mLauncherView.setSystemUiVisibility(1792);
        this.mDragLayer.setup(this, this.mDragController, this.mAllAppsController);
        this.mHotseat = (Hotseat)this.findViewById(2131623971);
        if (this.mHotseat != null) {
            this.mHotseat.setOnLongClickListener((View$OnLongClickListener)this);
        }
        this.setupOverviewPanel();
        this.mWorkspace.setHapticFeedbackEnabled(false);
        this.mWorkspace.setOnLongClickListener((View$OnLongClickListener)this);
        this.mWorkspace.setup(this.mDragController);
        this.mWorkspace.lockWallpaperToDefaultPage();
        this.mWorkspace.bindAndInitFirstWorkspaceScreen(null);
        this.mDragController.addDragListener(this.mWorkspace);
        this.mDropTargetBar = (DropTargetBar)this.mDragLayer.findViewById(2131624005);
        this.mAppsView = (AllAppsContainerView)this.findViewById(2131623973);
        this.mWidgetsView = (WidgetsContainerView)this.findViewById(2131624007);
        if (this.mLauncherCallbacks != null && this.mLauncherCallbacks.getAllAppsSearchBarController() != null) {
            this.mAppsView.setSearchBarController(this.mLauncherCallbacks.getAllAppsSearchBarController());
        }
        else {
            this.mAppsView.setSearchBarController(new DefaultAppSearchController());
        }
        this.mDragController.setMoveTarget((View)this.mWorkspace);
        this.mDragController.addDropTarget(this.mWorkspace);
        this.mDropTargetBar.setup(this.mDragController);
        if (FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP) {
            this.mAllAppsController.setupViews(this.mAppsView, this.mHotseat, this.mWorkspace);
        }
    }
    
    private boolean shouldShowDiscoveryBounce() {
        final boolean b = true;
        final Launcher$State mState = this.mState;
        final Launcher$State mState2 = this.mState;
        if (mState != Launcher$State.WORKSPACE) {
            return false;
        }
        if (this.mLauncherCallbacks != null && this.mLauncherCallbacks.shouldShowDiscoveryBounce()) {
            return b;
        }
        return this.mIsResumeFromActionScreenOff && !this.mSharedPrefs.getBoolean("launcher.apps_view_shown", false) && b;
    }
    
    private boolean showAppsOrWidgets(final Launcher$State state, final boolean b, final boolean b2) {
        final boolean b3 = true;
        boolean b4;
        if (this.mState != Launcher$State.WORKSPACE && this.mState != Launcher$State.APPS_SPRING_LOADED && this.mState != Launcher$State.WIDGETS_SPRING_LOADED) {
            b4 = (this.mState == Launcher$State.APPS && this.mAllAppsController.isTransitioning());
        }
        else {
            b4 = b3;
        }
        if (!b4) {
            return false;
        }
        if (state != Launcher$State.APPS && state != Launcher$State.WIDGETS) {
            return false;
        }
        if (this.mExitSpringLoadedModeRunnable != null) {
            this.mHandler.removeCallbacks(this.mExitSpringLoadedModeRunnable);
            this.mExitSpringLoadedModeRunnable = null;
        }
        if (state == Launcher$State.APPS) {
            this.mStateTransitionAnimation.startAnimationToAllApps(b, b2);
        }
        else {
            this.mStateTransitionAnimation.startAnimationToWidgets(b);
        }
        this.setState(state);
        AbstractFloatingView.closeAllOpenViews(this);
        this.getWindow().getDecorView().sendAccessibilityEvent(32);
        return b3;
    }
    
    private void startAppShortcutOrInfoActivity(final View view) {
        final ItemInfo itemInfo = (ItemInfo)view.getTag();
        final Intent intent = itemInfo.getIntent();
        if (intent == null) {
            throw new IllegalArgumentException("Input must have a valid intent");
        }
        final boolean startActivitySafely = this.startActivitySafely(view, intent, itemInfo);
        this.getUserEventDispatcher().logAppLaunch(view, intent);
        if (startActivitySafely && view instanceof BubbleTextView) {
            (this.mWaitingForResume = (BubbleTextView)view).setStayPressed(true);
        }
    }
    
    private void startMarketIntentForPackage(final View view, final String s) {
        if (this.startActivitySafely(view, PackageManagerHelper.getMarketIntent(s), (ItemInfo)view.getTag()) && view instanceof BubbleTextView) {
            (this.mWaitingForResume = (BubbleTextView)view).setStayPressed(true);
        }
    }
    
    private void startShortcutIntentSafely(final Intent intent, final Bundle bundle, final ItemInfo itemInfo) {
        final int n = 13;
        try {
            final StrictMode$VmPolicy vmPolicy = StrictMode.getVmPolicy();
            try {
                StrictMode.setVmPolicy(new StrictMode$VmPolicy$Builder().detectAll().penaltyLog().build());
                if (itemInfo.itemType == 6) {
                    DeepShortcutManager.getInstance((Context)this).startShortcut(intent.getPackage(), ((ShortcutInfo)itemInfo).getDeepShortcutId(), intent.getSourceBounds(), bundle, itemInfo.user);
                }
                else {
                    this.startActivity(intent, bundle);
                }
            }
            finally {
                StrictMode.setVmPolicy(vmPolicy);
            }
        }
        catch (SecurityException ex) {
            if (intent.getComponent() == null && "android.intent.action.CALL".equals(intent.getAction()) && this.checkSelfPermission("android.permission.CALL_PHONE") != 0) {
                this.setWaitingForResult(PendingRequestArgs.forIntent(n, intent, itemInfo));
                this.requestPermissions(new String[] { "android.permission.CALL_PHONE" }, n);
                return;
            }
            throw ex;
        }
    }
    
    private void updateSoftInputMode() {
        if (FeatureFlags.LAUNCHER3_UPDATE_SOFT_INPUT_MODE) {
            int softInputMode;
            if (this.isAppsViewVisible()) {
                softInputMode = 16;
            }
            else {
                softInputMode = 32;
            }
            this.getWindow().setSoftInputMode(softInputMode);
        }
    }
    
    private boolean waitUntilResume(final Runnable runnable) {
        return this.waitUntilResume(runnable, false);
    }
    
    public void activateLightSystemBars(final boolean b, final boolean b2, final boolean b3) {
        final int systemUiVisibility = this.getWindow().getDecorView().getSystemUiVisibility();
        int systemUiVisibility2;
        if (b) {
            if (b2) {
                systemUiVisibility2 = (systemUiVisibility | 0x2000);
            }
            else {
                systemUiVisibility2 = systemUiVisibility;
            }
            if (b3 && Utilities.isAtLeastO()) {
                systemUiVisibility2 |= 0x10;
            }
        }
        else {
            if (b2) {
                systemUiVisibility2 = (systemUiVisibility & 0xFFFFDFFF);
            }
            else {
                systemUiVisibility2 = systemUiVisibility;
            }
            if (b3 && Utilities.isAtLeastO()) {
                systemUiVisibility2 &= 0xFFFFFFEF;
            }
        }
        if (systemUiVisibility2 != systemUiVisibility) {
            this.getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility2);
        }
    }
    
    void addAppWidgetFromDropImpl(final int n, final ItemInfo itemInfo, final AppWidgetHostView appWidgetHostView, final WidgetAddFlowHandler widgetAddFlowHandler) {
        this.addAppWidgetImpl(n, itemInfo, appWidgetHostView, widgetAddFlowHandler, 0);
    }
    
    void addAppWidgetImpl(final int n, final ItemInfo itemInfo, final AppWidgetHostView appWidgetHostView, final WidgetAddFlowHandler widgetAddFlowHandler, final int n2) {
        if (!widgetAddFlowHandler.startConfigActivity(this, n, itemInfo, 5)) {
            final Launcher$16 launcher$16 = new Launcher$16(this);
            this.completeAddAppWidget(n, itemInfo, appWidgetHostView, widgetAddFlowHandler.getProviderInfo((Context)this));
            this.mWorkspace.removeExtraEmptyScreenDelayed(true, launcher$16, n2, false);
        }
    }
    
    FolderIcon addFolder(final CellLayout cellLayout, final long n, final long n2, final int n3, final int n4) {
        final FolderInfo folderInfo = new FolderInfo();
        folderInfo.title = this.getText(2131492893);
        this.getModelWriter().addItemToDatabase(folderInfo, n, n2, n3, n4);
        final FolderIcon fromXml = FolderIcon.fromXml(2130968595, this, cellLayout, folderInfo);
        this.mWorkspace.addInScreen((View)fromXml, folderInfo);
        this.mWorkspace.getParentCellLayoutForView((View)fromXml).getShortcutsAndWidgets().measureChild((View)fromXml);
        return fromXml;
    }
    
    public void addOnResumeCallback(final Runnable runnable) {
        this.mOnResumeCallbacks.add(runnable);
    }
    
    public void addPendingItem(final PendingAddItemInfo pendingAddItemInfo, final long container, final long screenId, final int[] array, final int spanX, final int spanY) {
        pendingAddItemInfo.container = container;
        pendingAddItemInfo.screenId = screenId;
        if (array != null) {
            pendingAddItemInfo.cellX = array[0];
            pendingAddItemInfo.cellY = array[1];
        }
        pendingAddItemInfo.spanX = spanX;
        pendingAddItemInfo.spanY = spanY;
        switch (pendingAddItemInfo.itemType) {
            default: {
                throw new IllegalStateException("Unknown item type: " + pendingAddItemInfo.itemType);
            }
            case 4:
            case 5: {
                this.addAppWidgetFromDrop((PendingAddWidgetInfo)pendingAddItemInfo);
                break;
            }
            case 1: {
                this.processShortcutFromDrop((PendingAddShortcutInfo)pendingAddItemInfo);
                break;
            }
        }
    }
    
    public void bindAllApplications(final ArrayList list) {
        if (this.waitUntilResume(this.mBindAllApplicationsRunnable, true)) {
            this.mTmpAppsList = list;
            return;
        }
        if (this.mAppsView != null) {
            this.mAppsView.setApps(list);
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.bindAllApplications(list);
        }
    }
    
    public void bindAllWidgets(final MultiHashMap multiHashMap) {
        if (this.waitUntilResume(this.mBindAllWidgetsRunnable, true)) {
            this.mAllWidgets = multiHashMap;
            return;
        }
        if (this.mWidgetsView != null && multiHashMap != null) {
            this.mWidgetsView.setWidgets(multiHashMap);
            this.mAllWidgets = null;
        }
        final AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this);
        if (topOpenView != null) {
            topOpenView.onWidgetsBound();
        }
    }
    
    public void bindAppInfosRemoved(final ArrayList list) {
        if (this.waitUntilResume(new Launcher$37(this, list))) {
            return;
        }
        if (this.mAppsView != null) {
            this.mAppsView.removeApps(list);
            this.tryAndUpdatePredictedApps();
        }
    }
    
    public void bindAppWidget(final LauncherAppWidgetInfo launcherAppWidgetInfo) {
        final int n = 4;
        final int n2 = 2;
        final int n3 = 1;
        if (this.waitUntilResume(new Launcher$28(this, launcherAppWidgetInfo))) {
            return;
        }
        if (this.mIsSafeModeEnabled) {
            final PendingAppWidgetHostView pendingAppWidgetHostView = new PendingAppWidgetHostView((Context)this, launcherAppWidgetInfo, this.mIconCache, n3 != 0);
            this.prepareAppWidget(pendingAppWidgetHostView, launcherAppWidgetInfo);
            this.mWorkspace.addInScreen((View)pendingAppWidgetHostView, launcherAppWidgetInfo);
            this.mWorkspace.requestLayout();
            return;
        }
        LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo;
        if (launcherAppWidgetInfo.hasRestoreFlag(n2)) {
            launcherAppWidgetProviderInfo = null;
        }
        else if (launcherAppWidgetInfo.hasRestoreFlag(n3)) {
            launcherAppWidgetProviderInfo = this.mAppWidgetManager.findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user);
        }
        else {
            launcherAppWidgetProviderInfo = this.mAppWidgetManager.getLauncherAppWidgetInfo(launcherAppWidgetInfo.appWidgetId);
        }
        if (!launcherAppWidgetInfo.hasRestoreFlag(n2) && launcherAppWidgetInfo.restoreStatus != 0) {
            if (launcherAppWidgetProviderInfo == null) {
                this.getModelWriter().deleteItemFromDatabase(launcherAppWidgetInfo);
                return;
            }
            if (launcherAppWidgetInfo.hasRestoreFlag(n3)) {
                if (!launcherAppWidgetInfo.hasRestoreFlag(16)) {
                    launcherAppWidgetInfo.appWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
                    launcherAppWidgetInfo.restoreStatus |= 0x10;
                    final PendingAddWidgetInfo pendingAddWidgetInfo = new PendingAddWidgetInfo(launcherAppWidgetProviderInfo);
                    pendingAddWidgetInfo.spanX = launcherAppWidgetInfo.spanX;
                    pendingAddWidgetInfo.spanY = launcherAppWidgetInfo.spanY;
                    pendingAddWidgetInfo.minSpanX = launcherAppWidgetInfo.minSpanX;
                    pendingAddWidgetInfo.minSpanY = launcherAppWidgetInfo.minSpanY;
                    final Bundle defaultOptionsForWidget = WidgetHostViewLoader.getDefaultOptionsForWidget((Context)this, pendingAddWidgetInfo);
                    final boolean hasRestoreFlag = launcherAppWidgetInfo.hasRestoreFlag(32);
                    Bundle extras;
                    if (hasRestoreFlag && launcherAppWidgetInfo.bindOptions != null) {
                        extras = launcherAppWidgetInfo.bindOptions.getExtras();
                        if (defaultOptionsForWidget != null) {
                            extras.putAll(defaultOptionsForWidget);
                        }
                    }
                    else {
                        extras = defaultOptionsForWidget;
                    }
                    final boolean bindAppWidgetIdIfAllowed = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(launcherAppWidgetInfo.appWidgetId, launcherAppWidgetProviderInfo, extras);
                    launcherAppWidgetInfo.bindOptions = null;
                    launcherAppWidgetInfo.restoreStatus &= 0xFFFFFFDF;
                    if (bindAppWidgetIdIfAllowed) {
                        int restoreStatus;
                        if (launcherAppWidgetProviderInfo.configure == null || hasRestoreFlag) {
                            restoreStatus = 0;
                        }
                        else {
                            restoreStatus = n;
                        }
                        launcherAppWidgetInfo.restoreStatus = restoreStatus;
                    }
                    this.getModelWriter().updateItemInDatabase(launcherAppWidgetInfo);
                }
            }
            else if (launcherAppWidgetInfo.hasRestoreFlag(n) && launcherAppWidgetProviderInfo.configure == null) {
                launcherAppWidgetInfo.restoreStatus = 0;
                this.getModelWriter().updateItemInDatabase(launcherAppWidgetInfo);
            }
        }
        AppWidgetHostView view;
        if (launcherAppWidgetInfo.restoreStatus == 0) {
            if (launcherAppWidgetProviderInfo == null) {
                FileLog.e("Launcher", "Removing invalid widget: id=" + launcherAppWidgetInfo.appWidgetId);
                this.deleteWidgetInfo(launcherAppWidgetInfo);
                return;
            }
            launcherAppWidgetInfo.minSpanX = launcherAppWidgetProviderInfo.minSpanX;
            launcherAppWidgetInfo.minSpanY = launcherAppWidgetProviderInfo.minSpanY;
            view = this.mAppWidgetHost.createView((Context)this, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetProviderInfo);
        }
        else {
            view = new PendingAppWidgetHostView((Context)this, launcherAppWidgetInfo, this.mIconCache, false);
        }
        this.prepareAppWidget(view, launcherAppWidgetInfo);
        this.mWorkspace.addInScreen((View)view, launcherAppWidgetInfo);
        this.mWorkspace.requestLayout();
    }
    
    public void bindAppsAdded(final ArrayList list, final ArrayList list2, final ArrayList list3, final ArrayList list4) {
        if (this.waitUntilResume(new Launcher$24(this, list, list2, list3, list4))) {
            return;
        }
        if (list != null) {
            this.bindAddScreens(list);
        }
        if (list2 != null && (list2.isEmpty() ^ true)) {
            this.bindItems(list2, 0, list2.size(), false);
        }
        if (list3 != null && (list3.isEmpty() ^ true)) {
            this.bindItems(list3, 0, list3.size(), true);
        }
        this.mWorkspace.removeExtraEmptyScreen(false, false);
        if (list4 != null && this.mAppsView != null) {
            this.mAppsView.addApps(list4);
        }
    }
    
    public void bindAppsUpdated(final ArrayList list) {
        if (this.waitUntilResume(new Launcher$32(this, list))) {
            return;
        }
        if (this.mAppsView != null) {
            this.mAppsView.updateApps(list);
        }
    }
    
    public void bindDeepShortcutMap(final MultiHashMap deepShortcutMap) {
        this.mPopupDataProvider.setDeepShortcutMap(deepShortcutMap);
    }
    
    public void bindItems(final ArrayList list, int i, final int n, final boolean b) {
        if (this.waitUntilResume(new Launcher$25(this, list, i, n, b))) {
            return;
        }
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final ArrayList<ValueAnimator> list2 = new ArrayList<ValueAnimator>();
        final boolean b2 = b && this.canRunNewAppsAnimation();
        final Workspace mWorkspace = this.mWorkspace;
        long n2 = -1;
        while (i < n) {
            final ItemInfo itemInfo = list.get(i);
            long screenId = 0L;
            Label_0136: {
                if (itemInfo.container == -101 && this.mHotseat == null) {
                    screenId = n2;
                }
                else {
                    Object o = null;
                    switch (itemInfo.itemType) {
                        default: {
                            throw new RuntimeException("Invalid Item Type");
                        }
                        case 0:
                        case 1:
                        case 6: {
                            o = this.createShortcut((ShortcutInfo)itemInfo);
                            break;
                        }
                        case 2: {
                            o = FolderIcon.fromXml(2130968595, this, (ViewGroup)mWorkspace.getChildAt(mWorkspace.getCurrentPage()), (FolderInfo)itemInfo);
                            break;
                        }
                        case 4: {
                            final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo)itemInfo;
                            if (this.mIsSafeModeEnabled) {
                                o = new PendingAppWidgetHostView((Context)this, launcherAppWidgetInfo, this.mIconCache, true);
                            }
                            else {
                                final LauncherAppWidgetProviderInfo launcherAppWidgetInfo2 = this.mAppWidgetManager.getLauncherAppWidgetInfo(launcherAppWidgetInfo.appWidgetId);
                                if (launcherAppWidgetInfo2 == null) {
                                    this.deleteWidgetInfo(launcherAppWidgetInfo);
                                    screenId = n2;
                                    break Label_0136;
                                }
                                o = this.mAppWidgetHost.createView((Context)this, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo2);
                            }
                            this.prepareAppWidget((AppWidgetHostView)o, launcherAppWidgetInfo);
                            break;
                        }
                    }
                    if (itemInfo.container == -100) {
                        final CellLayout screenWithId = this.mWorkspace.getScreenWithId(itemInfo.screenId);
                        if (screenWithId != null && screenWithId.isOccupied(itemInfo.cellX, itemInfo.cellY)) {
                            Log.d("Launcher", "Collision while binding workspace item: " + itemInfo + ". Collides with " + screenWithId.getChildAt(itemInfo.cellX, itemInfo.cellY).getTag());
                            this.getModelWriter().deleteItemFromDatabase(itemInfo);
                            screenId = n2;
                            break Label_0136;
                        }
                    }
                    mWorkspace.addInScreenFromBind((View)o, itemInfo);
                    if (b2) {
                        ((View)o).setAlpha(0.0f);
                        ((View)o).setScaleX(0.0f);
                        ((View)o).setScaleY(0.0f);
                        list2.add(this.createNewAppBounceAnimation((View)o, i));
                        screenId = itemInfo.screenId;
                    }
                    else {
                        screenId = n2;
                    }
                }
            }
            ++i;
            n2 = screenId;
        }
        if (b2 && n2 > -1) {
            final long screenIdForPageIndex = this.mWorkspace.getScreenIdForPageIndex(this.mWorkspace.getNextPage());
            final int pageIndexForScreenId = this.mWorkspace.getPageIndexForScreenId(n2);
            final Launcher$26 launcher$26 = new Launcher$26(this, animatorSet, list2);
            if (n2 != screenIdForPageIndex) {
                this.mWorkspace.postDelayed((Runnable)new Launcher$27(this, pageIndexForScreenId, launcher$26), (long)Launcher.NEW_APPS_PAGE_MOVE_DELAY);
            }
            else {
                this.mWorkspace.postDelayed((Runnable)launcher$26, (long)Launcher.NEW_APPS_ANIMATION_DELAY);
            }
        }
        mWorkspace.requestLayout();
    }
    
    public void bindRestoreItemsChange(final HashSet set) {
        if (this.waitUntilResume(new Launcher$35(this, set))) {
            return;
        }
        this.mWorkspace.updateRestoreItems(set);
    }
    
    public void bindScreens(final ArrayList list) {
        final long n = 0L;
        if (list.indexOf(n) != 0) {
            list.remove(n);
            list.add(0, n);
            final LauncherModel mModel = this.mModel;
            LauncherModel.updateWorkspaceScreenOrder((Context)this, list);
        }
        this.bindAddScreens(list);
        if (this.hasCustomContentToLeft()) {
            this.mWorkspace.createCustomContentContainer();
            this.populateCustomContentContainer();
        }
        this.mWorkspace.unlockWallpaperFromDefaultPageOnNextLayout();
    }
    
    public void bindShortcutsChanged(final ArrayList list, final ArrayList list2, final UserHandle userHandle) {
        if (this.waitUntilResume(new Launcher$34(this, list, list2, userHandle))) {
            return;
        }
        if (!list.isEmpty()) {
            this.mWorkspace.updateShortcuts(list);
        }
        if (!list2.isEmpty()) {
            final HashSet<ComponentName> set = new HashSet<ComponentName>();
            final HashSet<ShortcutKey> set2 = new HashSet<ShortcutKey>();
            for (final ShortcutInfo shortcutInfo : list2) {
                if (shortcutInfo.itemType == 6) {
                    set2.add(ShortcutKey.fromItemInfo(shortcutInfo));
                }
                else {
                    set.add(shortcutInfo.getTargetComponent());
                }
            }
            if (!set.isEmpty()) {
                final ItemInfoMatcher ofComponents = ItemInfoMatcher.ofComponents(set, userHandle);
                this.mWorkspace.removeItemsByMatcher(ofComponents);
                this.mDragController.onAppsRemoved(ofComponents);
            }
            if (!set2.isEmpty()) {
                final ItemInfoMatcher ofShortcutKeys = ItemInfoMatcher.ofShortcutKeys(set2);
                this.mWorkspace.removeItemsByMatcher(ofShortcutKeys);
                this.mDragController.onAppsRemoved(ofShortcutKeys);
            }
        }
    }
    
    public void bindWidgetsRestored(final ArrayList list) {
        if (this.waitUntilResume(new Launcher$33(this, list))) {
            return;
        }
        this.mWorkspace.widgetsRestored(list);
    }
    
    public void bindWorkspaceComponentsRemoved(final HashSet set, final HashSet set2, final UserHandle userHandle) {
        if (this.waitUntilResume(new Launcher$36(this, set, set2, userHandle))) {
            return;
        }
        if (!set.isEmpty()) {
            final ItemInfoMatcher ofPackages = ItemInfoMatcher.ofPackages(set, userHandle);
            this.mWorkspace.removeItemsByMatcher(ofPackages);
            this.mDragController.onAppsRemoved(ofPackages);
        }
        if (!set2.isEmpty()) {
            final ItemInfoMatcher ofComponents = ItemInfoMatcher.ofComponents(set2, userHandle);
            this.mWorkspace.removeItemsByMatcher(ofComponents);
            this.mDragController.onAppsRemoved(ofComponents);
        }
    }
    
    public void clearPendingBinds() {
        this.mBindOnResumeCallbacks.clear();
        if (this.mPendingExecutor != null) {
            this.mPendingExecutor.markCompleted();
            this.mPendingExecutor = null;
        }
    }
    
    public void clearPendingExecutor(final ViewOnDrawExecutor viewOnDrawExecutor) {
        if (this.mPendingExecutor == viewOnDrawExecutor) {
            this.mPendingExecutor = null;
        }
    }
    
    public void clearTypedText() {
        this.mDefaultKeySsb.clear();
        this.mDefaultKeySsb.clearSpans();
        Selection.setSelection((Spannable)this.mDefaultKeySsb, 0);
    }
    
    void completeAddAppWidget(int n, final ItemInfo itemInfo, AppWidgetHostView view, LauncherAppWidgetProviderInfo launcherAppWidgetInfo) {
        if (launcherAppWidgetInfo == null) {
            launcherAppWidgetInfo = this.mAppWidgetManager.getLauncherAppWidgetInfo(n);
        }
        if (launcherAppWidgetInfo.isCustomWidget) {
            n = -100;
        }
        final LauncherAppWidgetInfo launcherAppWidgetInfo2 = new LauncherAppWidgetInfo(n, launcherAppWidgetInfo.provider);
        launcherAppWidgetInfo2.spanX = itemInfo.spanX;
        launcherAppWidgetInfo2.spanY = itemInfo.spanY;
        launcherAppWidgetInfo2.minSpanX = itemInfo.minSpanX;
        launcherAppWidgetInfo2.minSpanY = itemInfo.minSpanY;
        launcherAppWidgetInfo2.user = launcherAppWidgetInfo.getUser();
        this.getModelWriter().addItemToDatabase(launcherAppWidgetInfo2, itemInfo.container, itemInfo.screenId, itemInfo.cellX, itemInfo.cellY);
        if (view == null) {
            view = this.mAppWidgetHost.createView((Context)this, n, launcherAppWidgetInfo);
        }
        view.setVisibility(0);
        this.prepareAppWidget(view, launcherAppWidgetInfo2);
        this.mWorkspace.addInScreen((View)view, launcherAppWidgetInfo2);
    }
    
    void completeTwoStageWidgetDrop(final int n, final int n2, final PendingRequestArgs pendingRequestArgs) {
        int n3 = 0;
        Object o = null;
        final CellLayout screenWithId = this.mWorkspace.getScreenWithId(pendingRequestArgs.screenId);
        Runnable runnable;
        if (n == -1) {
            final int n4 = 3;
            final AppWidgetHostView view = this.mAppWidgetHost.createView((Context)this, n2, pendingRequestArgs.getWidgetHandler().getProviderInfo((Context)this));
            final Launcher$9 launcher$9 = new Launcher$9(this, n2, pendingRequestArgs, view, n);
            n3 = n4;
            o = view;
            runnable = launcher$9;
        }
        else if (n == 0) {
            this.mAppWidgetHost.deleteAppWidgetId(n2);
            n3 = 4;
            runnable = null;
        }
        else {
            runnable = null;
        }
        if (this.mDragLayer.getAnimatedView() != null) {
            this.mWorkspace.animateWidgetDrop(pendingRequestArgs, screenWithId, (DragView)this.mDragLayer.getAnimatedView(), runnable, n3, (View)o, true);
        }
        else if (runnable != null) {
            runnable.run();
        }
    }
    
    public View createShortcut(final ViewGroup viewGroup, final ShortcutInfo shortcutInfo) {
        final BubbleTextView bubbleTextView = (BubbleTextView)this.getLayoutInflater().inflate(2130968586, viewGroup, false);
        bubbleTextView.applyFromShortcutInfo(shortcutInfo);
        bubbleTextView.setCompoundDrawablePadding(this.mDeviceProfile.iconDrawablePaddingPx);
        bubbleTextView.setOnClickListener((View$OnClickListener)this);
        bubbleTextView.setOnFocusChangeListener((View$OnFocusChangeListener)this.mFocusHandler);
        return (View)bubbleTextView;
    }
    
    View createShortcut(final ShortcutInfo shortcutInfo) {
        return this.createShortcut((ViewGroup)this.mWorkspace.getChildAt(this.mWorkspace.getCurrentPage()), shortcutInfo);
    }
    
    public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
        return keyEvent.getKeyCode() == 3 || super.dispatchKeyEvent(keyEvent);
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        final boolean dispatchPopulateAccessibilityEvent = super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        final List text = accessibilityEvent.getText();
        text.clear();
        if (this.mState == Launcher$State.APPS) {
            text.add(this.getString(2131492915));
        }
        else if (this.mState == Launcher$State.WIDGETS) {
            text.add(this.getString(2131492941));
        }
        else if (this.mWorkspace != null) {
            text.add(this.mWorkspace.getCurrentPageDescription());
        }
        else {
            text.add(this.getString(2131492916));
        }
        return dispatchPopulateAccessibilityEvent;
    }
    
    public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
        this.mLastDispatchTouchEventX = motionEvent.getX();
        return super.dispatchTouchEvent(motionEvent);
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        int i = 0;
        super.dump(s, fileDescriptor, printWriter, array);
        while (true) {
            if (array.length <= 0 || !TextUtils.equals((CharSequence)array[0], (CharSequence)"--all")) {
                break Label_0450;
            }
            printWriter.println(s + "Workspace Items");
            for (int j = this.mWorkspace.numCustomPages(); j < this.mWorkspace.getPageCount(); ++j) {
                printWriter.println(s + "  Homescreen " + j);
                final ShortcutAndWidgetContainer shortcutsAndWidgets = ((CellLayout)this.mWorkspace.getPageAt(j)).getShortcutsAndWidgets();
                for (int k = 0; k < shortcutsAndWidgets.getChildCount(); ++k) {
                    final Object tag = shortcutsAndWidgets.getChildAt(k).getTag();
                    if (tag != null) {
                        printWriter.println(s + "    " + tag.toString());
                    }
                }
            }
            printWriter.println(s + "  Hotseat");
            for (ShortcutAndWidgetContainer shortcutsAndWidgets2 = this.mHotseat.getLayout().getShortcutsAndWidgets(); i < shortcutsAndWidgets2.getChildCount(); ++i) {
                final Object tag2 = shortcutsAndWidgets2.getChildAt(i).getTag();
                if (tag2 != null) {
                    printWriter.println(s + "    " + tag2.toString());
                }
            }
            try {
                FileLog.flushAll(printWriter);
                printWriter.println(s + "Misc:");
                printWriter.print(s + "\tmWorkspaceLoading=" + this.mWorkspaceLoading);
                printWriter.print(" mPendingRequestArgs=" + this.mPendingRequestArgs);
                printWriter.println(" mPendingActivityResult=" + this.mPendingActivityResult);
                this.mModel.dumpState(s, fileDescriptor, printWriter, array);
                if (this.mLauncherCallbacks != null) {
                    this.mLauncherCallbacks.dump(s, fileDescriptor, printWriter, array);
                }
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    public void enterSpringLoadedDragMode() {
        if (this.isStateSpringLoaded()) {
            return;
        }
        this.mStateTransitionAnimation.startAnimationToWorkspace(this.mState, this.mWorkspace.getState(), Workspace$State.SPRING_LOADED, true, null);
        this.setState(Launcher$State.WORKSPACE_SPRING_LOADED);
    }
    
    public void executeOnNextDraw(final ViewOnDrawExecutor mPendingExecutor) {
        if (this.mPendingExecutor != null) {
            this.mPendingExecutor.markCompleted();
        }
        (this.mPendingExecutor = mPendingExecutor).attachTo(this);
    }
    
    public void exitSpringLoadedDragMode() {
        final boolean b = true;
        if (this.mState == Launcher$State.APPS_SPRING_LOADED) {
            this.showAppsView(b, false, false);
        }
        else if (this.mState == Launcher$State.WIDGETS_SPRING_LOADED) {
            this.showWidgetsView(b, false);
        }
        else if (this.mState == Launcher$State.WORKSPACE_SPRING_LOADED) {
            this.showWorkspace(b);
        }
    }
    
    public void exitSpringLoadedDragModeDelayed(final boolean b, final int n, final Runnable runnable) {
        if (!this.isStateSpringLoaded()) {
            return;
        }
        if (this.mExitSpringLoadedModeRunnable != null) {
            this.mHandler.removeCallbacks(this.mExitSpringLoadedModeRunnable);
        }
        this.mExitSpringLoadedModeRunnable = new Launcher$23(this, b, runnable);
        this.mHandler.postDelayed(this.mExitSpringLoadedModeRunnable, (long)n);
    }
    
    public View findViewById(final int n) {
        return this.mLauncherView.findViewById(n);
    }
    
    public void finishBindingItems() {
        if (this.waitUntilResume(new Launcher$31(this))) {
            return;
        }
        this.mWorkspace.restoreInstanceStateForRemainingPages();
        this.setWorkspaceLoading(false);
        if (this.mPendingActivityResult != null) {
            this.handleActivityResult(this.mPendingActivityResult.requestCode, this.mPendingActivityResult.resultCode, this.mPendingActivityResult.data);
            this.mPendingActivityResult = null;
        }
        InstallShortcutReceiver.disableAndFlushInstallQueue((Context)this);
        NotificationListener.setNotificationsChangedListener(this.mPopupDataProvider);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.finishBindingItems(false);
        }
    }
    
    public void finishFirstPageBind(final ViewOnDrawExecutor viewOnDrawExecutor) {
        final float n = 1.0f;
        if (this.waitUntilResume(new Launcher$29(this, viewOnDrawExecutor))) {
            return;
        }
        final Launcher$30 launcher$30 = new Launcher$30(this, viewOnDrawExecutor);
        if (this.mDragLayer.getAlpha() < n) {
            this.mDragLayer.animate().alpha(n).withEndAction((Runnable)launcher$30).start();
        }
        else {
            launcher$30.run();
        }
    }
    
    public LauncherAccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }
    
    public Bundle getActivityLaunchOptions(final View view) {
        int n = 0;
        if (Utilities.ATLEAST_MARSHMALLOW) {
            final int measuredWidth = view.getMeasuredWidth();
            final int measuredHeight = view.getMeasuredHeight();
            Label_0138: {
                if (!(view instanceof TextView)) {
                    break Label_0138;
                }
                final Drawable textViewIcon = Workspace.getTextViewIcon((TextView)view);
                if (textViewIcon == null) {
                    break Label_0138;
                }
                final Rect bounds = textViewIcon.getBounds();
                n = (measuredWidth - bounds.width()) / 2;
                final int paddingTop = view.getPaddingTop();
                final int width = bounds.width();
                final int height = bounds.height();
                return ActivityOptions.makeClipRevealAnimation((View)view, n, paddingTop, width, height).toBundle();
            }
            final int height = measuredHeight;
            final int width = measuredWidth;
            final int paddingTop = 0;
            return ActivityOptions.makeClipRevealAnimation((View)view, n, paddingTop, width, height).toBundle();
        }
        if (Utilities.ATLEAST_LOLLIPOP_MR1) {
            return ActivityOptions.makeCustomAnimation((Context)this, 2131034114, 2131034113).toBundle();
        }
        return null;
    }
    
    public LauncherAppWidgetHost getAppWidgetHost() {
        return this.mAppWidgetHost;
    }
    
    public AllAppsContainerView getAppsView() {
        return this.mAppsView;
    }
    
    public CellLayout getCellLayout(final long n, final long n2) {
        if (n != -101) {
            return this.mWorkspace.getScreenWithId(n2);
        }
        if (this.mHotseat != null) {
            return this.mHotseat.getLayout();
        }
        return null;
    }
    
    public int getCurrentWorkspaceScreen() {
        if (this.mWorkspace != null) {
            return this.mWorkspace.getCurrentPage();
        }
        return 0;
    }
    
    public DragController getDragController() {
        return this.mDragController;
    }
    
    public DragLayer getDragLayer() {
        return this.mDragLayer;
    }
    
    public DropTargetBar getDropTargetBar() {
        return this.mDropTargetBar;
    }
    
    public View$OnTouchListener getHapticFeedbackTouchListener() {
        if (this.mHapticFeedbackTouchListener == null) {
            this.mHapticFeedbackTouchListener = (View$OnTouchListener)new Launcher$20(this);
        }
        return this.mHapticFeedbackTouchListener;
    }
    
    public Hotseat getHotseat() {
        return this.mHotseat;
    }
    
    public LauncherModel getModel() {
        return this.mModel;
    }
    
    public ModelWriter getModelWriter() {
        return this.mModelWriter;
    }
    
    public ViewGroup getOverviewPanel() {
        return this.mOverviewPanel;
    }
    
    public PopupDataProvider getPopupDataProvider() {
        return this.mPopupDataProvider;
    }
    
    public View getQsbContainer() {
        return this.mQsbContainer;
    }
    
    public SharedPreferences getSharedPrefs() {
        return this.mSharedPrefs;
    }
    
    public View getStartViewForAllAppsRevealAnimation() {
        return (View)this.mWorkspace.getPageIndicator();
    }
    
    public Rect getViewBounds(final View view) {
        final int n = 1;
        final int[] array = new int[2];
        view.getLocationOnScreen(array);
        return new Rect(array[0], array[n], array[0] + view.getWidth(), array[n] + view.getHeight());
    }
    
    public int getViewIdForItem(final ItemInfo itemInfo) {
        return (int)itemInfo.id;
    }
    
    public View getWidgetsButton() {
        return this.mWidgetsButton;
    }
    
    public List getWidgetsForPackageUser(final PackageUserKey packageUserKey) {
        return this.mWidgetsView.getWidgetsForPackageUser(packageUserKey);
    }
    
    public WidgetsContainerView getWidgetsView() {
        return this.mWidgetsView;
    }
    
    public Workspace getWorkspace() {
        return this.mWorkspace;
    }
    
    protected boolean hasCustomContentToLeft() {
        return this.mLauncherCallbacks != null && this.mLauncherCallbacks.hasCustomContentToLeft();
    }
    
    protected boolean hasSettings() {
        if (this.mLauncherCallbacks != null) {
            return this.mLauncherCallbacks.hasSettings();
        }
        return Utilities.isAtLeastO() || (this.getResources().getBoolean(2131689477) ^ true);
    }
    
    public boolean isAllAppsVisible() {
        return this.isAppsViewVisible();
    }
    
    public boolean isAppsViewVisible() {
        boolean b = true;
        if (this.mState != Launcher$State.APPS && this.mOnResumeState != Launcher$State.APPS) {
            b = false;
        }
        return b;
    }
    
    public boolean isDraggingEnabled() {
        return this.isWorkspaceLoading() ^ true;
    }
    
    boolean isHotseatLayout(final View view) {
        boolean b = false;
        if (this.mHotseat != null && view != null && view instanceof CellLayout && view == this.mHotseat.getLayout()) {
            b = true;
        }
        return b;
    }
    
    public boolean isOnCustomContent() {
        return this.mWorkspace.isOnOrMovingToCustomContent();
    }
    
    boolean isStateSpringLoaded() {
        boolean b = true;
        if (this.mState != Launcher$State.WORKSPACE_SPRING_LOADED && this.mState != Launcher$State.APPS_SPRING_LOADED && this.mState != Launcher$State.WIDGETS_SPRING_LOADED) {
            b = false;
        }
        return b;
    }
    
    public boolean isWidgetsViewVisible() {
        boolean b = true;
        if (this.mState != Launcher$State.WIDGETS && this.mOnResumeState != Launcher$State.WIDGETS) {
            b = false;
        }
        return b;
    }
    
    public boolean isWorkspaceLoading() {
        return this.mWorkspaceLoading;
    }
    
    public boolean isWorkspaceLocked() {
        boolean b = true;
        if (this.mWorkspaceLoading && this.mPendingRequestArgs == null) {
            b = false;
        }
        return b;
    }
    
    void lockAllApps() {
    }
    
    public void lockScreenOrientation() {
        if (this.mRotationEnabled) {
            this.setRequestedOrientation(14);
        }
    }
    
    protected void moveWorkspaceToDefaultScreen() {
        this.mWorkspace.moveToDefaultScreen(false);
    }
    
    public void notifyWidgetProvidersChanged() {
        if (this.mWorkspace.getState().shouldUpdateWidget) {
            this.refreshAndBindWidgetsForPackageUser(null);
        }
    }
    
    public void onAccessibilityStateChanged(final boolean b) {
        this.mDragLayer.onAccessibilityStateChanged(b);
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        this.handleActivityResult(n, n2, intent);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onActivityResult(n, n2, intent);
        }
    }
    
    public void onAppWidgetHostReset() {
        if (this.mAppWidgetHost != null) {
            this.mAppWidgetHost.startListening();
        }
    }
    
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.registerReceiver(this.mReceiver, intentFilter);
        FirstFrameAnimatorHelper.initializeDrawListener(this.getWindow().getDecorView());
        this.mAttached = true;
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onAttachedToWindow();
        }
    }
    
    public void onBackPressed() {
        final int n = 1;
        if (this.mLauncherCallbacks != null && this.mLauncherCallbacks.handleBackPressed()) {
            return;
        }
        if (this.mDragController.isDragging()) {
            this.mDragController.cancelDrag();
            return;
        }
        final UserEventDispatcher userEventDispatcher = this.getUserEventDispatcher();
        final AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this);
        if (topOpenView != null) {
            if (topOpenView.getActiveTextView() != null) {
                topOpenView.getActiveTextView().dispatchBackKey();
            }
            else {
                if (topOpenView instanceof PopupContainerWithArrow) {
                    userEventDispatcher.logActionCommand(n, ((Folder)topOpenView).getExtendedTouchView(), 9);
                }
                else if (topOpenView instanceof Folder) {
                    userEventDispatcher.logActionCommand(n, (View)((Folder)topOpenView).getFolderIcon(), 3);
                }
                ((Folder)topOpenView).close(n != 0);
            }
        }
        else if (this.isAppsViewVisible()) {
            userEventDispatcher.logActionCommand(n, 4);
            this.showWorkspace(n != 0);
        }
        else if (this.isWidgetsViewVisible()) {
            userEventDispatcher.logActionCommand(n, 5);
            this.showOverviewMode(n != 0);
        }
        else if (this.mWorkspace.isInOverviewMode()) {
            userEventDispatcher.logActionCommand(n, 6);
            this.showWorkspace(n != 0);
        }
        else {
            this.mWorkspace.exitWidgetResizeMode();
            this.mWorkspace.showOutlinesTemporarily();
        }
    }
    
    public void onClick(final View view) {
        final int n = 6;
        final boolean b = true;
        if (view.getWindowToken() == null) {
            return;
        }
        if (!this.mWorkspace.isFinishedSwitchingState()) {
            return;
        }
        if (view instanceof Workspace) {
            if (this.mWorkspace.isInOverviewMode()) {
                this.getUserEventDispatcher().logActionOnContainer(0, 0, n, this.mWorkspace.getCurrentPage());
                this.showWorkspace(b);
            }
            return;
        }
        if (view instanceof CellLayout) {
            if (this.mWorkspace.isInOverviewMode()) {
                final int indexOfChild = this.mWorkspace.indexOfChild((View)view);
                this.getUserEventDispatcher().logActionOnContainer(0, 0, n, indexOfChild);
                this.mWorkspace.snapToPageFromOverView(indexOfChild);
                this.showWorkspace(b);
            }
            return;
        }
        final Object tag = view.getTag();
        if (tag instanceof ShortcutInfo) {
            this.onClickAppShortcut(view);
        }
        else if (tag instanceof FolderInfo) {
            if (view instanceof FolderIcon) {
                this.onClickFolderIcon(view);
            }
        }
        else if ((FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && view instanceof PageIndicator) || (view == this.mAllAppsButton && this.mAllAppsButton != null)) {
            this.onClickAllAppsButton(view);
        }
        else if (tag instanceof AppInfo) {
            this.startAppShortcutOrInfoActivity(view);
        }
        else if (tag instanceof LauncherAppWidgetInfo && view instanceof PendingAppWidgetHostView) {
            this.onClickPendingWidget((PendingAppWidgetHostView)view);
        }
    }
    
    public void onClickAddWidgetButton(final View view) {
        final boolean b = true;
        if (this.mIsSafeModeEnabled) {
            Toast.makeText((Context)this, 2131492898, 0).show();
        }
        else {
            this.showWidgetsView(b, b);
        }
    }
    
    protected void onClickAllAppsButton(final View view) {
        final int n = 1;
        if (!this.isAppsViewVisible()) {
            this.getUserEventDispatcher().logActionOnControl(0, n);
            this.showAppsView(n != 0, n != 0, false);
        }
    }
    
    protected void onClickAppShortcut(final View view) {
        final Object tag = view.getTag();
        if (!(tag instanceof ShortcutInfo)) {
            throw new IllegalArgumentException("Input must be a Shortcut");
        }
        final ShortcutInfo shortcutInfo = (ShortcutInfo)tag;
        if (shortcutInfo.isDisabled == 0 || (shortcutInfo.isDisabled & 0xFFFFFFFB & 0xFFFFFFF7) == 0x0) {
            if (view instanceof BubbleTextView && shortcutInfo.isPromise()) {
                String s;
                if (shortcutInfo.intent.getComponent() != null) {
                    s = shortcutInfo.intent.getComponent().getPackageName();
                }
                else {
                    s = shortcutInfo.intent.getPackage();
                }
                if (!TextUtils.isEmpty((CharSequence)s)) {
                    this.onClickPendingAppItem(view, s, shortcutInfo.hasStatusFlag(4));
                    return;
                }
            }
            this.startAppShortcutOrInfoActivity(view);
            return;
        }
        if (!TextUtils.isEmpty(shortcutInfo.disabledMessage)) {
            Toast.makeText((Context)this, shortcutInfo.disabledMessage, 0).show();
            return;
        }
        final int n = 2131492896;
        int n2;
        if ((shortcutInfo.isDisabled & 0x1) != 0x0) {
            n2 = 2131492897;
        }
        else if ((shortcutInfo.isDisabled & 0x10) != 0x0 || (shortcutInfo.isDisabled & 0x20) != 0x0) {
            n2 = 2131492899;
        }
        else {
            n2 = n;
        }
        Toast.makeText((Context)this, n2, 0).show();
    }
    
    protected void onClickFolderIcon(final View view) {
        if (!(view instanceof FolderIcon)) {
            throw new IllegalArgumentException("Input must be a FolderIcon");
        }
        final Folder folder = ((FolderIcon)view).getFolder();
        if (!folder.isOpen() && (folder.isDestroyed() ^ true)) {
            folder.animateOpen();
        }
    }
    
    public void onClickPendingWidget(final PendingAppWidgetHostView pendingAppWidgetHostView) {
        final int n = 1;
        if (this.mIsSafeModeEnabled) {
            Toast.makeText((Context)this, 2131492898, 0).show();
            return;
        }
        final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo)pendingAppWidgetHostView.getTag();
        if (pendingAppWidgetHostView.isReadyForClickSetup()) {
            final LauncherAppWidgetProviderInfo provider = this.mAppWidgetManager.findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user);
            if (provider == null) {
                return;
            }
            final WidgetAddFlowHandler widgetAddFlowHandler = new WidgetAddFlowHandler(provider);
            if (launcherAppWidgetInfo.hasRestoreFlag(n)) {
                if (!launcherAppWidgetInfo.hasRestoreFlag(16)) {
                    return;
                }
                widgetAddFlowHandler.startBindFlow(this, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo, 14);
            }
            else {
                widgetAddFlowHandler.startConfigActivity(this, launcherAppWidgetInfo, 12);
            }
        }
        else {
            final String packageName = launcherAppWidgetInfo.providerName.getPackageName();
            boolean b;
            if (launcherAppWidgetInfo.installProgress >= 0) {
                b = (n != 0);
            }
            else {
                b = false;
            }
            this.onClickPendingAppItem((View)pendingAppWidgetHostView, packageName, b);
        }
    }
    
    public void onClickSettingsButton(final View view) {
        final Intent setPackage = new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(this.getPackageName());
        setPackage.setSourceBounds(this.getViewBounds(view));
        setPackage.addFlags(268435456);
        this.startActivity(setPackage, this.getActivityLaunchOptions(view));
    }
    
    public void onClickWallpaperPicker(final View view) {
        if (!Utilities.isWallpaperAllowed((Context)this)) {
            Toast.makeText((Context)this, 2131492944, 0).show();
            return;
        }
        final float wallpaperOffsetForScroll = this.mWorkspace.mWallpaperOffset.wallpaperOffsetForScroll(this.mWorkspace.getScrollForPage(this.mWorkspace.getPageNearestToCenterOfScreen()));
        this.setWaitingForResult(new PendingRequestArgs(new ItemInfo()));
        final Intent putExtra = new Intent("android.intent.action.SET_WALLPAPER").putExtra("com.android.launcher3.WALLPAPER_OFFSET", wallpaperOffsetForScroll);
        final String string = this.getString(2131492891);
        final boolean empty = TextUtils.isEmpty((CharSequence)string);
        if (!empty) {
            putExtra.setPackage(string);
        }
        putExtra.setSourceBounds(this.getViewBounds(view));
        Label_0182: {
            if (!empty) {
                break Label_0182;
            }
            try {
                Bundle activityLaunchOptions = this.getActivityLaunchOptions(view);
                while (true) {
                    this.startActivityForResult(putExtra, 10, activityLaunchOptions);
                    return;
                    activityLaunchOptions = null;
                    continue;
                }
            }
            catch (ActivityNotFoundException ex) {
                this.setWaitingForResult(null);
                Toast.makeText((Context)this, 2131492895, 0).show();
            }
        }
    }
    
    protected void onCreate(final Bundle bundle) {
        final boolean b = true;
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.preOnCreate();
        }
        super.onCreate(bundle);
        final LauncherAppState instance = LauncherAppState.getInstance((Context)this);
        this.mDeviceProfile = instance.getInvariantDeviceProfile().getDeviceProfile((Context)this);
        if (this.isInMultiWindowModeCompat()) {
            final Display defaultDisplay = this.getWindowManager().getDefaultDisplay();
            final Point point = new Point();
            defaultDisplay.getSize(point);
            this.mDeviceProfile = this.mDeviceProfile.getMultiWindowProfile((Context)this, point);
        }
        this.mSharedPrefs = Utilities.getPrefs((Context)this);
        this.mIsSafeModeEnabled = this.getPackageManager().isSafeMode();
        this.mModel = instance.setLauncher(this);
        this.mModelWriter = this.mModel.getWriter(this.mDeviceProfile.isVerticalBarLayout());
        this.mIconCache = instance.getIconCache();
        this.mAccessibilityDelegate = new LauncherAccessibilityDelegate(this);
        this.mDragController = new DragController(this);
        this.mAllAppsController = new AllAppsTransitionController(this);
        this.mStateTransitionAnimation = new LauncherStateTransitionAnimation(this, this.mAllAppsController);
        this.mAppWidgetManager = AppWidgetManagerCompat.getInstance((Context)this);
        (this.mAppWidgetHost = new LauncherAppWidgetHost(this, 1024)).startListening();
        this.mPaused = false;
        this.mLauncherView = this.getLayoutInflater().inflate(2130968598, (ViewGroup)null);
        this.setupViews();
        this.mDeviceProfile.layout(this, false);
        this.mExtractedColors = new ExtractedColors();
        this.loadExtractedColorsAndColorItems();
        this.mPopupDataProvider = new PopupDataProvider(this);
        ((AccessibilityManager)this.getSystemService("accessibility")).addAccessibilityStateChangeListener((AccessibilityManager$AccessibilityStateChangeListener)this);
        this.lockAllApps();
        this.restoreState(bundle);
        int int1 = -1001;
        if (bundle != null) {
            int1 = bundle.getInt("launcher.current_screen", int1);
        }
        if (!this.mModel.startLoader(int1)) {
            this.mDragLayer.setAlpha(0.0f);
        }
        else {
            this.mWorkspace.setCurrentPage(int1);
            this.setWorkspaceLoading(b);
        }
        Selection.setSelection((Spannable)(this.mDefaultKeySsb = new SpannableStringBuilder()), 0);
        if (!(this.mRotationEnabled = this.getResources().getBoolean(2131689477))) {
            this.mRotationEnabled = Utilities.isAllowRotationPrefEnabled(this.getApplicationContext());
            this.mRotationPrefChangeHandler = new Launcher$RotationPrefChangeHandler(this, null);
            this.mSharedPrefs.registerOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this.mRotationPrefChangeHandler);
        }
        if (PinItemDragListener.handleDragRequest(this, this.getIntent())) {
            this.mRotationEnabled = b;
        }
        this.setOrientation();
        this.setContentView(this.mLauncherView);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onCreate(bundle);
        }
    }
    
    public void onDestroy() {
        super.onDestroy();
        this.mWorkspace.removeCallbacks(this.mBuildLayersRunnable);
        this.mWorkspace.removeFolderListeners();
        if (this.mModel.isCurrentCallbacks(this)) {
            this.mModel.stopLoader();
            LauncherAppState.getInstance((Context)this).setLauncher(null);
        }
        if (this.mRotationPrefChangeHandler != null) {
            this.mSharedPrefs.unregisterOnSharedPreferenceChangeListener((SharedPreferences$OnSharedPreferenceChangeListener)this.mRotationPrefChangeHandler);
        }
        try {
            final LauncherAppWidgetHost mAppWidgetHost = this.mAppWidgetHost;
            try {
                mAppWidgetHost.stopListening();
                this.mAppWidgetHost = null;
                TextKeyListener.getInstance().release();
                ((AccessibilityManager)this.getSystemService("accessibility")).removeAccessibilityStateChangeListener((AccessibilityManager$AccessibilityStateChangeListener)this);
                LauncherAnimUtils.onDestroyActivity();
                if (this.mLauncherCallbacks != null) {
                    this.mLauncherCallbacks.onDestroy();
                }
            }
            catch (NullPointerException ex) {
                Log.w("Launcher", "problem while stopping AppWidgetHost during Launcher destruction", (Throwable)ex);
            }
        }
        catch (NullPointerException ex2) {}
    }
    
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttached) {
            this.unregisterReceiver(this.mReceiver);
            this.mAttached = false;
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onDetachedFromWindow();
        }
    }
    
    public void onDragStarted() {
        if (this.isOnCustomContent()) {
            this.moveWorkspaceToDefaultScreen();
        }
    }
    
    public void onExtractedColorsChanged() {
        this.loadExtractedColorsAndColorItems();
    }
    
    public void onInsetsChanged(final Rect rect) {
        this.mDeviceProfile.updateInsets(rect);
        this.mDeviceProfile.layout(this, true);
    }
    
    protected void onInteractionBegin() {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onInteractionBegin();
        }
    }
    
    protected void onInteractionEnd() {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onInteractionEnd();
        }
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        boolean b = false;
        final int unicodeChar = keyEvent.getUnicodeChar();
        final boolean onKeyDown = super.onKeyDown(n, keyEvent);
        if (unicodeChar > 0) {
            b = (Character.isWhitespace(unicodeChar) ^ true);
        }
        if (!onKeyDown && this.acceptFilter() && b && TextKeyListener.getInstance().onKeyDown((View)this.mWorkspace, (Editable)this.mDefaultKeySsb, n, keyEvent) && this.mDefaultKeySsb != null && this.mDefaultKeySsb.length() > 0) {
            return this.onSearchRequested();
        }
        return (n == 82 && keyEvent.isLongPress()) || onKeyDown;
    }
    
    public boolean onKeyShortcut(final int n, final KeyEvent keyEvent) {
        final boolean b = true;
        if (keyEvent.hasModifiers(4096)) {
            switch (n) {
                case 29: {
                    if (this.mState == Launcher$State.WORKSPACE) {
                        this.showAppsView(b, b, false);
                        return b;
                    }
                    break;
                }
                case 47: {
                    final View currentFocus = this.getCurrentFocus();
                    if (currentFocus instanceof BubbleTextView && currentFocus.getTag() instanceof ItemInfo && this.mAccessibilityDelegate.performAction(currentFocus, (ItemInfo)currentFocus.getTag(), 2131623951)) {
                        PopupContainerWithArrow.getOpen(this).requestFocus();
                        return b;
                    }
                    break;
                }
                case 43: {
                    if (new CustomActionsPopup(this, this.getCurrentFocus()).show()) {
                        return b;
                    }
                    break;
                }
            }
        }
        return super.onKeyShortcut(n, keyEvent);
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        final boolean b = true;
        if (n == 82) {
            if (!this.isOnCustomContent() && (this.mDragController.isDragging() ^ true)) {
                AbstractFloatingView.closeAllOpenViews(this);
                this.mWorkspace.exitWidgetResizeMode();
                if (this.mState == Launcher$State.WORKSPACE && (this.mWorkspace.isInOverviewMode() ^ true) && (this.mWorkspace.isSwitchingState() ^ true)) {
                    this.mOverviewPanel.requestFocus();
                    this.showOverviewMode(b, b);
                }
            }
            return b;
        }
        return super.onKeyUp(n, keyEvent);
    }
    
    public void onLauncherProviderChanged() {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onLauncherProviderChange();
        }
    }
    
    public boolean onLongClick(final View view) {
        CellLayout$CellInfo cellLayout$CellInfo = null;
        final int n = 1;
        if (!this.isDraggingEnabled()) {
            return false;
        }
        if (this.isWorkspaceLocked()) {
            return false;
        }
        if (this.mState != Launcher$State.WORKSPACE) {
            return false;
        }
        if ((FeatureFlags.LAUNCHER3_ALL_APPS_PULL_UP && view instanceof PageIndicator) || (view == this.mAllAppsButton && this.mAllAppsButton != null)) {
            this.onLongClickAllAppsButton(view);
            return n != 0;
        }
        final boolean shouldIgnoreLongPressToOverview = this.mDeviceProfile.shouldIgnoreLongPressToOverview(this.mLastDispatchTouchEventX);
        if (!(view instanceof Workspace)) {
            View cell;
            if (view.getTag() instanceof ItemInfo) {
                final CellLayout$CellInfo cellLayout$CellInfo2 = new CellLayout$CellInfo(view, (ItemInfo)view.getTag());
                cell = cellLayout$CellInfo2.cell;
                this.mPendingRequestArgs = null;
                cellLayout$CellInfo = cellLayout$CellInfo2;
            }
            else {
                cell = null;
            }
            if (!this.mDragController.isDragging()) {
                if (cell == null) {
                    if (this.mWorkspace.isInOverviewMode()) {
                        this.mWorkspace.startReordering(view);
                        this.getUserEventDispatcher().logActionOnContainer(n, 0, 6);
                    }
                    else {
                        if (shouldIgnoreLongPressToOverview) {
                            return false;
                        }
                        this.getUserEventDispatcher().logActionOnContainer(n, 0, n, this.mWorkspace.getCurrentPage());
                        this.showOverviewMode(n != 0);
                    }
                    this.mWorkspace.performHapticFeedback(0, n);
                }
                else if (!(cell instanceof Folder) || n == 0) {
                    this.mWorkspace.startDrag(cellLayout$CellInfo, new DragOptions());
                }
            }
            return n != 0;
        }
        if (this.mWorkspace.isInOverviewMode()) {
            return false;
        }
        if (!this.mWorkspace.isTouchActive() && (shouldIgnoreLongPressToOverview ^ true)) {
            this.getUserEventDispatcher().logActionOnContainer(n, 0, n, this.mWorkspace.getCurrentPage());
            this.showOverviewMode(n != 0);
            this.mWorkspace.performHapticFeedback(0, n);
            return n != 0;
        }
        return false;
    }
    
    protected void onLongClickAllAppsButton(final View view) {
        final int n = 1;
        if (!this.isAppsViewVisible()) {
            this.getUserEventDispatcher().logActionOnControl(n, n);
            this.showAppsView(n != 0, n != 0, n != 0);
        }
    }
    
    protected void onNewIntent(final Intent intent) {
        final int n = 4194304;
        final boolean mMoveToDefaultScreenFromNewIntent = true;
        super.onNewIntent(intent);
        final boolean b = this.mHasFocus && (intent.getFlags() & n) != n && mMoveToDefaultScreenFromNewIntent;
        final boolean b2 = b && this.mState == Launcher$State.WORKSPACE && AbstractFloatingView.getTopOpenView(this) == null && mMoveToDefaultScreenFromNewIntent;
        final boolean equals = "android.intent.action.MAIN".equals(intent.getAction());
        if (equals) {
            if (this.mWorkspace == null) {
                return;
            }
            final UserEventDispatcher userEventDispatcher = this.getUserEventDispatcher();
            this.mWorkspace.exitWidgetResizeMode();
            final AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this);
            if (topOpenView instanceof PopupContainerWithArrow) {
                userEventDispatcher.logActionCommand(0, ((Folder)topOpenView).getExtendedTouchView(), 9);
            }
            else if (topOpenView instanceof Folder) {
                userEventDispatcher.logActionCommand(0, (View)((Folder)topOpenView).getFolderIcon(), 3);
            }
            else if (b) {
                userEventDispatcher.logActionCommand(0, this.mWorkspace.getState().containerType, this.mWorkspace.getCurrentPage());
            }
            AbstractFloatingView.closeAllOpenViews(this, b);
            this.exitSpringLoadedDragMode();
            if (b) {
                this.showWorkspace(mMoveToDefaultScreenFromNewIntent);
            }
            else {
                this.mOnResumeState = Launcher$State.WORKSPACE;
            }
            final View peekDecorView = this.getWindow().peekDecorView();
            if (peekDecorView != null && peekDecorView.getWindowToken() != null) {
                ((InputMethodManager)this.getSystemService("input_method")).hideSoftInputFromWindow(peekDecorView.getWindowToken(), 0);
            }
            if (!b && this.mAppsView != null) {
                this.mAppsView.scrollToTop();
            }
            if (!b && this.mWidgetsView != null) {
                this.mWidgetsView.scrollToTop();
            }
            if (this.mLauncherCallbacks != null) {
                this.mLauncherCallbacks.onHomeIntent();
            }
        }
        PinItemDragListener.handleDragRequest(this, intent);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onNewIntent(intent);
        }
        if (equals) {
            boolean shouldMoveToDefaultScreenOnHomeIntent;
            if (this.mLauncherCallbacks != null) {
                shouldMoveToDefaultScreenOnHomeIntent = this.mLauncherCallbacks.shouldMoveToDefaultScreenOnHomeIntent();
            }
            else {
                shouldMoveToDefaultScreenOnHomeIntent = mMoveToDefaultScreenFromNewIntent;
            }
            if (b2 && (this.mWorkspace.isTouchActive() ^ true) && shouldMoveToDefaultScreenOnHomeIntent) {
                this.mMoveToDefaultScreenFromNewIntent = mMoveToDefaultScreenFromNewIntent;
                this.mWorkspace.post((Runnable)new Launcher$15(this));
            }
        }
    }
    
    public void onPageBoundSynchronously(final int n) {
        this.mSynchronouslyBoundPages.add(n);
    }
    
    protected void onPause() {
        InstallShortcutReceiver.enableInstallQueue();
        super.onPause();
        this.mPaused = true;
        this.mDragController.cancelDrag();
        this.mDragController.resetLastGestureUpTime();
        if (this.mWorkspace.getCustomContentCallbacks() != null) {
            this.mWorkspace.getCustomContentCallbacks().onHide();
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onPause();
        }
    }
    
    public void onPostCreate(final Bundle bundle) {
        super.onPostCreate(bundle);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onPostCreate(bundle);
        }
    }
    
    public boolean onPrepareOptionsMenu(final Menu menu) {
        super.onPrepareOptionsMenu(menu);
        return this.mLauncherCallbacks != null && this.mLauncherCallbacks.onPrepareOptionsMenu(menu);
    }
    
    public void onProvideKeyboardShortcuts(final List list, final Menu menu, final int n) {
        final int n2 = 4096;
        final ArrayList<KeyboardShortcutInfo> list2 = new ArrayList<KeyboardShortcutInfo>();
        if (this.mState == Launcher$State.WORKSPACE) {
            list2.add(new KeyboardShortcutInfo((CharSequence)this.getString(2131492915), 29, n2));
        }
        final View currentFocus = this.getCurrentFocus();
        if (new CustomActionsPopup(this, currentFocus).canShow()) {
            list2.add(new KeyboardShortcutInfo((CharSequence)this.getString(2131492901), 43, n2));
        }
        if (currentFocus.getTag() instanceof ItemInfo && DeepShortcutManager.supportsShortcuts((ItemInfo)currentFocus.getTag())) {
            list2.add(new KeyboardShortcutInfo((CharSequence)this.getString(2131492989), 47, n2));
        }
        if (!list2.isEmpty()) {
            list.add(new KeyboardShortcutGroup((CharSequence)this.getString(2131492900), (List)list2));
        }
        super.onProvideKeyboardShortcuts(list, menu, n);
    }
    
    public void onRequestPermissionsResult(final int n, final String[] array, final int[] array2) {
        final int n2 = 13;
        final PendingRequestArgs mPendingRequestArgs = this.mPendingRequestArgs;
        if (n == n2 && mPendingRequestArgs != null && mPendingRequestArgs.getRequestCode() == n2) {
            this.setWaitingForResult(null);
            final CellLayout cellLayout = this.getCellLayout(mPendingRequestArgs.container, mPendingRequestArgs.screenId);
            View child;
            if (cellLayout != null) {
                child = cellLayout.getChildAt(mPendingRequestArgs.cellX, mPendingRequestArgs.cellY);
            }
            else {
                child = null;
            }
            final Intent pendingIntent = mPendingRequestArgs.getPendingIntent();
            if (array2.length > 0 && array2[0] == 0) {
                this.startActivitySafely(child, pendingIntent, null);
            }
            else {
                Toast.makeText((Context)this, (CharSequence)this.getString(2131492926, new Object[] { this.getString(2131492886) }), 0).show();
            }
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onRequestPermissionsResult(n, array, array2);
        }
    }
    
    public void onRestoreInstanceState(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        final Iterator iterator = this.mSynchronouslyBoundPages.iterator();
        while (iterator.hasNext()) {
            this.mWorkspace.restoreInstanceStateForChild(iterator.next());
        }
    }
    
    protected void onResume() {
        final boolean workspaceLoading = true;
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.preOnResume();
        }
        super.onResume();
        this.getUserEventDispatcher().resetElapsedSessionMillis();
        if (this.mOnResumeState == Launcher$State.WORKSPACE) {
            this.showWorkspace(false);
        }
        else if (this.mOnResumeState == Launcher$State.APPS) {
            this.showAppsView(false, (this.mWaitingForResume != null && workspaceLoading) ^ true, this.mAppsView.shouldRestoreImeState());
        }
        else if (this.mOnResumeState == Launcher$State.WIDGETS) {
            this.showWidgetsView(false, false);
        }
        this.mOnResumeState = Launcher$State.NONE;
        this.mPaused = false;
        if (this.mOnResumeNeedsLoad) {
            this.setWorkspaceLoading(workspaceLoading);
            this.mModel.startLoader(this.getCurrentWorkspaceScreen());
            this.mOnResumeNeedsLoad = false;
        }
        if (this.mBindOnResumeCallbacks.size() > 0) {
            for (int i = 0; i < this.mBindOnResumeCallbacks.size(); ++i) {
                ((Runnable)this.mBindOnResumeCallbacks.get(i)).run();
            }
            this.mBindOnResumeCallbacks.clear();
        }
        if (this.mOnResumeCallbacks.size() > 0) {
            for (int j = 0; j < this.mOnResumeCallbacks.size(); ++j) {
                ((Runnable)this.mOnResumeCallbacks.get(j)).run();
            }
            this.mOnResumeCallbacks.clear();
        }
        if (this.mWaitingForResume != null) {
            this.mWaitingForResume.setStayPressed(false);
        }
        if (!this.isWorkspaceLoading()) {
            this.getWorkspace().reinflateWidgetsIfNecessary();
        }
        if (this.mWorkspace.getCustomContentCallbacks() != null && (this.mMoveToDefaultScreenFromNewIntent ^ true) && this.mWorkspace.isOnOrMovingToCustomContent()) {
            this.mWorkspace.getCustomContentCallbacks().onShow(workspaceLoading);
        }
        this.mMoveToDefaultScreenFromNewIntent = false;
        this.updateInteraction(Workspace$State.NORMAL, this.mWorkspace.getState());
        this.mWorkspace.onResume();
        if (!this.isWorkspaceLoading()) {
            InstallShortcutReceiver.disableAndFlushInstallQueue((Context)this);
            this.mModel.refreshShortcutsIfRequired();
        }
        if (this.shouldShowDiscoveryBounce()) {
            this.mAllAppsController.showDiscoveryBounce();
        }
        this.mIsResumeFromActionScreenOff = false;
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onResume();
        }
    }
    
    public Object onRetainNonConfigurationInstance() {
        if (this.mModel.isCurrentCallbacks(this)) {
            this.mModel.stopLoader();
        }
        return Boolean.TRUE;
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        if (this.mWorkspace.getChildCount() > 0) {
            bundle.putInt("launcher.current_screen", this.mWorkspace.getCurrentPageOffsetFromCustomContent());
        }
        super.onSaveInstanceState(bundle);
        bundle.putInt("launcher.state", this.mState.ordinal());
        AbstractFloatingView.closeAllOpenViews(this, false);
        if (this.mPendingRequestArgs != null) {
            bundle.putParcelable("launcher.request_args", (Parcelable)this.mPendingRequestArgs);
        }
        if (this.mPendingActivityResult != null) {
            bundle.putParcelable("launcher.activity_result", (Parcelable)this.mPendingActivityResult);
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onSaveInstanceState(bundle);
        }
    }
    
    public boolean onSearchRequested() {
        final boolean b = true;
        this.startSearch(null, false, null, b);
        return b;
    }
    
    protected void onStart() {
        super.onStart();
        FirstFrameAnimatorHelper.setIsVisible(true);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onStart();
        }
        if (Utilities.ATLEAST_NOUGAT_MR1) {
            this.mAppWidgetHost.startListening();
        }
        if (!this.isWorkspaceLoading()) {
            NotificationListener.setNotificationsChangedListener(this.mPopupDataProvider);
        }
    }
    
    protected void onStop() {
        super.onStop();
        FirstFrameAnimatorHelper.setIsVisible(false);
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onStop();
        }
        if (Utilities.ATLEAST_NOUGAT_MR1) {
            this.mAppWidgetHost.stopListening();
        }
        NotificationListener.removeNotificationsChangedListener();
    }
    
    public boolean onTouch(final View view, final MotionEvent motionEvent) {
        return false;
    }
    
    public void onTrimMemory(final int n) {
        super.onTrimMemory(n);
        if (n >= 20) {
            SQLiteDatabase.releaseMemory();
        }
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onTrimMemory(n);
        }
    }
    
    public void onWindowFocusChanged(final boolean mHasFocus) {
        super.onWindowFocusChanged(mHasFocus);
        this.mHasFocus = mHasFocus;
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onWindowFocusChanged(mHasFocus);
        }
    }
    
    public void onWindowVisibilityChanged(final int n) {
        if (n == 0) {
            if (!this.mWorkspaceLoading) {
                this.mWorkspace.getViewTreeObserver().addOnDrawListener((ViewTreeObserver$OnDrawListener)new Launcher$14(this));
            }
            this.clearTypedText();
        }
    }
    
    protected void onWorkspaceLockedChanged() {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.onWorkspaceLockedChanged();
        }
    }
    
    protected void populateCustomContentContainer() {
        if (this.mLauncherCallbacks != null) {
            this.mLauncherCallbacks.populateCustomContentContainer();
        }
    }
    
    public void refreshAndBindWidgetsForPackageUser(final PackageUserKey packageUserKey) {
        this.mModel.refreshAndBindWidgetsAndShortcuts(this, this.mWidgetsView.isEmpty(), packageUserKey);
    }
    
    public boolean removeItem(final View view, final ItemInfo itemInfo, final boolean b) {
        final boolean b2 = true;
        if (itemInfo instanceof ShortcutInfo) {
            final View homescreenIconByItemId = this.mWorkspace.getHomescreenIconByItemId(itemInfo.container);
            if (homescreenIconByItemId instanceof FolderIcon) {
                ((FolderInfo)homescreenIconByItemId.getTag()).remove((ShortcutInfo)itemInfo, b2);
            }
            else {
                this.mWorkspace.removeWorkspaceItem(view);
            }
            if (b) {
                this.getModelWriter().deleteItemFromDatabase(itemInfo);
            }
        }
        else if (itemInfo instanceof FolderInfo) {
            final FolderInfo folderInfo = (FolderInfo)itemInfo;
            if (view instanceof FolderIcon) {
                ((FolderIcon)view).removeListeners();
            }
            this.mWorkspace.removeWorkspaceItem(view);
            if (b) {
                this.getModelWriter().deleteFolderAndContentsFromDatabase(folderInfo);
            }
        }
        else {
            if (!(itemInfo instanceof LauncherAppWidgetInfo)) {
                return false;
            }
            final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo)itemInfo;
            this.mWorkspace.removeWorkspaceItem(view);
            if (b) {
                this.deleteWidgetInfo(launcherAppWidgetInfo);
            }
        }
        return b2;
    }
    
    public void setAllAppsButton(final View mAllAppsButton) {
        this.mAllAppsButton = mAllAppsButton;
    }
    
    public boolean setLauncherCallbacks(final LauncherCallbacks mLauncherCallbacks) {
        (this.mLauncherCallbacks = mLauncherCallbacks).setLauncherSearchCallback(new Launcher$5(this));
        return true;
    }
    
    public void setLauncherOverlay(final Launcher$LauncherOverlay launcherOverlay) {
        if (launcherOverlay != null) {
            launcherOverlay.setOverlayCallbacks(new Launcher$LauncherOverlayCallbacksImpl(this));
        }
        this.mWorkspace.setLauncherOverlay(launcherOverlay);
    }
    
    public boolean setLoadOnResume() {
        final boolean mOnResumeNeedsLoad = true;
        return this.mPaused && (this.mOnResumeNeedsLoad = mOnResumeNeedsLoad);
    }
    
    void setOrientation() {
        if (this.mRotationEnabled) {
            this.unlockScreenOrientation(true);
        }
        else {
            this.setRequestedOrientation(5);
        }
    }
    
    public void setWaitingForResult(final PendingRequestArgs mPendingRequestArgs) {
        final boolean workspaceLocked = this.isWorkspaceLocked();
        this.mPendingRequestArgs = mPendingRequestArgs;
        if (workspaceLocked != this.isWorkspaceLocked()) {
            this.onWorkspaceLockedChanged();
        }
    }
    
    public void showAppsView(final boolean b, final boolean b2, final boolean b3) {
        this.markAppsViewShown();
        if (b2) {
            this.tryAndUpdatePredictedApps();
        }
        this.showAppsOrWidgets(Launcher$State.APPS, b, b3);
    }
    
    public void showOverviewMode(final boolean b) {
        this.showOverviewMode(b, false);
    }
    
    void showOverviewMode(final boolean b, final boolean b2) {
        Runnable runnable = null;
        if (b2) {
            runnable = new Launcher$21(this);
        }
        this.mWorkspace.setVisibility(0);
        this.mStateTransitionAnimation.startAnimationToWorkspace(this.mState, this.mWorkspace.getState(), Workspace$State.OVERVIEW, b, runnable);
        this.setState(Launcher$State.WORKSPACE);
        this.mWorkspace.requestDisallowInterceptTouchEvent(b);
    }
    
    void showWidgetsView(final boolean b, final boolean b2) {
        if (b2) {
            this.mWidgetsView.scrollToTop();
        }
        this.showAppsOrWidgets(Launcher$State.WIDGETS, b, false);
        this.mWidgetsView.post((Runnable)new Launcher$22(this));
    }
    
    public boolean showWorkspace(final boolean b) {
        return this.showWorkspace(b, null);
    }
    
    public boolean showWorkspace(final boolean b, final Runnable runnable) {
        final boolean b2 = true;
        boolean b3;
        if (this.mState == Launcher$State.WORKSPACE) {
            b3 = (this.mWorkspace.getState() != Workspace$State.NORMAL && b2);
        }
        else {
            b3 = b2;
        }
        if (b3 || this.mAllAppsController.isTransitioning()) {
            this.mWorkspace.setVisibility(0);
            this.mStateTransitionAnimation.startAnimationToWorkspace(this.mState, this.mWorkspace.getState(), Workspace$State.NORMAL, b, runnable);
            if (this.mAllAppsButton != null) {
                this.mAllAppsButton.requestFocus();
            }
        }
        this.setState(Launcher$State.WORKSPACE);
        if (b3) {
            this.getWindow().getDecorView().sendAccessibilityEvent(32);
        }
        return b3;
    }
    
    public void startActivityForResult(final Intent intent, final int n, final Bundle bundle) {
        super.startActivityForResult(intent, n, bundle);
    }
    
    public boolean startActivitySafely(final View p0, final Intent p1, final ItemInfo p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore          4
        //     3: iconst_0       
        //     4: istore          5
        //     6: aconst_null    
        //     7: astore          6
        //     9: aload_0        
        //    10: getfield        com/android/launcher3/Launcher.mIsSafeModeEnabled:Z
        //    13: istore          7
        //    15: iload           7
        //    17: ifeq            47
        //    20: aload_0        
        //    21: aload_2        
        //    22: invokestatic    com/android/launcher3/Utilities.isSystemApp:(Landroid/content/Context;Landroid/content/Intent;)Z
        //    25: iconst_1       
        //    26: ixor           
        //    27: istore          7
        //    29: iload           7
        //    31: ifeq            47
        //    34: aload_0        
        //    35: ldc_w           2131492897
        //    38: iconst_0       
        //    39: invokestatic    android/widget/Toast.makeText:(Landroid/content/Context;II)Landroid/widget/Toast;
        //    42: invokevirtual   android/widget/Toast.show:()V
        //    45: iconst_0       
        //    46: ireturn        
        //    47: aload_1        
        //    48: ifnull          219
        //    51: ldc_w           "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"
        //    54: astore          8
        //    56: aload_2        
        //    57: aload           8
        //    59: invokevirtual   android/content/Intent.hasExtra:(Ljava/lang/String;)Z
        //    62: iconst_1       
        //    63: ixor           
        //    64: istore          7
        //    66: iload           7
        //    68: ifeq            228
        //    71: aload_0        
        //    72: aload_1        
        //    73: invokevirtual   com/android/launcher3/Launcher.getActivityLaunchOptions:(Landroid/view/View;)Landroid/os/Bundle;
        //    76: astore          8
        //    78: aload           8
        //    80: astore          9
        //    82: aload_3        
        //    83: ifnonnull       234
        //    86: iconst_0       
        //    87: istore          7
        //    89: aconst_null    
        //    90: astore          8
        //    92: ldc_w           268435456
        //    95: istore          5
        //    97: aload_2        
        //    98: iload           5
        //   100: invokevirtual   android/content/Intent.addFlags:(I)Landroid/content/Intent;
        //   103: pop            
        //   104: aload_1        
        //   105: ifnull          121
        //   108: aload_0        
        //   109: aload_1        
        //   110: invokevirtual   com/android/launcher3/Launcher.getViewBounds:(Landroid/view/View;)Landroid/graphics/Rect;
        //   113: astore          6
        //   115: aload_2        
        //   116: aload           6
        //   118: invokevirtual   android/content/Intent.setSourceBounds:(Landroid/graphics/Rect;)V
        //   121: getstatic       com/android/launcher3/Utilities.ATLEAST_MARSHMALLOW:Z
        //   124: istore          5
        //   126: iload           5
        //   128: ifeq            247
        //   131: aload_3        
        //   132: instanceof      Lcom/android/launcher3/ShortcutInfo;
        //   135: istore          5
        //   137: iload           5
        //   139: ifeq            247
        //   142: aload_3        
        //   143: checkcast       Lcom/android/launcher3/ItemInfo;
        //   146: getfield        com/android/launcher3/ItemInfo.itemType:I
        //   149: istore          5
        //   151: iload           5
        //   153: iload           4
        //   155: if_icmpeq       178
        //   158: aload_3        
        //   159: checkcast       Lcom/android/launcher3/ItemInfo;
        //   162: getfield        com/android/launcher3/ItemInfo.itemType:I
        //   165: istore          5
        //   167: bipush          6
        //   169: istore          10
        //   171: iload           5
        //   173: iload           10
        //   175: if_icmpne       247
        //   178: aload_3        
        //   179: astore          11
        //   181: aload_3        
        //   182: checkcast       Lcom/android/launcher3/ShortcutInfo;
        //   185: astore          11
        //   187: aload           11
        //   189: astore          6
        //   191: aload           11
        //   193: invokevirtual   com/android/launcher3/ShortcutInfo.isPromise:()Z
        //   196: iconst_1       
        //   197: ixor           
        //   198: istore          5
        //   200: iload           5
        //   202: ifeq            247
        //   205: aload_0        
        //   206: aload_2        
        //   207: aload           9
        //   209: aload_3        
        //   210: checkcast       Lcom/android/launcher3/ItemInfo;
        //   213: invokespecial   com/android/launcher3/Launcher.startShortcutIntentSafely:(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/ItemInfo;)V
        //   216: iload           4
        //   218: ireturn        
        //   219: iconst_0       
        //   220: istore          7
        //   222: aconst_null    
        //   223: astore          8
        //   225: goto            66
        //   228: aconst_null    
        //   229: astore          9
        //   231: goto            82
        //   234: aload_3        
        //   235: getfield        com/android/launcher3/ItemInfo.user:Landroid/os/UserHandle;
        //   238: astore          6
        //   240: aload           6
        //   242: astore          8
        //   244: goto            92
        //   247: aload           8
        //   249: ifnull          271
        //   252: invokestatic    android/os/Process.myUserHandle:()Landroid/os/UserHandle;
        //   255: astore          6
        //   257: aload           8
        //   259: aload           6
        //   261: invokevirtual   android/os/UserHandle.equals:(Ljava/lang/Object;)Z
        //   264: istore          5
        //   266: iload           5
        //   268: ifeq            344
        //   271: aload_0        
        //   272: aload_2        
        //   273: aload           9
        //   275: invokevirtual   com/android/launcher3/Launcher.startActivity:(Landroid/content/Intent;Landroid/os/Bundle;)V
        //   278: goto            216
        //   281: astore          6
        //   283: aload_0        
        //   284: ldc_w           2131492895
        //   287: iconst_0       
        //   288: invokestatic    android/widget/Toast.makeText:(Landroid/content/Context;II)Landroid/widget/Toast;
        //   291: invokevirtual   android/widget/Toast.show:()V
        //   294: new             Ljava/lang/StringBuilder;
        //   297: astore          9
        //   299: aload           9
        //   301: invokespecial   java/lang/StringBuilder.<init>:()V
        //   304: aload           9
        //   306: ldc_w           "Unable to launch. tag="
        //   309: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   312: aload_3        
        //   313: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   316: ldc_w           " intent="
        //   319: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   322: aload_2        
        //   323: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   326: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   329: astore          9
        //   331: ldc_w           "Launcher"
        //   334: aload           9
        //   336: aload           6
        //   338: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   341: pop            
        //   342: iconst_0       
        //   343: ireturn        
        //   344: aload_0        
        //   345: invokestatic    com/android/launcher3/compat/LauncherAppsCompat.getInstance:(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;
        //   348: astore          6
        //   350: aload_2        
        //   351: invokevirtual   android/content/Intent.getComponent:()Landroid/content/ComponentName;
        //   354: astore          12
        //   356: aload_2        
        //   357: invokevirtual   android/content/Intent.getSourceBounds:()Landroid/graphics/Rect;
        //   360: astore          13
        //   362: aload           6
        //   364: aload           12
        //   366: aload           8
        //   368: aload           13
        //   370: aload           9
        //   372: invokevirtual   com/android/launcher3/compat/LauncherAppsCompat.startActivityForProfile:(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
        //   375: goto            216
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                       
        //  -----  -----  -----  -----  -------------------------------------------
        //  121    124    281    344    Landroid/content/ActivityNotFoundException;
        //  121    124    281    344    Ljava/lang/SecurityException;
        //  142    149    281    344    Landroid/content/ActivityNotFoundException;
        //  142    149    281    344    Ljava/lang/SecurityException;
        //  158    165    281    344    Landroid/content/ActivityNotFoundException;
        //  158    165    281    344    Ljava/lang/SecurityException;
        //  181    185    281    344    Landroid/content/ActivityNotFoundException;
        //  181    185    281    344    Ljava/lang/SecurityException;
        //  191    196    281    344    Landroid/content/ActivityNotFoundException;
        //  191    196    281    344    Ljava/lang/SecurityException;
        //  209    216    281    344    Landroid/content/ActivityNotFoundException;
        //  209    216    281    344    Ljava/lang/SecurityException;
        //  252    255    281    344    Landroid/content/ActivityNotFoundException;
        //  252    255    281    344    Ljava/lang/SecurityException;
        //  259    264    281    344    Landroid/content/ActivityNotFoundException;
        //  259    264    281    344    Ljava/lang/SecurityException;
        //  273    278    281    344    Landroid/content/ActivityNotFoundException;
        //  273    278    281    344    Ljava/lang/SecurityException;
        //  344    348    281    344    Landroid/content/ActivityNotFoundException;
        //  344    348    281    344    Ljava/lang/SecurityException;
        //  350    354    281    344    Landroid/content/ActivityNotFoundException;
        //  350    354    281    344    Ljava/lang/SecurityException;
        //  356    360    281    344    Landroid/content/ActivityNotFoundException;
        //  356    360    281    344    Ljava/lang/SecurityException;
        //  370    375    281    344    Landroid/content/ActivityNotFoundException;
        //  370    375    281    344    Ljava/lang/SecurityException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 185, Size: 185
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3551)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:113)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void startBinding() {
        AbstractFloatingView.closeAllOpenViews(this);
        this.setWorkspaceLoading(true);
        this.mWorkspace.clearDropTargets();
        this.mWorkspace.removeAllWorkspaceScreens();
        if (this.mHotseat != null) {
            this.mHotseat.resetLayout();
        }
    }
    
    public void startGlobalSearch(final String s, final boolean b, final Bundle bundle, final Rect sourceBounds) {
        Object component = ((SearchManager)this.getSystemService("search")).getGlobalSearchActivity();
        if (component == null) {
            Log.w("Launcher", "No global search activity found.");
            return;
        }
        final Intent intent = new Intent("android.search.action.GLOBAL_SEARCH");
        intent.addFlags(268435456);
        intent.setComponent((ComponentName)component);
        Label_0198: {
            if (bundle != null) {
                break Label_0198;
            }
            Bundle bundle2 = new Bundle();
            while (true) {
                if (!bundle2.containsKey("source")) {
                    bundle2.putString("source", this.getPackageName());
                }
                intent.putExtra("app_data", bundle2);
                if (!TextUtils.isEmpty((CharSequence)s)) {
                    intent.putExtra("query", s);
                }
                if (b) {
                    intent.putExtra("select_query", b);
                }
                intent.setSourceBounds(sourceBounds);
                try {
                    this.startActivity(intent);
                    return;
                    bundle2 = new Bundle(bundle);
                    continue;
                }
                catch (ActivityNotFoundException ex) {
                    final String s2 = "Launcher";
                    component = "Global search activity not found: " + component;
                    Log.e(s2, (String)component);
                }
                break;
            }
        }
    }
    
    public void startIntentSenderForResult(final IntentSender intentSender, final int n, final Intent intent, final int n2, final int n3, final int n4, final Bundle bundle) {
        try {
            super.startIntentSenderForResult(intentSender, n, intent, n2, n3, n4, bundle);
        }
        catch (IntentSender$SendIntentException ex) {
            throw new ActivityNotFoundException();
        }
    }
    
    public void startSearch(String typedText, final boolean b, Bundle bundle, final boolean b2) {
        if (typedText == null) {
            typedText = this.getTypedText();
        }
        if (bundle == null) {
            bundle = new Bundle();
            bundle.putString("source", "launcher-search");
        }
        if (this.mLauncherCallbacks == null || (this.mLauncherCallbacks.startSearch(typedText, b, bundle) ^ true)) {
            this.startGlobalSearch(typedText, b, bundle, null);
        }
        this.showWorkspace(true);
    }
    
    public Animator startWorkspaceStateChangeAnimation(final Workspace$State workspace$State, final boolean b, final AnimationLayerSet set) {
        final Workspace$State state = this.mWorkspace.getState();
        final Animator setStateWithAnimation = this.mWorkspace.setStateWithAnimation(workspace$State, b, set);
        this.updateInteraction(state, workspace$State);
        return setStateWithAnimation;
    }
    
    public void tryAndUpdatePredictedApps() {
        if (this.mLauncherCallbacks != null) {
            final List predictedApps = this.mLauncherCallbacks.getPredictedApps();
            if (predictedApps != null) {
                this.mAppsView.setPredictedApps(predictedApps);
                this.getUserEventDispatcher().setPredictedApps(predictedApps);
            }
        }
    }
    
    public void unlockScreenOrientation(final boolean b) {
        if (this.mRotationEnabled) {
            if (b) {
                this.setRequestedOrientation(-1);
            }
            else {
                this.mHandler.postDelayed((Runnable)new Launcher$38(this), 500L);
            }
        }
    }
    
    public void updateIconBadges(final Set set) {
        final Launcher$13 launcher$13 = new Launcher$13(this, set);
        if (!this.waitUntilResume(launcher$13)) {
            launcher$13.run();
        }
    }
    
    public void updateInteraction(final Workspace$State workspace$State, final Workspace$State workspace$State2) {
        int n = 1;
        int n2;
        if (workspace$State != Workspace$State.NORMAL) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        if (workspace$State2 == Workspace$State.NORMAL) {
            n = 0;
        }
        if (n != 0) {
            this.onInteractionBegin();
        }
        else if (n2 != 0) {
            this.onInteractionEnd();
        }
    }
    
    public boolean useVerticalBarLayout() {
        return this.mDeviceProfile.isVerticalBarLayout();
    }
    
    boolean waitUntilResume(final Runnable runnable, final boolean b) {
        if (this.mPaused) {
            if (b) {
                while (this.mBindOnResumeCallbacks.remove(runnable)) {}
            }
            this.mBindOnResumeCallbacks.add(runnable);
            return true;
        }
        return false;
    }
}
