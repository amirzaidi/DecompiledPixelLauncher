.class public Lcom/android/launcher3/Launcher;
.super Lcom/android/launcher3/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherExterns;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/LauncherModel$Callbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/LauncherProviderChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# static fields
.field static NEW_APPS_ANIMATION_DELAY:I

.field private static NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

.field private static NEW_APPS_PAGE_MOVE_DELAY:I

.field protected static sCustomAppWidgets:Ljava/util/HashMap;


# instance fields
.field private mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private mAllAppsButton:Landroid/view/View;

.field mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field mAllWidgets:Lcom/android/launcher3/util/MultiHashMap;

.field private mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private mAttached:Z

.field private mBindAllApplicationsRunnable:Ljava/lang/Runnable;

.field private mBindAllWidgetsRunnable:Ljava/lang/Runnable;

.field private mBindOnResumeCallbacks:Ljava/util/ArrayList;

.field mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field private mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

.field private mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

.field public mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

.field private mHasFocus:Z

.field mHotseat:Lcom/android/launcher3/Hotseat;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field private mIsResumeFromActionScreenOff:Z

.field private mIsSafeModeEnabled:Z

.field private mLastDispatchTouchEventX:F

.field private mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

.field private mLauncherView:Landroid/view/View;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mModelWriter:Lcom/android/launcher3/model/ModelWriter;

.field private mMoveToDefaultScreenFromNewIntent:Z

.field private mOnResumeCallbacks:Ljava/util/ArrayList;

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:Lcom/android/launcher3/Launcher$State;

.field private mOverviewPanel:Landroid/view/ViewGroup;

.field private mPaused:Z

.field private mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

.field private mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

.field private mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

.field private mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private mQsbContainer:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotationEnabled:Z

.field private mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field mState:Lcom/android/launcher3/Launcher$State;

.field mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;

.field private mTmpAddItemCellCoordinates:[I

.field mTmpAppsList:Ljava/util/ArrayList;

.field private mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

.field private mWidgetsButton:Landroid/view/View;

.field mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

.field mWorkspace:Lcom/android/launcher3/Workspace;

.field mWorkspaceLoading:Z


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/Launcher;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/Launcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mIsResumeFromActionScreenOff:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->startMarketIntentForPackage(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1f4

    .line 212
    sput v1, Lcom/android/launcher3/Launcher;->NEW_APPS_PAGE_MOVE_DELAY:I

    .line 213
    const/4 v0, 0x5

    sput v0, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    .line 214
    sput v1, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    sput-object v0, Lcom/android/launcher3/Launcher;->sCustomAppWidgets:Ljava/util/HashMap;

    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    .line 201
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    .line 227
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 248
    sget-object v0, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 252
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 254
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    .line 268
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 269
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    .line 306
    new-instance v0, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEventX:F

    .line 325
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 1553
    new-instance v0, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3722
    new-instance v0, Lcom/android/launcher3/Launcher$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllApplicationsRunnable:Ljava/lang/Runnable;

    .line 3910
    new-instance v0, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllWidgetsRunnable:Ljava/lang/Runnable;

    .line 147
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1203
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1202
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1204
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2100
    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2102
    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    .line 2103
    if-eqz v0, :cond_0

    .line 2108
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 2110
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    .line 2111
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    .line 2114
    iput-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2129
    :goto_0
    return-void

    .line 2118
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 2119
    iget-object v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 2121
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 2122
    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 2121
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v2

    .line 2123
    if-eqz v2, :cond_1

    .line 2124
    invoke-virtual {p0, v0, p1, v5, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    goto :goto_0

    .line 2126
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)V

    goto :goto_0
.end method

.method private bindAddScreens(Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    .line 3276
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3277
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3278
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3279
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 3281
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(J)V

    .line 3277
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3284
    :cond_1
    return-void
.end method

.method private canRunNewAppsAnimation()Z
    .locals 4

    .prologue
    .line 3694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->getLastGestureUpTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3695
    sget v2, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 666
    iget-wide v4, p4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 667
    iget-wide v0, p4, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 670
    iget-wide v0, p4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v4

    .line 673
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 700
    :cond_1
    :goto_0
    return-wide v4

    .line 675
    :sswitch_0
    iget-wide v2, p4, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    iget v6, p4, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v7, p4, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    move-object v0, p0

    move-object v1, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;JJIILcom/android/launcher3/util/PendingRequestArgs;)V

    goto :goto_0

    .line 678
    :sswitch_1
    invoke-virtual {p0, p3, p4, v6, v6}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    goto :goto_0

    .line 681
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;

    goto :goto_0

    .line 686
    :sswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, p3, v0}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;

    move-result-object v0

    .line 687
    if-eqz v0, :cond_1

    .line 689
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 691
    if-eqz v1, :cond_1

    .line 692
    new-instance v2, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v2, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 693
    const/16 v1, 0xc

    .line 692
    invoke-virtual {v2, p0, v0, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;I)Z

    goto :goto_0

    .line 673
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method private completeAddShortcut(Landroid/content/Intent;JJIILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 18

    .prologue
    .line 1448
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1449
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v10

    .line 1451
    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1452
    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1453
    :cond_0
    return-void

    .line 1456
    :cond_1
    const/4 v6, 0x0

    .line 1457
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1459
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getPinItemRequest(Landroid/content/Intent;)Lcom/android/launcher3/compat/PinItemRequestCompat;

    move-result-object v6

    const-wide/16 v8, 0x0

    .line 1458
    move-object/from16 v0, p0

    invoke-static {v0, v6, v8, v9}, Lcom/android/launcher3/compat/LauncherAppsCompat;->createShortcutInfoFromPinItemRequest(Landroid/content/Context;Lcom/android/launcher3/compat/PinItemRequestCompat;J)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v6

    .line 1462
    :cond_2
    if-nez v6, :cond_5

    .line 1464
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, p8

    iget-object v7, v0, Lcom/android/launcher3/util/PendingRequestArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1465
    invoke-static/range {p0 .. p1}, Lcom/android/launcher3/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v6

    .line 1467
    :goto_0
    if-nez v6, :cond_4

    .line 1468
    const-string/jumbo v6, "Launcher"

    const-string/jumbo v7, "Unable to parse a valid custom shortcut result"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return-void

    .line 1465
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1470
    :cond_4
    new-instance v7, Lcom/android/launcher3/util/PackageManagerHelper;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 1471
    iget-object v8, v6, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1470
    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1473
    const-string/jumbo v7, "Launcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring malicious intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v6, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return-void

    :cond_5
    move-object/from16 v16, v6

    .line 1478
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v7

    .line 1481
    if-ltz p6, :cond_8

    if-ltz p7, :cond_8

    .line 1482
    const/4 v6, 0x0

    aput p6, v11, v6

    .line 1483
    const/4 v6, 0x1

    aput p7, v11, v6

    .line 1484
    const/16 v17, 0x1

    .line 1487
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v12, 0x0

    .line 1488
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v8, p2

    .line 1487
    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1489
    return-void

    .line 1491
    :cond_6
    new-instance v13, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v13}, Lcom/android/launcher3/DropTarget$DragObject;-><init>()V

    .line 1492
    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 1493
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v12, 0x0

    .line 1494
    const/4 v14, 0x1

    move-object v9, v7

    .line 1493
    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1495
    return-void

    :cond_7
    move/from16 v6, v17

    .line 1501
    :goto_1
    if-nez v6, :cond_9

    .line 1502
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, v10}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    .line 1503
    return-void

    .line 1498
    :cond_8
    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual {v10, v11, v6, v8}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v6

    goto :goto_1

    .line 1506
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    const/4 v6, 0x0

    aget v14, v11, v6

    const/4 v6, 0x1

    aget v15, v11, v6

    move-object/from16 v9, v16

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, v16

    invoke-virtual {v6, v7, v0}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1508
    return-void
.end method

.method private completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3595
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/LauncherAppWidgetHostView;

    move-result-object v0

    .line 3596
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3597
    :cond_0
    const-string/jumbo v0, "Launcher"

    const-string/jumbo v1, "Widget update called, when the widget no longer exists."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    return-object v2

    .line 3601
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 3602
    iput p2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3604
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->reinflateWidgetsIfNecessary()V

    .line 3605
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 3606
    return-object v0
.end method

.method private createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3699
    invoke-static {p1, v0, v0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3700
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3701
    mul-int/lit8 v1, p2, 0x55

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3702
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3703
    return-object v0
.end method

.method private deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 3

    .prologue
    .line 2192
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    .line 2193
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isWidgetIdAllocated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2196
    new-instance v1, Lcom/android/launcher3/Launcher$17;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/Launcher$17;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetHost;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 2201
    sget-object v0, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2196
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher$17;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2203
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2204
    return-void
.end method

.method private ensurePendingDropLayoutExists(J)J
    .locals 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 879
    if-nez v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 883
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v0

    return-wide v0

    .line 885
    :cond_0
    return-wide p1
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .locals 1

    .prologue
    .line 4117
    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 4118
    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0

    .line 4120
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    new-instance v0, Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 708
    return-void

    .line 710
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 713
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 714
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 715
    if-nez v2, :cond_1

    .line 716
    return-void

    .line 719
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetId()I

    move-result v6

    .line 721
    new-instance v3, Lcom/android/launcher3/Launcher$6;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;I)V

    .line 729
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    .line 731
    if-eqz p3, :cond_3

    .line 732
    const-string/jumbo v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 733
    :goto_0
    if-nez p2, :cond_4

    .line 734
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 735
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    .line 736
    const/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 735
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 743
    :cond_2
    :goto_1
    return-void

    .line 732
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 737
    :cond_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 740
    invoke-virtual {v2}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v4

    .line 739
    const/4 v3, 0x0

    .line 741
    const/16 v5, 0x1f4

    move-object v0, p0

    .line 738
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    goto :goto_1

    .line 744
    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 745
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 748
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 751
    :cond_6
    return-void

    .line 754
    :cond_7
    const/16 v0, 0x9

    if-eq p1, v0, :cond_9

    .line 755
    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    .line 758
    :goto_2
    if-eqz v0, :cond_f

    .line 760
    if-eqz p3, :cond_b

    const-string/jumbo v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 762
    :goto_3
    if-gez v0, :cond_c

    .line 769
    :goto_4
    if-ltz v6, :cond_8

    if-nez p2, :cond_d

    .line 770
    :cond_8
    const-string/jumbo v0, "Launcher"

    const-string/jumbo v1, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v0, 0x0

    .line 773
    invoke-virtual {p0, v0, v6, v2}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 774
    new-instance v0, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 781
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x1

    .line 782
    const/16 v3, 0x1f4

    const/4 v4, 0x0

    .line 781
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 804
    :goto_5
    return-void

    .line 754
    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    .line 755
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 761
    :cond_b
    const/4 v0, -0x1

    goto :goto_3

    :cond_c
    move v6, v0

    .line 765
    goto :goto_4

    .line 784
    :cond_d
    iget-wide v0, v2, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v4, -0x64

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    .line 788
    iget-wide v0, v2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v0

    .line 787
    iput-wide v0, v2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 791
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v4, v2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v8

    .line 793
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    .line 794
    new-instance v3, Lcom/android/launcher3/Launcher$8;

    move-object v4, p0

    move v5, p2

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    .line 801
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    .line 802
    const/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 801
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_5

    .line 807
    :cond_f
    const/16 v0, 0xc

    if-eq p1, v0, :cond_10

    .line 808
    const/16 v0, 0xe

    if-ne p1, v0, :cond_12

    .line 809
    :cond_10
    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    .line 811
    invoke-direct {p0, p1, p3, v6, v2}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J

    .line 814
    :cond_11
    return-void

    .line 817
    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 819
    const/4 v0, -0x1

    if-ne p2, v0, :cond_14

    iget-wide v0, v2, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_14

    .line 820
    const/4 v0, -0x1

    invoke-direct {p0, p1, p3, v0, v2}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J

    .line 821
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    .line 822
    const/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 821
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 829
    :cond_13
    :goto_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    .line 830
    return-void

    .line 824
    :cond_14
    if-nez p2, :cond_13

    .line 825
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    .line 826
    const/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 825
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_6
.end method

.method private loadExtractedColorsAndColorItems()V
    .locals 3

    .prologue
    .line 480
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->load(Landroid/content/Context;)V

    .line 482
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Hotseat;->updateColor(Lcom/android/launcher3/dynamicui/ExtractedColors;Z)V

    .line 483
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->updateColor(Lcom/android/launcher3/dynamicui/ExtractedColors;)V

    .line 490
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/Launcher;->activateLightSystemBars(ZZZ)V

    .line 492
    :cond_0
    return-void
.end method

.method private markAppsViewShown()V
    .locals 3

    .prologue
    .line 3974
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "launcher.apps_view_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3975
    return-void

    .line 3977
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "launcher.apps_view_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3978
    return-void
.end method

.method private onClickPendingAppItem(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 2381
    if-eqz p3, :cond_0

    .line 2383
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->startMarketIntentForPackage(Landroid/view/View;Ljava/lang/String;)V

    .line 2384
    return-void

    .line 2386
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2387
    const v1, 0x7f0c0060

    .line 2386
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2388
    const v1, 0x7f0c0061

    .line 2386
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2389
    new-instance v1, Lcom/android/launcher3/Launcher$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/Launcher$18;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V

    const v2, 0x7f0c005f

    .line 2386
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2396
    new-instance v1, Lcom/android/launcher3/Launcher$19;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/Launcher$19;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    .line 2395
    const v2, 0x7f0c005e

    .line 2386
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2403
    return-void
.end method

.method private prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 1

    .prologue
    .line 1547
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1548
    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;)V

    .line 1549
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setFocusable(Z)V

    .line 1550
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1551
    return-void
.end method

.method private processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2089
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 2090
    invoke-static {v2, v0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 2091
    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2092
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 2094
    :cond_0
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1274
    if-nez p1, :cond_0

    .line 1275
    return-void

    .line 1278
    :cond_0
    const-string/jumbo v0, "launcher.state"

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1279
    invoke-static {}, Lcom/android/launcher3/Launcher$State;->values()[Lcom/android/launcher3/Launcher$State;

    move-result-object v1

    .line 1280
    if-ltz v0, :cond_4

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 1281
    aget-object v0, v1, v0

    .line 1282
    :goto_0
    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_2

    .line 1283
    :cond_1
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    .line 1286
    :cond_2
    const-string/jumbo v0, "launcher.request_args"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1287
    if-eqz v0, :cond_3

    .line 1288
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 1291
    :cond_3
    const-string/jumbo v0, "launcher.activity_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ActivityResultInfo;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 1292
    return-void

    .line 1281
    :cond_4
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    goto :goto_0
.end method

.method private setState(Lcom/android/launcher3/Launcher$State;)V
    .locals 0

    .prologue
    .line 2944
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    .line 2945
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateSoftInputMode()V

    .line 2946
    return-void
.end method

.method private setWorkspaceLoading(Z)V
    .locals 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 2009
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 2010
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2011
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onWorkspaceLockedChanged()V

    .line 2013
    :cond_0
    return-void
.end method

.method private setupOverviewPanel()V
    .locals 3

    .prologue
    .line 1358
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    .line 1361
    const v0, 0x7f0e0053

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1362
    new-instance v1, Lcom/android/launcher3/Launcher$10;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher$10;->attachTo(Landroid/view/View;)V

    .line 1368
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1371
    const v0, 0x7f0e0054

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    .line 1372
    new-instance v0, Lcom/android/launcher3/Launcher$11;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$11;-><init>(Lcom/android/launcher3/Launcher;I)V

    .line 1377
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    .line 1372
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher$11;->attachTo(Landroid/view/View;)V

    .line 1378
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1381
    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1382
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasSettings()Z

    move-result v1

    .line 1383
    if-eqz v1, :cond_0

    .line 1384
    new-instance v1, Lcom/android/launcher3/Launcher$12;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/Launcher$12;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher$12;->attachTo(Landroid/view/View;)V

    .line 1390
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1395
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1396
    return-void

    .line 1392
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1298
    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 1299
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getFocusIndicatorHelper()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 1300
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1301
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1302
    const v0, 0x7f0e0003

    .line 1301
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mQsbContainer:Landroid/view/View;

    .line 1303
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->initParentViews(Landroid/view/View;)V

    .line 1305
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1310
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    .line 1313
    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 1314
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1319
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setupOverviewPanel()V

    .line 1322
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 1323
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1324
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 1327
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->lockWallpaperToDefaultPage()V

    .line 1328
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V

    .line 1329
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 1332
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v1, 0x7f0e0045

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    .line 1335
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 1336
    const v0, 0x7f0e0047

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    .line 1337
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->getAllAppsSearchBarController()Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1338
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/LauncherCallbacks;->getAllAppsSearchBarController()Lcom/android/launcher3/allapps/AllAppsSearchBarController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setSearchBarController(Lcom/android/launcher3/allapps/AllAppsSearchBarController;)V

    .line 1344
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1345
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 1346
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 1348
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setupViews(Lcom/android/launcher3/allapps/AllAppsContainerView;Lcom/android/launcher3/Hotseat;Lcom/android/launcher3/Workspace;)V

    .line 1355
    :cond_1
    return-void

    .line 1302
    :cond_2
    const v0, 0x7f0e0046

    goto/16 :goto_0

    .line 1340
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    new-instance v1, Lcom/android/launcher3/allapps/DefaultAppSearchController;

    invoke-direct {v1}, Lcom/android/launcher3/allapps/DefaultAppSearchController;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setSearchBarController(Lcom/android/launcher3/allapps/AllAppsSearchBarController;)V

    goto :goto_1
.end method

.method private shouldShowDiscoveryBounce()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3981
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 3982
    return v2

    .line 3984
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->shouldShowDiscoveryBounce()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3985
    return v3

    .line 3987
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsResumeFromActionScreenOff:Z

    if-nez v0, :cond_2

    .line 3988
    return v2

    .line 3990
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "launcher.apps_view_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3991
    return v2

    .line 3993
    :cond_3
    return v3
.end method

.method private showAppsOrWidgets(Lcom/android/launcher3/Launcher$State;ZZ)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2998
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v3, :cond_0

    .line 2999
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 2998
    :goto_0
    if-nez v0, :cond_3

    .line 3002
    return v1

    .line 3000
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v3, :cond_0

    .line 3001
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isTransitioning()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 3004
    :cond_3
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v0, :cond_4

    .line 3005
    return v1

    .line 3009
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 3010
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3011
    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    .line 3014
    :cond_5
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v0, :cond_6

    .line 3015
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToAllApps(ZZ)V

    .line 3021
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->setState(Lcom/android/launcher3/Launcher$State;)V

    .line 3022
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 3025
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3026
    const/16 v1, 0x20

    .line 3025
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3027
    return v2

    .line 3017
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWidgets(Z)V

    goto :goto_1
.end method

.method private startAppShortcutOrInfoActivity(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2471
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 2472
    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2473
    if-nez v1, :cond_0

    .line 2474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input must have a valid intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2476
    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    .line 2477
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V

    .line 2479
    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    .line 2480
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    .line 2481
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 2483
    :cond_1
    return-void
.end method

.method private startMarketIntentForPackage(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2406
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 2407
    invoke-static {p2}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2408
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    .line 2409
    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 2410
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    .line 2411
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 2413
    :cond_0
    return-void
.end method

.method private startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/ItemInfo;)V
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x0

    .line 2631
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2636
    :try_start_1
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2639
    iget v1, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 2640
    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v3

    .line 2641
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 2642
    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v1

    .line 2643
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, p3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    move-object v5, p2

    .line 2642
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2649
    :goto_0
    :try_start_2
    invoke-static {v7}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2669
    :goto_1
    return-void

    .line 2646
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2648
    :catchall_0
    move-exception v1

    .line 2649
    :try_start_4
    invoke-static {v7}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2648
    throw v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2651
    :catch_0
    move-exception v1

    .line 2655
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2656
    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2655
    if-eqz v2, :cond_1

    .line 2657
    const-string/jumbo v2, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2660
    invoke-static {v9, p1, p3}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 2662
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    aput-object v2, v1, v8

    invoke-virtual {p0, v1, v9}, Lcom/android/launcher3/Launcher;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 2666
    :cond_1
    throw v1
.end method

.method private updateSoftInputMode()V
    .locals 2

    .prologue
    .line 2949
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_UPDATE_SOFT_INPUT_MODE:Z

    if-eqz v0, :cond_0

    .line 2951
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2952
    const/16 v0, 0x10

    .line 2956
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2958
    :cond_0
    return-void

    .line 2954
    :cond_1
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private waitUntilResume(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 3165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public activateLightSystemBars(ZZZ)V
    .locals 3

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 506
    if-eqz p1, :cond_2

    .line 507
    if-eqz p2, :cond_4

    .line 508
    or-int/lit16 v0, v1, 0x2000

    .line 510
    :goto_0
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    or-int/lit8 v0, v0, 0x10

    .line 522
    :cond_0
    :goto_1
    if-eq v0, v1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 525
    :cond_1
    return-void

    .line 514
    :cond_2
    if-eqz p2, :cond_3

    .line 515
    and-int/lit16 v0, v1, -0x2001

    .line 517
    :goto_2
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V
    .locals 6

    .prologue
    .line 2034
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 2035
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .locals 4

    .prologue
    .line 2039
    const/4 v0, 0x5

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2042
    new-instance v0, Lcom/android/launcher3/Launcher$16;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$16;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 2050
    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 2051
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p5, v3}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 2053
    :cond_0
    return-void
.end method

.method addFolder(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/folder/FolderIcon;
    .locals 8

    .prologue
    .line 2133
    new-instance v1, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 2134
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2137
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 2140
    const v0, 0x7f040013

    invoke-static {v0, p0, p1, v1}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    .line 2141
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 2143
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 2144
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 2145
    return-object v0
.end method

.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3170
    return-void
.end method

.method public addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V
    .locals 4

    .prologue
    .line 2063
    iput-wide p2, p1, Lcom/android/launcher3/PendingAddItemInfo;->container:J

    .line 2064
    iput-wide p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->screenId:J

    .line 2065
    if-eqz p6, :cond_0

    .line 2066
    const/4 v0, 0x0

    aget v0, p6, v0

    iput v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellX:I

    .line 2067
    const/4 v0, 0x1

    aget v0, p6, v0

    iput v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellY:I

    .line 2069
    :cond_0
    iput p7, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    .line 2070
    iput p8, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    .line 2072
    iget v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 2081
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2075
    :pswitch_1
    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    .line 2083
    :goto_0
    return-void

    .line 2078
    :pswitch_2
    check-cast p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V

    goto :goto_0

    .line 2072
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllApplicationsRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3736
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mTmpAppsList:Ljava/util/ArrayList;

    .line 3737
    return-void

    .line 3740
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 3741
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setApps(Ljava/util/List;)V

    .line 3743
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 3744
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 3746
    :cond_2
    return-void
.end method

.method public bindAllWidgets(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3918
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllWidgetsRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3919
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAllWidgets:Lcom/android/launcher3/util/MultiHashMap;

    .line 3920
    return-void

    .line 3923
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3924
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->setWidgets(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 3925
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mAllWidgets:Lcom/android/launcher3/util/MultiHashMap;

    .line 3928
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 3929
    if-eqz v0, :cond_2

    .line 3930
    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onWidgetsBound()V

    .line 3932
    :cond_2
    return-void
.end method

.method public bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 3894
    new-instance v0, Lcom/android/launcher3/Launcher$37;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$37;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 3899
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3900
    return-void

    .line 3904
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 3905
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->removeApps(Ljava/util/List;)V

    .line 3906
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->tryAndUpdatePredictedApps()V

    .line 3908
    :cond_1
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 3457
    new-instance v0, Lcom/android/launcher3/Launcher$28;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$28;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 3462
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3463
    return-void

    .line 3466
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_1

    .line 3468
    new-instance v0, Lcom/android/launcher3/PendingAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v0, p0, p1, v1, v6}, Lcom/android/launcher3/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V

    .line 3469
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 3470
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 3471
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 3472
    return-void

    .line 3482
    :cond_1
    invoke-virtual {p1, v7}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 3493
    :goto_0
    invoke-virtual {p1, v7}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3494
    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v2, :cond_8

    .line 3495
    if-nez v0, :cond_4

    .line 3501
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 3502
    return-void

    .line 3485
    :cond_2
    invoke-virtual {p1, v6}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3487
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    goto :goto_0

    .line 3489
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    goto :goto_0

    .line 3506
    :cond_4
    invoke-virtual {p1, v6}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3507
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3509
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    iput v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3510
    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3514
    new-instance v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {v2, v0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 3515
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 3516
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 3517
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 3518
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 3519
    invoke-static {p0, v2}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 3522
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v6

    .line 3523
    if-eqz v6, :cond_9

    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    if-eqz v2, :cond_9

    .line 3524
    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3525
    if-eqz v3, :cond_5

    .line 3526
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3530
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 3531
    iget v7, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3530
    invoke-virtual {v3, v7, v0, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v2

    .line 3536
    iput-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 3537
    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3540
    if-eqz v2, :cond_7

    .line 3543
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    if-eqz v6, :cond_a

    :cond_6
    move v1, v5

    :goto_2
    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3548
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 3560
    :cond_8
    :goto_3
    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v1, :cond_d

    .line 3567
    if-nez v0, :cond_c

    .line 3568
    const-string/jumbo v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing invalid widget: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 3570
    return-void

    :cond_9
    move-object v2, v3

    .line 3523
    goto :goto_1

    :cond_a
    move v1, v4

    .line 3545
    goto :goto_2

    .line 3550
    :cond_b
    invoke-virtual {p1, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3551
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v1, :cond_8

    .line 3554
    iput v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3555
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    goto :goto_3

    .line 3573
    :cond_c
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 3574
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 3575
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 3579
    :goto_4
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 3580
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 3581
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 3587
    return-void

    .line 3577
    :cond_d
    new-instance v0, Lcom/android/launcher3/PendingAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v0, p0, p1, v1, v5}, Lcom/android/launcher3/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V

    goto :goto_4
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3290
    new-instance v0, Lcom/android/launcher3/Launcher$24;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher$24;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3295
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3296
    return-void

    .line 3300
    :cond_0
    if-eqz p1, :cond_1

    .line 3301
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 3306
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3308
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3307
    invoke-virtual {p0, p2, v6, v0, v6}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 3310
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 3312
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    .line 3311
    invoke-virtual {p0, p3, v6, v0, v1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 3316
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v6, v6}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 3318
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_4

    .line 3319
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p4}, Lcom/android/launcher3/allapps/AllAppsContainerView;->addApps(Ljava/util/List;)V

    .line 3321
    :cond_4
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 3763
    new-instance v0, Lcom/android/launcher3/Launcher$32;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$32;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 3768
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3769
    return-void

    .line 3772
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 3773
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updateApps(Ljava/util/List;)V

    .line 3775
    :cond_1
    return-void
.end method

.method public bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 1

    .prologue
    .line 3754
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 3755
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;IIZ)V
    .locals 16

    .prologue
    .line 3331
    new-instance v2, Lcom/android/launcher3/Launcher$25;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/Launcher$25;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V

    .line 3336
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3337
    return-void

    .line 3341
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 3342
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3343
    if-eqz p4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->canRunNewAppsAnimation()Z

    move-result v2

    move v6, v2

    .line 3344
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 3345
    const-wide/16 v8, -0x1

    .line 3346
    :goto_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    .line 3347
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 3350
    iget-wide v4, v2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v3, v4, v12

    if-nez v3, :cond_2

    .line 3351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-nez v3, :cond_2

    move-wide v2, v8

    .line 3346
    :goto_2
    add-int/lit8 p2, p2, 0x1

    move-wide v8, v2

    goto :goto_1

    .line 3343
    :cond_1
    const/4 v2, 0x0

    move v6, v2

    goto :goto_0

    .line 3356
    :cond_2
    iget v3, v2, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 3387
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Invalid Item Type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    move-object v3, v2

    .line 3360
    check-cast v3, Lcom/android/launcher3/ShortcutInfo;

    .line 3361
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    .line 3393
    :goto_3
    iget-wide v12, v2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v3, v12, v14

    if-nez v3, :cond_5

    .line 3394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v12, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v3, v12, v13}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    .line 3395
    if-eqz v3, :cond_5

    iget v4, v2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v12, v2, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v3, v4, v12}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3396
    iget v4, v2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v5, v2, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 3397
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 3398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Collision while binding workspace item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3399
    const-string/jumbo v5, ". Collides with "

    .line 3398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3403
    const-string/jumbo v4, "Launcher"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    move-wide v2, v8

    .line 3405
    goto :goto_2

    .line 3366
    :pswitch_2
    invoke-virtual {v11}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v4, v2

    .line 3367
    check-cast v4, Lcom/android/launcher3/FolderInfo;

    .line 3365
    const v5, 0x7f040013

    move-object/from16 v0, p0

    invoke-static {v5, v0, v3, v4}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v5

    goto :goto_3

    :pswitch_3
    move-object v3, v2

    .line 3371
    check-cast v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 3372
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v4, :cond_3

    .line 3373
    new-instance v5, Lcom/android/launcher3/PendingAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v4, v12}, Lcom/android/launcher3/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V

    :goto_4
    move-object v4, v5

    .line 3383
    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    goto/16 :goto_3

    .line 3376
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v5, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v4

    .line 3377
    if-nez v4, :cond_4

    .line 3378
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    move-wide v2, v8

    .line 3379
    goto/16 :goto_2

    .line 3381
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget v12, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v12, v4}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    goto :goto_4

    .line 3409
    :cond_5
    invoke-virtual {v11, v5, v2}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 3410
    if-eqz v6, :cond_9

    .line 3412
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3413
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 3414
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 3415
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3416
    iget-wide v2, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    goto/16 :goto_2

    .line 3420
    :cond_6
    if-eqz v6, :cond_7

    .line 3422
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_7

    .line 3423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    .line 3424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    .line 3425
    new-instance v5, Lcom/android/launcher3/Launcher$26;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7, v10}, Lcom/android/launcher3/Launcher$26;-><init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    .line 3431
    cmp-long v2, v8, v2

    if-eqz v2, :cond_8

    .line 3434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v3, Lcom/android/launcher3/Launcher$27;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/android/launcher3/Launcher$27;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    .line 3442
    sget v4, Lcom/android/launcher3/Launcher;->NEW_APPS_PAGE_MOVE_DELAY:I

    int-to-long v4, v4

    .line 3434
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3448
    :cond_7
    :goto_5
    invoke-virtual {v11}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 3449
    return-void

    .line 3444
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget v3, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    int-to-long v6, v3

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_9
    move-wide v2, v8

    goto/16 :goto_2

    .line 3356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 1

    .prologue
    .line 3848
    new-instance v0, Lcom/android/launcher3/Launcher$35;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$35;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;)V

    .line 3853
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3854
    return-void

    .line 3857
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateRestoreItems(Ljava/util/HashSet;)V

    .line 3858
    return-void
.end method

.method public bindScreens(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 3252
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3253
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3254
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3255
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3260
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 3264
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3265
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->createCustomContentContainer()V

    .line 3266
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->populateCustomContentContainer()V

    .line 3272
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->unlockWallpaperFromDefaultPageOnNextLayout()V

    .line 3273
    return-void
.end method

.method public bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 6

    .prologue
    .line 3802
    new-instance v0, Lcom/android/launcher3/Launcher$34;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/Launcher$34;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 3807
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3808
    return-void

    .line 3811
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3812
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 3815
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3816
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3817
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3819
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 3820
    iget v4, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 3821
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3823
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3827
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3828
    invoke-static {v1, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v0

    .line 3829
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3830
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3833
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3834
    invoke-static {v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/HashSet;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v0

    .line 3835
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3836
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3839
    :cond_5
    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 3779
    new-instance v0, Lcom/android/launcher3/Launcher$33;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$33;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 3784
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3785
    return-void

    .line 3787
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    .line 3788
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 3871
    new-instance v0, Lcom/android/launcher3/Launcher$36;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/Launcher$36;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 3876
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3877
    return-void

    .line 3879
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3880
    invoke-static {p1, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v0

    .line 3881
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3882
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3885
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3886
    invoke-static {p2, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v0

    .line 3887
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3888
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3890
    :cond_2
    return-void
.end method

.method public clearPendingBinds()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3215
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3216
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 3217
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 3218
    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 3220
    :cond_0
    return-void
.end method

.method public clearPendingExecutor(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 1

    .prologue
    .line 3623
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-ne v0, p1, :cond_0

    .line 3624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 3626
    :cond_0
    return-void
.end method

.method public clearTypedText()V
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1264
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1265
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1266
    return-void
.end method

.method completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V
    .locals 8

    .prologue
    .line 1518
    if-nez p4, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p4

    .line 1522
    :cond_0
    iget-boolean v0, p4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_1

    .line 1523
    const/16 p1, -0x64

    .line 1527
    :cond_1
    new-instance v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v0, p4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1528
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 1529
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 1530
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iput v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 1531
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iput v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 1532
    invoke-virtual {p4}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 1534
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    .line 1535
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 1534
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1537
    if-nez p3, :cond_2

    .line 1539
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, p0, p1, p4}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    .line 1541
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1542
    invoke-direct {p0, p3, v1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1543
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1544
    return-void
.end method

.method completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 891
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v2, p3, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v8

    .line 896
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 897
    const/4 v6, 0x3

    .line 898
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 899
    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 898
    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    .line 901
    new-instance v0, Lcom/android/launcher3/Launcher$9;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;I)V

    move v5, v6

    move-object v6, v4

    move-object v4, v0

    .line 913
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 915
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dragndrop/DragView;

    .line 916
    const/4 v7, 0x1

    move-object v1, p3

    move-object v2, v8

    .line 914
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 921
    :cond_0
    :goto_1
    return-void

    .line 909
    :cond_1
    if-nez p1, :cond_3

    .line 910
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 911
    const/4 v5, 0x4

    move-object v4, v6

    goto :goto_0

    .line 917
    :cond_2
    if-eqz v4, :cond_0

    .line 919
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    move-object v4, v6

    goto :goto_0
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1432
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000a

    .line 1433
    const/4 v2, 0x0

    .line 1432
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 1434
    invoke-virtual {v0, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V

    .line 1435
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 1436
    invoke-virtual {v0, p0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1437
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1438
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 2208
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .prologue
    .line 3121
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3122
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 3123
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3125
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 3126
    const v2, 0x7f0c0033

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3134
    :goto_0
    return v0

    .line 3127
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v3, :cond_1

    .line 3128
    const v2, 0x7f0c004d

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3129
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_2

    .line 3130
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3132
    :cond_2
    const v2, 0x7f0c0034

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2747
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEventX:F

    .line 2748
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 4005
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BaseActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4007
    array-length v0, p4

    if-lez v0, :cond_5

    aget-object v0, p4, v2

    const-string/jumbo v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Workspace Items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4009
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 4010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "  Homescreen "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4012
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    move v0, v2

    .line 4013
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 4014
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 4015
    if-eqz v4, :cond_0

    .line 4016
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4013
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4009
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4021
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  Hotseat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4022
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 4023
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 4024
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 4025
    if-eqz v1, :cond_3

    .line 4026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4023
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4031
    :cond_4
    :try_start_0
    invoke-static {p3}, Lcom/android/launcher3/logging/FileLog;->flushAll(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4037
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Misc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\tmWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPendingRequestArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPendingActivityResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4042
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4044
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_6

    .line 4045
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4047
    :cond_6
    return-void

    .line 4032
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public enterSpringLoadedDragMode()V
    .locals 6

    .prologue
    .line 3044
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStateSpringLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3045
    return-void

    .line 3048
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    .line 3049
    sget-object v3, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    const/4 v4, 0x1

    .line 3050
    const/4 v5, 0x0

    .line 3048
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    .line 3051
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setState(Lcom/android/launcher3/Launcher$State;)V

    .line 3052
    return-void
.end method

.method public executeOnNextDraw(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 1

    .prologue
    .line 3615
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 3616
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 3618
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 3619
    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachTo(Lcom/android/launcher3/Launcher;)V

    .line 3620
    return-void
.end method

.method public exitSpringLoadedDragMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3087
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 3088
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZ)V

    .line 3095
    :cond_0
    :goto_0
    return-void

    .line 3090
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_2

    .line 3091
    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0

    .line 3092
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 3093
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_0
.end method

.method public exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 3056
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStateSpringLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3058
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3059
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3061
    :cond_1
    new-instance v0, Lcom/android/launcher3/Launcher$23;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/launcher3/Launcher$23;-><init>(Lcom/android/launcher3/Launcher;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    .line 3078
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3079
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishBindingItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3660
    new-instance v0, Lcom/android/launcher3/Launcher$31;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$31;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 3665
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3666
    return-void

    .line 3671
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 3673
    invoke-direct {p0, v4}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 3675
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_1

    .line 3676
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v0, v0, Lcom/android/launcher3/util/ActivityResultInfo;->requestCode:I

    .line 3677
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v1, v1, Lcom/android/launcher3/util/ActivityResultInfo;->resultCode:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget-object v2, v2, Lcom/android/launcher3/util/ActivityResultInfo;->data:Landroid/content/Intent;

    .line 3676
    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 3678
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 3681
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 3683
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->setNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 3685
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 3686
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, v4}, Lcom/android/launcher3/LauncherCallbacks;->finishBindingItems(Z)V

    .line 3691
    :cond_2
    return-void
.end method

.method public finishFirstPageBind(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3630
    new-instance v0, Lcom/android/launcher3/Launcher$29;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$29;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 3635
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3636
    return-void

    .line 3639
    :cond_0
    new-instance v0, Lcom/android/launcher3/Launcher$30;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$30;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 3647
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 3648
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3652
    :goto_0
    return-void

    .line 3650
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2673
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_0

    .line 2675
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2676
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 2678
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2679
    if-eqz v0, :cond_2

    .line 2680
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2681
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v2, v1

    div-int/lit8 v3, v1, 0x2

    .line 2682
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 2683
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2684
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 2687
    :goto_0
    invoke-static {p1, v3, v2, v1, v0}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 2688
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    if-eqz v0, :cond_1

    .line 2693
    const v0, 0x7f050002

    const v1, 0x7f050001

    .line 2692
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 2695
    :cond_1
    return-object v1

    :cond_2
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_0
.end method

.method public getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    return-object v0
.end method

.method public getCellLayout(JJ)Lcom/android/launcher3/CellLayout;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2838
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2839
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0

    .line 2842
    :cond_0
    return-object v2

    .line 2845
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 3202
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 3203
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    return v0

    .line 3205
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object v0
.end method

.method public getDropTargetBar()Lcom/android/launcher3/DropTargetBar;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    return-object v0
.end method

.method public getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 2564
    new-instance v0, Lcom/android/launcher3/Launcher$20;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$20;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    return-object v0
.end method

.method public getOverviewPanel()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object v0
.end method

.method public getQsbContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQsbContainer:Landroid/view/View;

    return-object v0
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStartViewForAllAppsRevealAnimation()Landroid/view/View;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object v0

    return-object v0
.end method

.method public getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2699
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2700
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2701
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getViewIdForItem(Lcom/android/launcher3/ItemInfo;)I
    .locals 2

    .prologue
    .line 653
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public getWidgetsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    return-object v0
.end method

.method public getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/Workspace;
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method protected hasCustomContentToLeft()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->hasCustomContentToLeft()Z

    move-result v0

    return v0

    .line 609
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSettings()Z
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->hasSettings()Z

    move-result v0

    return v0

    .line 1165
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAllAppsVisible()Z
    .locals 1

    .prologue
    .line 2853
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    return v0
.end method

.method public isAppsViewVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2857
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2830
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2831
    instance-of v1, p1, Lcom/android/launcher3/CellLayout;

    .line 2830
    if-eqz v1, :cond_0

    .line 2831
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 2830
    :cond_0
    return v0
.end method

.method public isOnCustomContent()Z
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    return v0
.end method

.method isStateSpringLoaded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3082
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 3083
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidgetsViewVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2861
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    .prologue
    .line 2004
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2000
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lockAllApps()V
    .locals 0

    .prologue
    .line 3113
    return-void
.end method

.method public lockScreenOrientation()V
    .locals 1

    .prologue
    .line 3954
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 3955
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 3957
    :cond_0
    return-void
.end method

.method protected moveWorkspaceToDefaultScreen()V
    .locals 2

    .prologue
    .line 3997
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen(Z)V

    .line 3998
    return-void
.end method

.method public notifyWidgetProvidersChanged()V
    .locals 1

    .prologue
    .line 3940
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace$State;->shouldUpdateWidget:Z

    if-eqz v0, :cond_0

    .line 3941
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 3943
    :cond_0
    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 1

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->onAccessibilityStateChanged(Z)V

    .line 2581
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 836
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->onActivityResult(IILandroid/content/Intent;)V

    .line 839
    :cond_0
    return-void
.end method

.method public onAppWidgetHostReset()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 476
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1593
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onAttachedToWindow()V

    .line 1596
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1597
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1598
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1599
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 1600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 1602
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onAttachedToWindow()V

    .line 1605
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2213
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2214
    return-void

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2218
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 2219
    return-void

    .line 2224
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    .line 2225
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    .line 2226
    if-eqz v1, :cond_5

    .line 2227
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getActiveTextView()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2228
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getActiveTextView()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    .line 2255
    :goto_0
    return-void

    .line 2230
    :cond_2
    instance-of v0, v1, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v0, :cond_4

    .line 2232
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getExtendedTouchView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x9

    .line 2231
    invoke-virtual {v2, v4, v0, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    .line 2237
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_0

    .line 2233
    :cond_4
    instance-of v0, v1, Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 2235
    check-cast v0, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    const/4 v3, 0x3

    .line 2234
    invoke-virtual {v2, v4, v0, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    goto :goto_1

    .line 2239
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2240
    const/4 v0, 0x4

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(II)V

    .line 2241
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_0

    .line 2242
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWidgetsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2243
    const/4 v0, 0x5

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(II)V

    .line 2244
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    goto :goto_0

    .line 2245
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2246
    const/4 v0, 0x6

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(II)V

    .line 2247
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_0

    .line 2250
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 2253
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->showOutlinesTemporarily()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2265
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2266
    return-void

    .line 2269
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2270
    return-void

    .line 2273
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_3

    .line 2274
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2275
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 2277
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 2275
    invoke-virtual {v0, v2, v2, v4, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 2278
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 2280
    :cond_2
    return-void

    .line 2283
    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_5

    .line 2284
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2285
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2286
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 2289
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->snapToPageFromOverView(I)V

    .line 2290
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 2292
    :cond_4
    return-void

    .line 2295
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2296
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_7

    .line 2297
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickAppShortcut(Landroid/view/View;)V

    .line 2312
    :cond_6
    :goto_0
    return-void

    .line 2298
    :cond_7
    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_8

    .line 2299
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_6

    .line 2300
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_0

    .line 2302
    :cond_8
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v1, :cond_9

    instance-of v1, p1, Lcom/android/launcher3/pageindicators/PageIndicator;

    if-nez v1, :cond_a

    .line 2303
    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v1, :cond_b

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 2304
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0

    .line 2305
    :cond_b
    instance-of v1, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v1, :cond_c

    .line 2306
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    goto :goto_0

    .line 2307
    :cond_c
    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_6

    .line 2308
    instance-of v0, p1, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-eqz v0, :cond_6

    .line 2309
    check-cast p1, Lcom/android/launcher3/PendingAppWidgetHostView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickPendingWidget(Lcom/android/launcher3/PendingAppWidgetHostView;)V

    goto :goto_0
.end method

.method public onClickAddWidgetButton(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2509
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_0

    .line 2510
    const v0, 0x7f0c0022

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2514
    :goto_0
    return-void

    .line 2512
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0
.end method

.method protected onClickAllAppsButton(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2361
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2362
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(II)V

    .line 2364
    invoke-virtual {p0, v1, v1, v2}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZ)V

    .line 2367
    :cond_0
    return-void
.end method

.method protected onClickAppShortcut(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2422
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2423
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v1, :cond_0

    .line 2424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input must be a Shortcut"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2428
    :cond_0
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 2430
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    if-eqz v1, :cond_1

    .line 2431
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v1, v1, -0x5

    and-int/lit8 v1, v1, -0x9

    if-nez v1, :cond_2

    .line 2456
    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2457
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2458
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2459
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2461
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    .line 2460
    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/Launcher;->onClickPendingAppItem(Landroid/view/View;Ljava/lang/String;Z)V

    .line 2462
    return-void

    .line 2437
    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2439
    iget-object v0, v0, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2440
    return-void

    .line 2443
    :cond_3
    const v1, 0x7f0c0020

    .line 2444
    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 2445
    const v0, 0x7f0c0021

    .line 2450
    :goto_1
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2451
    return-void

    .line 2446
    :cond_4
    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    .line 2447
    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 2448
    :cond_5
    const v0, 0x7f0c0023

    goto :goto_1

    :cond_6
    move v0, v1

    .line 2447
    goto :goto_1

    .line 2458
    :cond_7
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2467
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 2468
    return-void
.end method

.method protected onClickFolderIcon(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2492
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v0, :cond_0

    .line 2493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input must be a FolderIcon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2496
    :cond_0
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 2497
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2499
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    .line 2501
    :cond_1
    return-void
.end method

.method public onClickPendingWidget(Lcom/android/launcher3/PendingAppWidgetHostView;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2323
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_0

    .line 2324
    const v0, 0x7f0c0022

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2325
    return-void

    .line 2328
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2329
    invoke-virtual {p1}, Lcom/android/launcher3/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2331
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 2332
    if-nez v2, :cond_1

    .line 2333
    return-void

    .line 2335
    :cond_1
    new-instance v3, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v3, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2337
    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2338
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2340
    return-void

    .line 2342
    :cond_2
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 2343
    const/16 v2, 0xe

    .line 2342
    invoke-virtual {v3, p0, v1, v0, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)V

    .line 2351
    :goto_0
    return-void

    .line 2345
    :cond_3
    const/16 v1, 0xc

    invoke-virtual {v3, p0, v0, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;I)Z

    goto :goto_0

    .line 2348
    :cond_4
    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2349
    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    if-ltz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, v3, v0}, Lcom/android/launcher3/Launcher;->onClickPendingAppItem(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public onClickSettingsButton(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2555
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2556
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2555
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2557
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2558
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2559
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 2560
    return-void
.end method

.method public onClickWallpaperPicker(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2521
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isWallpaperAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2522
    const v0, 0x7f0c0050

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2523
    return-void

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    .line 2527
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(I)F

    move-result v0

    .line 2528
    new-instance v2, Lcom/android/launcher3/util/PendingRequestArgs;

    new-instance v3, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v3}, Lcom/android/launcher3/ItemInfo;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 2529
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2530
    const-string/jumbo v3, "com.android.launcher3.WALLPAPER_OFFSET"

    .line 2529
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v2

    .line 2532
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2533
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2534
    if-nez v3, :cond_1

    .line 2535
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2538
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2542
    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    .line 2540
    :goto_0
    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    :goto_1
    return-void

    :cond_2
    move-object v0, v1

    .line 2542
    goto :goto_0

    .line 2543
    :catch_0
    move-exception v0

    .line 2544
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 2545
    const v0, 0x7f0c001f

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->preOnCreate()V

    .line 362
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 364
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 368
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isInMultiWindowModeCompat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 370
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 371
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 372
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 375
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    .line 377
    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 378
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->getWriter(Z)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    .line 379
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 380
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 382
    new-instance v0, Lcom/android/launcher3/dragndrop/DragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 383
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 384
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    .line 386
    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 388
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;-><init>(Lcom/android/launcher3/Launcher;I)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 394
    iput-boolean v4, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 396
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040016

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    .line 398
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    .line 399
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0, v4}, Lcom/android/launcher3/DeviceProfile;->layout(Lcom/android/launcher3/Launcher;Z)V

    .line 400
    new-instance v0, Lcom/android/launcher3/dynamicui/ExtractedColors;

    invoke-direct {v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

    .line 401
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->loadExtractedColorsAndColorItems()V

    .line 403
    new-instance v0, Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 405
    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->lockAllApps()V

    .line 410
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 418
    const/16 v0, -0x3e9

    .line 419
    if-eqz p1, :cond_2

    .line 420
    const-string/jumbo v1, "launcher.current_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    .line 434
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 435
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 440
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-nez v0, :cond_3

    .line 441
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isAllowRotationPrefEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 442
    new-instance v0, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 446
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->handleDragRequest(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 453
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->setOrientation()V

    .line 455
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setContentView(Landroid/view/View;)V

    .line 456
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_5

    .line 457
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    .line 459
    :cond_5
    return-void

    .line 428
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 430
    invoke-direct {p0, v5}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1852
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onDestroy()V

    .line 1854
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1855
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    .line 1860
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1862
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1870
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    :goto_0
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 1876
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1878
    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1881
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->onDestroyActivity()V

    .line 1883
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1884
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDestroy()V

    .line 1886
    :cond_2
    return-void

    .line 1871
    :catch_0
    move-exception v0

    .line 1872
    const-string/jumbo v1, "Launcher"

    const-string/jumbo v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1609
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onDetachedFromWindow()V

    .line 1610
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDetachedFromWindow()V

    .line 1618
    :cond_1
    return-void
.end method

.method public onDragStarted()V
    .locals 1

    .prologue
    .line 2584
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isOnCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2587
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->moveWorkspaceToDefaultScreen()V

    .line 2589
    :cond_0
    return-void
.end method

.method public onExtractedColorsChanged()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->loadExtractedColorsAndColorItems()V

    .line 469
    return-void
.end method

.method public onInsetsChanged(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 538
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/DeviceProfile;->layout(Lcom/android/launcher3/Launcher;Z)V

    .line 539
    return-void
.end method

.method protected onInteractionBegin()V
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onInteractionBegin()V

    .line 2614
    :cond_0
    return-void
.end method

.method protected onInteractionEnd()V
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 2597
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onInteractionEnd()V

    .line 2599
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1209
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    .line 1210
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1211
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1212
    :cond_0
    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->acceptFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1213
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1, v3, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1215
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1222
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onSearchRequested()Z

    move-result v0

    return v0

    .line 1227
    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    const/4 v0, 0x1

    return v0

    .line 1231
    :cond_2
    return v2
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4078
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4079
    sparse-switch p1, :sswitch_data_0

    .line 4105
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 4081
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 4082
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v4, v0}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZ)V

    .line 4083
    return v4

    .line 4087
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 4088
    instance-of v0, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 4089
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    .line 4088
    if-eqz v0, :cond_0

    .line 4090
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 4091
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 4092
    const v3, 0x7f0e000f

    .line 4090
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    .line 4088
    if-eqz v0, :cond_0

    .line 4093
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->requestFocus()Z

    .line 4094
    return v4

    .line 4099
    :sswitch_2
    new-instance v0, Lcom/android/launcher3/keyboard/CustomActionsPopup;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/keyboard/CustomActionsPopup;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->show()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4100
    return v4

    .line 4079
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x2b -> :sswitch_2
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1236
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 1238
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isOnCustomContent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1240
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 1243
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 1246
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1246
    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1249
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/Launcher;->showOverviewMode(ZZ)V

    .line 1252
    :cond_0
    return v2

    .line 1254
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherProviderChanged()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onLauncherProviderChange()V

    .line 602
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2753
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    .line 2754
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 2755
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v2, :cond_2

    return v4

    .line 2757
    :cond_2
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/android/launcher3/pageindicators/PageIndicator;

    if-nez v0, :cond_4

    .line 2758
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 2759
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onLongClickAllAppsButton(Landroid/view/View;)V

    .line 2760
    return v3

    .line 2765
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEventX:F

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DeviceProfile;->shouldIgnoreLongPressToOverview(F)Z

    move-result v5

    .line 2767
    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_8

    .line 2768
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2769
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_6

    xor-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_6

    .line 2770
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 2772
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 2770
    invoke-virtual {v0, v3, v4, v3, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 2773
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    .line 2774
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    .line 2776
    return v3

    .line 2778
    :cond_6
    return v4

    .line 2781
    :cond_7
    return v4

    .line 2787
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_e

    .line 2788
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 2789
    new-instance v2, Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-direct {v2, p1, v0}, Lcom/android/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 2790
    iget-object v0, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2791
    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    move-object v1, v2

    .line 2796
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2797
    if-nez v0, :cond_c

    .line 2799
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2800
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->startReordering(Landroid/view/View;)Z

    .line 2801
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 2802
    const/4 v1, 0x6

    .line 2801
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(III)V

    .line 2812
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    .line 2825
    :cond_9
    :goto_2
    return v3

    .line 2804
    :cond_a
    if-eqz v5, :cond_b

    .line 2805
    return v4

    .line 2807
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 2809
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 2807
    invoke-virtual {v0, v3, v4, v3, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 2810
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    goto :goto_1

    .line 2819
    :cond_c
    instance-of v0, v0, Lcom/android/launcher3/folder/Folder;

    if-nez v0, :cond_d

    move v0, v4

    :goto_3
    if-nez v0, :cond_9

    .line 2821
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    goto :goto_2

    :cond_d
    move v0, v3

    .line 2819
    goto :goto_3

    :cond_e
    move-object v0, v1

    goto :goto_0
.end method

.method protected onLongClickAllAppsButton(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2371
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2372
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(II)V

    .line 2374
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZ)V

    .line 2377
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/high16 v3, 0x400000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1713
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1715
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_0

    move v4, v1

    .line 1720
    :goto_0
    if-eqz v4, :cond_2

    .line 1721
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_2

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v3, v0

    .line 1723
    :goto_2
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1724
    if-eqz v5, :cond_8

    .line 1725
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v0, :cond_3

    .line 1727
    return-void

    :cond_0
    move v4, v2

    .line 1715
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1721
    goto :goto_1

    :cond_2
    move v3, v2

    .line 1720
    goto :goto_2

    .line 1732
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v6

    .line 1735
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 1737
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 1738
    instance-of v7, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v7, :cond_b

    .line 1740
    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->getExtendedTouchView()Landroid/view/View;

    move-result-object v0

    const/16 v7, 0x9

    .line 1739
    invoke-virtual {v6, v2, v0, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    .line 1750
    :cond_4
    :goto_3
    invoke-static {p0, v4}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;Z)V

    .line 1751
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragMode()V

    .line 1755
    if-eqz v4, :cond_d

    .line 1756
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 1761
    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v6

    .line 1762
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1764
    const-string/jumbo v0, "input_method"

    .line 1763
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1765
    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1769
    :cond_5
    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_6

    .line 1770
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->scrollToTop()V

    .line 1774
    :cond_6
    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    if-eqz v0, :cond_7

    .line 1775
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->scrollToTop()V

    .line 1778
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_8

    .line 1779
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onHomeIntent()V

    .line 1782
    :cond_8
    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->handleDragRequest(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)Z

    .line 1784
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_9

    .line 1785
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onNewIntent(Landroid/content/Intent;)V

    .line 1791
    :cond_9
    if-eqz v5, :cond_a

    .line 1792
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_e

    .line 1793
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->shouldMoveToDefaultScreenOnHomeIntent()Z

    move-result v0

    .line 1794
    :goto_5
    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 1799
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mMoveToDefaultScreenFromNewIntent:Z

    .line 1800
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Launcher$15;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$15;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1814
    :cond_a
    return-void

    .line 1741
    :cond_b
    instance-of v7, v0, Lcom/android/launcher3/folder/Folder;

    if-eqz v7, :cond_c

    .line 1743
    check-cast v0, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    const/4 v7, 0x3

    .line 1742
    invoke-virtual {v6, v2, v0, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    goto/16 :goto_3

    .line 1744
    :cond_c
    if-eqz v4, :cond_4

    .line 1746
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/Workspace$State;->containerType:I

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v7

    .line 1745
    invoke-virtual {v6, v2, v0, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(III)V

    goto/16 :goto_3

    .line 1758
    :cond_d
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    goto/16 :goto_4

    :cond_e
    move v0, v1

    .line 1793
    goto :goto_5
.end method

.method public onPageBoundSynchronously(I)V
    .locals 2

    .prologue
    .line 3610
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3611
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1075
    invoke-static {}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue()V

    .line 1077
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    .line 1078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 1079
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 1080
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->resetLastGestureUpTime()V

    .line 1084
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onHide()V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onPause()V

    .line 1091
    :cond_1
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 530
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onPostCreate(Landroid/os/Bundle;)V

    .line 534
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1985
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1986
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1989
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 6

    .prologue
    const/16 v5, 0x1000

    .line 4054
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4055
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v2, :cond_0

    .line 4056
    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f0c0033

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4057
    const/16 v3, 0x1d

    .line 4056
    invoke-direct {v0, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4059
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 4060
    new-instance v2, Lcom/android/launcher3/keyboard/CustomActionsPopup;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/keyboard/CustomActionsPopup;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->canShow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4061
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f0c0025

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4062
    const/16 v4, 0x2b

    .line 4061
    invoke-direct {v2, v3, v4, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4064
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ItemInfo;

    if-eqz v2, :cond_2

    .line 4065
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    .line 4064
    if-eqz v0, :cond_2

    .line 4066
    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f0c007d

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4067
    const/16 v3, 0x2f

    .line 4066
    invoke-direct {v0, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4069
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4070
    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f0c0024

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4073
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 4074
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9

    .prologue
    const/16 v3, 0xd

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 844
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 845
    if-ne p1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 846
    invoke-virtual {v2}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 847
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 850
    iget-wide v4, v2, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    iget-wide v6, v2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_3

    .line 852
    iget v3, v2, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v4, v2, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 854
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v2

    .line 856
    array-length v3, p3

    if-lez v3, :cond_2

    .line 857
    aget v3, p3, v8

    if-nez v3, :cond_2

    .line 858
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 865
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 869
    :cond_1
    return-void

    .line 861
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 862
    const v1, 0x7f0c0016

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 861
    const v1, 0x7f0c003e

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1818
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1819
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1820
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_0

    .line 1822
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 965
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->preOnResume()V

    .line 969
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onResume()V

    .line 970
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedSessionMillis()V

    .line 973
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_3

    .line 974
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 985
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    .line 987
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 988
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v0, :cond_2

    .line 989
    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 990
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentWorkspaceScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    .line 991
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v3, v2

    .line 1001
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1002
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1001
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_5

    .line 976
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_4

    move v0, v1

    .line 980
    :goto_2
    xor-int/lit8 v0, v0, 0x1

    .line 981
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsContainerView;->shouldRestoreImeState()Z

    move-result v3

    .line 980
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZ)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 976
    goto :goto_2

    .line 982
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_1

    .line 983
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0

    .line 1004
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1010
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    move v3, v2

    .line 1011
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1012
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1011
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 1014
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1019
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_a

    .line 1021
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 1028
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1029
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->reinflateWidgetsIfNecessary()V

    .line 1041
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1042
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mMoveToDefaultScreenFromNewIntent:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1041
    if-eqz v0, :cond_c

    .line 1046
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1047
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onShow(Z)V

    .line 1050
    :cond_c
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mMoveToDefaultScreenFromNewIntent:Z

    .line 1051
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->updateInteraction(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 1052
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onResume()V

    .line 1054
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1056
    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 1059
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->refreshShortcutsIfRequired()V

    .line 1062
    :cond_d
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->shouldShowDiscoveryBounce()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1063
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->showDiscoveryBounce()V

    .line 1065
    :cond_e
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mIsResumeFromActionScreenOff:Z

    .line 1066
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_f

    .line 1067
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onResume()V

    .line 1070
    :cond_f
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1187
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1826
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1827
    const-string/jumbo v0, "launcher.current_screen"

    .line 1828
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPageOffsetFromCustomContent()I

    move-result v1

    .line 1827
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1831
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1833
    const-string/jumbo v0, "launcher.state"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1836
    invoke-static {p0, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;Z)V

    .line 1838
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_1

    .line 1839
    const-string/jumbo v0, "launcher.request_args"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1841
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_2

    .line 1842
    const-string/jumbo v0, "launcher.activity_result"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1845
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_3

    .line 1846
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1848
    :cond_3
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1994
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1996
    return v1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 941
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onStart()V

    .line 942
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 944
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onStart()V

    .line 948
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 952
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 953
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->setNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 955
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 925
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onStop()V

    .line 926
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 928
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onStop()V

    .line 932
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->stopListening()V

    .line 936
    :cond_1
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener()V

    .line 937
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2316
    const/4 v0, 0x0

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 2866
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onTrimMemory(I)V

    .line 2867
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 2870
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 2875
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 2876
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onTrimMemory(I)V

    .line 2878
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 1193
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onWindowFocusChanged(Z)V

    .line 1194
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 1196
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onWindowFocusChanged(Z)V

    .line 1199
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 1624
    if-nez p1, :cond_1

    .line 1625
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1630
    new-instance v1, Lcom/android/launcher3/Launcher$14;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$14;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1655
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearTypedText()V

    .line 1657
    :cond_1
    return-void
.end method

.method protected onWorkspaceLockedChanged()V
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onWorkspaceLockedChanged()V

    .line 2027
    :cond_0
    return-void
.end method

.method protected populateCustomContentContainer()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->populateCustomContentContainer()V

    .line 621
    :cond_0
    return-void
.end method

.method public refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 2

    .prologue
    .line 3950
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetsContainerView;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/LauncherModel$Callbacks;ZLcom/android/launcher3/util/PackageUserKey;)V

    .line 3951
    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2156
    instance-of v0, p2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 2158
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 2159
    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_1

    .line 2160
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 2164
    :goto_0
    if-eqz p3, :cond_0

    .line 2165
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2185
    :cond_0
    :goto_1
    return v4

    .line 2162
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_0

    .line 2167
    :cond_2
    instance-of v0, p2, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_4

    .line 2168
    check-cast p2, Lcom/android/launcher3/FolderInfo;

    .line 2169
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 2170
    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 2172
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2173
    if-eqz p3, :cond_0

    .line 2174
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/FolderInfo;)V

    goto :goto_1

    .line 2176
    :cond_4
    instance-of v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5

    .line 2177
    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2178
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2179
    if-eqz p3, :cond_0

    .line 2180
    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    goto :goto_1

    .line 2183
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public setAllAppsButton(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 1404
    return-void
.end method

.method public setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z
    .locals 2

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    .line 553
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    new-instance v1, Lcom/android/launcher3/Launcher$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherCallbacks;->setLauncherSearchCallback(Ljava/lang/Object;)V

    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public setLauncherOverlay(Lcom/android/launcher3/Launcher$LauncherOverlay;)V
    .locals 1

    .prologue
    .line 545
    if-eqz p1, :cond_0

    .line 546
    new-instance v0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-interface {p1, v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->setLauncherOverlay(Lcom/android/launcher3/Launcher$LauncherOverlay;)V

    .line 549
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3188
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3190
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 3191
    return v1

    .line 3193
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setOrientation()V
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x5

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 2

    .prologue
    .line 2016
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 2017
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 2018
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2019
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onWorkspaceLockedChanged()V

    .line 2021
    :cond_0
    return-void
.end method

.method public showAppsView(ZZZ)V
    .locals 1

    .prologue
    .line 2965
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->markAppsViewShown()V

    .line 2966
    if-eqz p2, :cond_0

    .line 2967
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->tryAndUpdatePredictedApps()V

    .line 2969
    :cond_0
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0, p1, p3}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(Lcom/android/launcher3/Launcher$State;ZZ)Z

    .line 2970
    return-void
.end method

.method public showOverviewMode(Z)V
    .locals 1

    .prologue
    .line 2913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->showOverviewMode(ZZ)V

    .line 2914
    return-void
.end method

.method showOverviewMode(ZZ)V
    .locals 6

    .prologue
    .line 2921
    const/4 v5, 0x0

    .line 2922
    if-eqz p2, :cond_0

    .line 2923
    new-instance v5, Lcom/android/launcher3/Launcher$21;

    invoke-direct {v5, p0}, Lcom/android/launcher3/Launcher$21;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 2933
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setVisibility(I)V

    .line 2934
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    .line 2935
    sget-object v3, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    move v4, p1

    .line 2934
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    .line 2936
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setState(Lcom/android/launcher3/Launcher$State;)V

    .line 2940
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->requestDisallowInterceptTouchEvent(Z)V

    .line 2941
    return-void
.end method

.method showWidgetsView(ZZ)V
    .locals 2

    .prologue
    .line 2977
    if-eqz p2, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->scrollToTop()V

    .line 2980
    :cond_0
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(Lcom/android/launcher3/Launcher$State;ZZ)Z

    .line 2982
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    new-instance v1, Lcom/android/launcher3/Launcher$22;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$22;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsContainerView;->post(Ljava/lang/Runnable;)Z

    .line 2988
    return-void
.end method

.method public showWorkspace(Z)Z
    .locals 1

    .prologue
    .line 2881
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->showWorkspace(ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public showWorkspace(ZLjava/lang/Runnable;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2885
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v3, :cond_3

    .line 2886
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v2, v3, :cond_4

    move v6, v0

    .line 2887
    :goto_0
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2888
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setVisibility(I)V

    .line 2889
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    .line 2890
    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    move v4, p1

    move-object v5, p2

    .line 2889
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    .line 2893
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2894
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2899
    :cond_1
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setState(Lcom/android/launcher3/Launcher$State;)V

    .line 2901
    if-eqz v6, :cond_2

    .line 2903
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2904
    const/16 v1, 0x20

    .line 2903
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2906
    :cond_2
    return v6

    :cond_3
    move v6, v0

    .line 2885
    goto :goto_0

    :cond_4
    move v6, v1

    .line 2886
    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1898
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1899
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2705
    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {p0, p2}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2706
    const v1, 0x7f0c0021

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2707
    return v4

    .line 2711
    :cond_0
    if-eqz p1, :cond_3

    .line 2712
    const-string/jumbo v2, "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 2713
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v2

    move-object v3, v2

    .line 2715
    :goto_1
    if-nez p3, :cond_5

    move-object v2, v1

    .line 2718
    :goto_2
    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2719
    if-eqz p1, :cond_1

    .line 2720
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2723
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v1, :cond_6

    .line 2724
    instance-of v1, p3, Lcom/android/launcher3/ShortcutInfo;

    .line 2723
    if-eqz v1, :cond_6

    .line 2725
    iget v1, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq v1, v7, :cond_2

    .line 2726
    iget v1, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v1, v5, :cond_6

    .line 2727
    :cond_2
    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2723
    if-eqz v1, :cond_6

    .line 2729
    invoke-direct {p0, p2, v3, p3}, Lcom/android/launcher3/Launcher;->startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/ItemInfo;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2737
    :goto_3
    return v7

    :cond_3
    move v2, v4

    .line 2711
    goto :goto_0

    :cond_4
    move-object v3, v1

    .line 2713
    goto :goto_1

    .line 2715
    :cond_5
    iget-object v1, p3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    move-object v2, v1

    goto :goto_2

    .line 2730
    :cond_6
    if-eqz v2, :cond_7

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2732
    :cond_7
    invoke-virtual {p0, p2, v3}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2738
    :catch_0
    move-exception v1

    .line 2739
    const v2, 0x7f0c001f

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2740
    const-string/jumbo v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to launch. tag="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " intent="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2742
    return v4

    .line 2734
    :cond_8
    :try_start_2
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v1

    .line 2735
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2734
    invoke-virtual {v1, v5, v2, v6, v3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public startBinding()V
    .locals 1

    .prologue
    .line 3232
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 3234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 3237
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->clearDropTargets()V

    .line 3238
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeAllWorkspaceScreens()V

    .line 3240
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    .line 3241
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->resetLayout()V

    .line 3246
    :cond_0
    return-void
.end method

.method public startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 1945
    const-string/jumbo v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1946
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 1947
    if-nez v1, :cond_0

    .line 1948
    const-string/jumbo v0, "Launcher"

    const-string/jumbo v1, "No global search activity found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    return-void

    .line 1951
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1952
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1953
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1955
    if-nez p3, :cond_4

    .line 1956
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1961
    :goto_0
    const-string/jumbo v3, "source"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1962
    const-string/jumbo v3, "source"

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    :cond_1
    const-string/jumbo v3, "app_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1965
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1966
    const-string/jumbo v0, "query"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1968
    :cond_2
    if-eqz p2, :cond_3

    .line 1969
    const-string/jumbo v0, "select_query"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1971
    :cond_3
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1973
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    :goto_1
    return-void

    .line 1958
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1974
    :catch_0
    move-exception v0

    .line 1975
    const-string/jumbo v0, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Global search activity not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1905
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/BaseActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    return-void

    .line 1907
    :catch_0
    move-exception v0

    .line 1908
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1920
    if-nez p1, :cond_0

    .line 1922
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1924
    :cond_0
    if-nez p3, :cond_1

    .line 1925
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1926
    const-string/jumbo v0, "source"

    const-string/jumbo v1, "launcher-search"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1930
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1929
    if-eqz v0, :cond_3

    .line 1932
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/launcher3/Launcher;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 1936
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 1937
    return-void
.end method

.method public startWorkspaceStateChangeAnimation(Lcom/android/launcher3/Workspace$State;ZLcom/android/launcher3/anim/AnimationLayerSet;)Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    .line 3037
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/Workspace;->setStateWithAnimation(Lcom/android/launcher3/Workspace$State;ZLcom/android/launcher3/anim/AnimationLayerSet;)Landroid/animation/Animator;

    move-result-object v1

    .line 3038
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->updateInteraction(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 3039
    return-object v1
.end method

.method public tryAndUpdatePredictedApps()V
    .locals 2

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 3103
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->getPredictedApps()Ljava/util/List;

    move-result-object v0

    .line 3104
    if-eqz v0, :cond_0

    .line 3105
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setPredictedApps(Ljava/util/List;)V

    .line 3106
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->setPredictedApps(Ljava/util/List;)V

    .line 3109
    :cond_0
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 4

    .prologue
    .line 3960
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 3961
    if-eqz p1, :cond_1

    .line 3962
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 3971
    :cond_0
    :goto_0
    return-void

    .line 3964
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/Launcher$38;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$38;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 3968
    const-wide/16 v2, 0x1f4

    .line 3964
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateIconBadges(Ljava/util/Set;)V
    .locals 2

    .prologue
    .line 1574
    new-instance v0, Lcom/android/launcher3/Launcher$13;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$13;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/Set;)V

    .line 1586
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1587
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1589
    :cond_0
    return-void
.end method

.method public updateInteraction(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2620
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p1, v0, :cond_1

    move v0, v1

    .line 2621
    :goto_0
    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p2, v3, :cond_2

    .line 2622
    :goto_1
    if-eqz v1, :cond_3

    .line 2623
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onInteractionBegin()V

    .line 2627
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 2620
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2621
    goto :goto_1

    .line 2624
    :cond_3
    if-eqz v0, :cond_0

    .line 2625
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onInteractionEnd()V

    goto :goto_2
.end method

.method public useVerticalBarLayout()Z
    .locals 1

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    return v0
.end method

.method waitUntilResume(Ljava/lang/Runnable;Z)Z
    .locals 1

    .prologue
    .line 3151
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_2

    .line 3153
    if-eqz p2, :cond_1

    .line 3154
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3157
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3158
    const/4 v0, 0x1

    return v0

    .line 3160
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
