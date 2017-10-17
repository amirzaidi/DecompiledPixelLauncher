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
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;


# static fields
.field protected static final sCustomAppWidgets:Ljava/util/HashMap;


# instance fields
.field private mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private mAllAppsButton:Landroid/view/View;

.field mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field mAllWidgets:Lcom/android/launcher3/util/MultiHashMap;

.field private mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private final mBindAllApplicationsRunnable:Ljava/lang/Runnable;

.field private final mBindAllWidgetsRunnable:Ljava/lang/Runnable;

.field private final mBindOnResumeCallbacks:Ljava/util/ArrayList;

.field final mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field private mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

.field private final mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

.field public mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private final mHandler:Landroid/os/Handler;

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

.field private final mOnResumeCallbacks:Ljava/util/ArrayList;

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:Lcom/android/launcher3/Launcher$State;

.field private mOverviewPanel:Landroid/view/ViewGroup;

.field private mPaused:Z

.field private mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

.field private mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

.field private mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

.field private mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotationEnabled:Z

.field private mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

.field private mScrimAnimator:Landroid/animation/ObjectAnimator;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mShouldFadeInScrim:Z

.field mState:Lcom/android/launcher3/Launcher$State;

.field mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field private final mSynchronouslyBoundPages:Ljava/util/ArrayList;

.field private final mTmpAddItemCellCoordinates:[I

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

.method static synthetic -set2(Lcom/android/launcher3/Launcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/launcher3/Launcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->startMarketIntentForPackage(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    sput-object v0, Lcom/android/launcher3/Launcher;->sCustomAppWidgets:Ljava/util/HashMap;

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    .line 207
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    .line 222
    new-instance v0, Lcom/android/launcher3/dynamicui/ExtractedColors;

    invoke-direct {v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 255
    sget-object v0, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 259
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 261
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    .line 274
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    .line 314
    new-instance v0, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEventX:F

    .line 333
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 1531
    new-instance v0, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3686
    new-instance v0, Lcom/android/launcher3/Launcher$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllApplicationsRunnable:Ljava/lang/Runnable;

    .line 3890
    new-instance v0, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllWidgetsRunnable:Ljava/lang/Runnable;

    .line 151
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1170
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1169
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1171
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2072
    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2074
    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    .line 2075
    if-eqz v0, :cond_0

    .line 2080
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 2082
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    .line 2083
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    .line 2086
    iput-object v5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 2101
    :goto_0
    return-void

    .line 2090
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 2091
    iget-object v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 2093
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 2094
    iget-object v4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 2093
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v2

    .line 2095
    if-eqz v2, :cond_1

    .line 2096
    invoke-virtual {p0, v0, p1, v5, v1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    goto :goto_0

    .line 2098
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)V

    goto :goto_0
.end method

.method private bindAddScreens(Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    .line 3236
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3237
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3238
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3239
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 3241
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(J)V

    .line 3237
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3244
    :cond_1
    return-void
.end method

.method private canRunNewAppsAnimation()Z
    .locals 4

    .prologue
    .line 3658
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->getLastGestureUpTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3659
    const-wide/16 v2, 0x1388

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

    .line 625
    iget-wide v4, p4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 626
    iget-wide v0, p4, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 629
    iget-wide v0, p4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v4

    .line 632
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 659
    :cond_1
    :goto_0
    return-wide v4

    .line 634
    :sswitch_0
    iget-wide v2, p4, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    iget v6, p4, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v7, p4, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    move-object v0, p0

    move-object v1, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Launcher;->completeAddShortcut(Landroid/content/Intent;JJIILcom/android/launcher3/util/PendingRequestArgs;)V

    goto :goto_0

    .line 637
    :sswitch_1
    invoke-virtual {p0, p3, p4, v6, v6}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    goto :goto_0

    .line 640
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;

    goto :goto_0

    .line 645
    :sswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, p3, v0}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_1

    .line 648
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 650
    if-eqz v1, :cond_1

    .line 651
    new-instance v2, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v2, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 652
    const/16 v1, 0xd

    .line 651
    invoke-virtual {v2, p0, v0, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;I)Z

    goto :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_3
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method private completeAddShortcut(Landroid/content/Intent;JJIILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 18

    .prologue
    .line 1407
    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1408
    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1409
    :cond_0
    return-void

    .line 1412
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 1413
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v10

    .line 1415
    const/4 v6, 0x0

    .line 1416
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1418
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v6

    const-wide/16 v8, 0x0

    .line 1417
    move-object/from16 v0, p0

    invoke-static {v0, v6, v8, v9}, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->createShortcutInfoFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v6

    .line 1421
    :cond_2
    if-nez v6, :cond_5

    .line 1423
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, p8

    iget-object v7, v0, Lcom/android/launcher3/util/PendingRequestArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1424
    invoke-static/range {p0 .. p1}, Lcom/android/launcher3/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v6

    .line 1426
    :goto_0
    if-nez v6, :cond_4

    .line 1427
    const-string/jumbo v6, "Launcher"

    const-string/jumbo v7, "Unable to parse a valid custom shortcut result"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    return-void

    .line 1424
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1429
    :cond_4
    new-instance v7, Lcom/android/launcher3/util/PackageManagerHelper;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 1430
    iget-object v8, v6, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1429
    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1432
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

    .line 1433
    return-void

    :cond_5
    move-object/from16 v17, v6

    .line 1437
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-gez v6, :cond_a

    .line 1439
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v7

    .line 1442
    if-ltz p6, :cond_8

    if-ltz p7, :cond_8

    .line 1443
    const/4 v6, 0x0

    aput p6, v11, v6

    .line 1444
    const/4 v6, 0x1

    aput p7, v11, v6

    .line 1445
    const/16 v16, 0x1

    .line 1448
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v12, 0x0

    .line 1449
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v8, p2

    .line 1448
    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1450
    return-void

    .line 1452
    :cond_6
    new-instance v13, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v13}, Lcom/android/launcher3/DropTarget$DragObject;-><init>()V

    .line 1453
    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 1454
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v12, 0x0

    .line 1455
    const/4 v14, 0x1

    move-object v9, v7

    .line 1454
    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1456
    return-void

    :cond_7
    move/from16 v6, v16

    .line 1462
    :goto_1
    if-nez v6, :cond_9

    .line 1463
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, v10}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    .line 1464
    return-void

    .line 1459
    :cond_8
    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual {v10, v11, v6, v8}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v6

    goto :goto_1

    .line 1467
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    const/4 v6, 0x0

    aget v14, v11, v6

    const/4 v6, 0x1

    aget v15, v11, v6

    move-object/from16 v9, v17

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, v17

    invoke-virtual {v6, v7, v0}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1486
    :goto_2
    return-void

    .line 1472
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v7, Lcom/android/launcher3/Launcher$13;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v7, v0, v1, v2}, Lcom/android/launcher3/Launcher$13;-><init>(Lcom/android/launcher3/Launcher;J)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/FolderIcon;

    .line 1479
    if-eqz v6, :cond_b

    .line 1480
    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/FolderInfo;

    .line 1481
    move-object/from16 v0, p8

    iget v7, v0, Lcom/android/launcher3/util/PendingRequestArgs;->rank:I

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;IZ)V

    goto :goto_2

    .line 1483
    :cond_b
    const-string/jumbo v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not find folder with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to add shortcut."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3555
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher3/LauncherAppWidgetHostView;

    move-result-object v0

    .line 3556
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher3/PendingAppWidgetHostView;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3557
    :cond_0
    const-string/jumbo v0, "Launcher"

    const-string/jumbo v1, "Widget update called, when the widget no longer exists."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    return-object v2

    .line 3561
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 3562
    iput p2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3563
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v1, :cond_2

    .line 3564
    iput-object v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    .line 3567
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->reinflateWidgetsIfNecessary()V

    .line 3568
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 3569
    return-object v0
.end method

.method private createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3663
    invoke-static {p1, v0, v0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3664
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3665
    mul-int/lit8 v1, p2, 0x55

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3666
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3667
    return-object v0
.end method

.method private deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 3

    .prologue
    .line 2164
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    .line 2165
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isWidgetIdAllocated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2168
    new-instance v1, Lcom/android/launcher3/Launcher$18;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/Launcher$18;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetHost;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 2173
    sget-object v0, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2168
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher$18;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2175
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2176
    return-void
.end method

.method private ensurePendingDropLayoutExists(J)J
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 838
    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 842
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v0

    return-wide v0

    .line 844
    :cond_0
    return-wide p1
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .locals 1

    .prologue
    .line 4094
    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 4095
    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0

    .line 4097
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
    .line 1225
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 667
    return-void

    .line 669
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 672
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 673
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 674
    if-nez v2, :cond_1

    .line 675
    return-void

    .line 678
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetId()I

    move-result v6

    .line 680
    new-instance v3, Lcom/android/launcher3/Launcher$5;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;I)V

    .line 688
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    .line 690
    if-eqz p3, :cond_3

    .line 691
    const-string/jumbo v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 692
    :goto_0
    if-nez p2, :cond_4

    .line 693
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 694
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    .line 695
    const/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 694
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 702
    :cond_2
    :goto_1
    return-void

    .line 691
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 696
    :cond_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 699
    invoke-virtual {v2}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v4

    .line 698
    const/4 v3, 0x0

    .line 700
    const/16 v5, 0x1f4

    move-object v0, p0

    .line 697
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    goto :goto_1

    .line 703
    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 704
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 707
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 710
    :cond_6
    return-void

    .line 713
    :cond_7
    const/16 v0, 0x9

    if-eq p1, v0, :cond_9

    .line 714
    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    .line 717
    :goto_2
    if-eqz v0, :cond_f

    .line 719
    if-eqz p3, :cond_b

    const-string/jumbo v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 721
    :goto_3
    if-gez v0, :cond_c

    .line 728
    :goto_4
    if-ltz v6, :cond_8

    if-nez p2, :cond_d

    .line 729
    :cond_8
    const-string/jumbo v0, "Launcher"

    const-string/jumbo v1, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v0, 0x0

    .line 732
    invoke-virtual {p0, v0, v6, v2}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 733
    new-instance v0, Lcom/android/launcher3/Launcher$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 740
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x1

    .line 741
    const/16 v3, 0x1f4

    const/4 v4, 0x0

    .line 740
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 763
    :goto_5
    return-void

    .line 713
    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    .line 714
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 720
    :cond_b
    const/4 v0, -0x1

    goto :goto_3

    :cond_c
    move v6, v0

    .line 724
    goto :goto_4

    .line 743
    :cond_d
    iget-wide v0, v2, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v4, -0x64

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    .line 747
    iget-wide v0, v2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v0

    .line 746
    iput-wide v0, v2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 750
    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v4, v2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v8

    .line 752
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    .line 753
    new-instance v3, Lcom/android/launcher3/Launcher$7;

    move-object v4, p0

    move v5, p2

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    .line 760
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    .line 761
    const/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 760
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_5

    .line 766
    :cond_f
    const/16 v0, 0xd

    if-eq p1, v0, :cond_10

    .line 767
    const/16 v0, 0xc

    if-ne p1, v0, :cond_12

    .line 768
    :cond_10
    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    .line 770
    invoke-direct {p0, p1, p3, v6, v2}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J

    .line 773
    :cond_11
    return-void

    .line 776
    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 778
    const/4 v0, -0x1

    if-ne p2, v0, :cond_14

    iget-wide v0, v2, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_14

    .line 779
    const/4 v0, -0x1

    invoke-direct {p0, p1, p3, v0, v2}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J

    .line 780
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    .line 781
    const/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 780
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 788
    :cond_13
    :goto_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    .line 789
    return-void

    .line 783
    :cond_14
    if-nez p2, :cond_13

    .line 784
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    .line 785
    const/16 v2, 0x1f4

    const/4 v4, 0x0

    .line 784
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_6
.end method

.method private loadExtractedColorsAndColorItems()V
    .locals 3

    .prologue
    .line 520
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->load(Landroid/content/Context;)V

    .line 522
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Hotseat;->updateColor(Lcom/android/launcher3/dynamicui/ExtractedColors;Z)V

    .line 523
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->updateColor(Lcom/android/launcher3/dynamicui/ExtractedColors;)V

    .line 525
    :cond_0
    return-void
.end method

.method private markAppsViewShown()V
    .locals 3

    .prologue
    .line 3954
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "launcher.apps_view_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3955
    return-void

    .line 3957
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "launcher.apps_view_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3958
    return-void
.end method

.method private onClickPendingAppItem(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 2345
    if-eqz p3, :cond_0

    .line 2347
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->startMarketIntentForPackage(Landroid/view/View;Ljava/lang/String;)V

    .line 2348
    return-void

    .line 2350
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2351
    const v1, 0x7f0c0069

    .line 2350
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2352
    const v1, 0x7f0c006a

    .line 2350
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2353
    new-instance v1, Lcom/android/launcher3/Launcher$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/Launcher$19;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V

    const v2, 0x7f0c0068

    .line 2350
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2360
    new-instance v1, Lcom/android/launcher3/Launcher$20;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/Launcher$20;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    .line 2359
    const v2, 0x7f0c0067

    .line 2350
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2367
    return-void
.end method

.method private prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 1

    .prologue
    .line 1525
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1526
    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;)V

    .line 1527
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setFocusable(Z)V

    .line 1528
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1529
    return-void
.end method

.method private processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2061
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 2062
    invoke-static {v2, v0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 2063
    iget-object v0, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2064
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 2066
    :cond_0
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1241
    if-nez p1, :cond_0

    .line 1242
    return-void

    .line 1245
    :cond_0
    const-string/jumbo v0, "launcher.state"

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1246
    invoke-static {}, Lcom/android/launcher3/Launcher$State;->values()[Lcom/android/launcher3/Launcher$State;

    move-result-object v1

    .line 1247
    if-ltz v0, :cond_4

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 1248
    aget-object v0, v1, v0

    .line 1249
    :goto_0
    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_2

    .line 1250
    :cond_1
    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    .line 1253
    :cond_2
    const-string/jumbo v0, "launcher.request_args"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1254
    if-eqz v0, :cond_3

    .line 1255
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 1258
    :cond_3
    const-string/jumbo v0, "launcher.activity_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ActivityResultInfo;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 1259
    return-void

    .line 1248
    :cond_4
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    goto :goto_0
.end method

.method private setState(Lcom/android/launcher3/Launcher$State;)V
    .locals 0

    .prologue
    .line 2907
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    .line 2908
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateSoftInputMode()V

    .line 2909
    return-void
.end method

.method private setWorkspaceLoading(Z)V
    .locals 2

    .prologue
    .line 1980
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 1981
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 1982
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1983
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onWorkspaceLockedChanged()V

    .line 1985
    :cond_0
    return-void
.end method

.method private setupOverviewPanel()V
    .locals 3

    .prologue
    .line 1318
    const v0, 0x7f0e004d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    .line 1321
    const v0, 0x7f0e005d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1322
    new-instance v1, Lcom/android/launcher3/Launcher$10;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher$10;->attachTo(Landroid/view/View;)V

    .line 1328
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1331
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    .line 1332
    new-instance v0, Lcom/android/launcher3/Launcher$11;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$11;-><init>(Lcom/android/launcher3/Launcher;I)V

    .line 1337
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    .line 1332
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher$11;->attachTo(Landroid/view/View;)V

    .line 1338
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1341
    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1342
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasSettings()Z

    move-result v1

    .line 1343
    if-eqz v1, :cond_0

    .line 1344
    new-instance v1, Lcom/android/launcher3/Launcher$12;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/Launcher$12;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher$12;->attachTo(Landroid/view/View;)V

    .line 1350
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1355
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1356
    return-void

    .line 1352
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1265
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 1266
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getFocusIndicatorHelper()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 1267
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v1, 0x7f0e0025

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1268
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->initParentViews(Landroid/view/View;)V

    .line 1270
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1275
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    .line 1278
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 1279
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1284
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setupOverviewPanel()V

    .line 1287
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 1288
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1289
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 1292
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->lockWallpaperToDefaultPage()V

    .line 1293
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V

    .line 1294
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 1297
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v1, 0x7f0e004e

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    .line 1300
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 1301
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    .line 1304
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1305
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 1306
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DropTargetBar;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 1308
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setupViews(Lcom/android/launcher3/allapps/AllAppsContainerView;Lcom/android/launcher3/Hotseat;Lcom/android/launcher3/Workspace;)V

    .line 1315
    :cond_1
    return-void
.end method

.method private shouldShowDiscoveryBounce()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3961
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_0

    .line 3962
    return v2

    .line 3964
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->shouldShowDiscoveryBounce()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3965
    const/4 v0, 0x1

    return v0

    .line 3967
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsResumeFromActionScreenOff:Z

    if-nez v0, :cond_2

    .line 3968
    return v2

    .line 3970
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "launcher.apps_view_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private showAppsOrWidgets(Lcom/android/launcher3/Launcher$State;Z)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2960
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v3, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 2960
    :goto_0
    if-nez v0, :cond_3

    .line 2964
    return v1

    .line 2962
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v3, :cond_0

    .line 2963
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

    .line 2966
    :cond_3
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v0, :cond_4

    .line 2967
    return v1

    .line 2971
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 2972
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2973
    iput-object v4, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    .line 2976
    :cond_5
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v0, :cond_6

    .line 2977
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToAllApps(Z)V

    .line 2983
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->setState(Lcom/android/launcher3/Launcher$State;)V

    .line 2984
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 2987
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2988
    const/16 v1, 0x20

    .line 2987
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2989
    return v2

    .line 2979
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWidgets(Z)V

    goto :goto_1
.end method

.method private startAppShortcutOrInfoActivity(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2435
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 2437
    instance-of v1, v0, Lcom/android/launcher3/PromiseAppInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 2438
    check-cast v1, Lcom/android/launcher3/PromiseAppInfo;

    .line 2439
    invoke-virtual {v1}, Lcom/android/launcher3/PromiseAppInfo;->getMarketIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2443
    :goto_0
    if-nez v1, :cond_1

    .line 2444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input must have a valid intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2441
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 2446
    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    .line 2447
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V

    .line 2449
    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2

    .line 2450
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    .line 2451
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 2453
    :cond_2
    return-void
.end method

.method private startMarketIntentForPackage(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2370
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 2371
    invoke-static {p2}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2372
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    .line 2373
    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 2374
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    .line 2375
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 2377
    :cond_0
    return-void
.end method

.method private startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/ItemInfo;)V
    .locals 10

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x0

    .line 2601
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2606
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

    .line 2609
    iget v1, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 2610
    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v3

    .line 2611
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 2612
    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v1

    .line 2613
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, p3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    move-object v5, p2

    .line 2612
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2619
    :goto_0
    :try_start_2
    invoke-static {v7}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2639
    :goto_1
    return-void

    .line 2616
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2618
    :catchall_0
    move-exception v1

    .line 2619
    :try_start_4
    invoke-static {v7}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2618
    throw v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2621
    :catch_0
    move-exception v1

    .line 2625
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2626
    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2625
    if-eqz v2, :cond_1

    .line 2627
    const-string/jumbo v2, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2630
    invoke-static {v9, p1, p3}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 2632
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    aput-object v2, v1, v8

    invoke-virtual {p0, v1, v9}, Lcom/android/launcher3/Launcher;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 2636
    :cond_1
    throw v1
.end method

.method private updateSoftInputMode()V
    .locals 2

    .prologue
    .line 2912
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_UPDATE_SOFT_INPUT_MODE:Z

    if-eqz v0, :cond_0

    .line 2914
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2915
    const/16 v0, 0x10

    .line 2919
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2921
    :cond_0
    return-void

    .line 2917
    :cond_1
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private waitUntilResume(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 3125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V
    .locals 6

    .prologue
    .line 2006
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 2007
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .locals 4

    .prologue
    .line 2011
    const/4 v0, 0x5

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2014
    new-instance v0, Lcom/android/launcher3/Launcher$17;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$17;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 2022
    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 2023
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p5, v3}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 2025
    :cond_0
    return-void
.end method

.method addFolder(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/folder/FolderIcon;
    .locals 8

    .prologue
    .line 2105
    new-instance v1, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 2106
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2109
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 2112
    const v0, 0x7f040015

    invoke-static {v0, p0, p1, v1}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    .line 2113
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 2115
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 2116
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 2117
    return-object v0
.end method

.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 3129
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3130
    return-void
.end method

.method public addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V
    .locals 4

    .prologue
    .line 2035
    iput-wide p2, p1, Lcom/android/launcher3/PendingAddItemInfo;->container:J

    .line 2036
    iput-wide p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->screenId:J

    .line 2037
    if-eqz p6, :cond_0

    .line 2038
    const/4 v0, 0x0

    aget v0, p6, v0

    iput v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellX:I

    .line 2039
    const/4 v0, 0x1

    aget v0, p6, v0

    iput v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellY:I

    .line 2041
    :cond_0
    iput p7, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    .line 2042
    iput p8, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    .line 2044
    iget v0, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 2053
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

    .line 2047
    :pswitch_1
    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    .line 2055
    :goto_0
    return-void

    .line 2050
    :pswitch_2
    check-cast p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->processShortcutFromDrop(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V

    goto :goto_0

    .line 2044
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
    .line 3699
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllApplicationsRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3700
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mTmpAppsList:Ljava/util/ArrayList;

    .line 3701
    return-void

    .line 3704
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 3705
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setApps(Ljava/util/List;)V

    .line 3707
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 3708
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 3710
    :cond_2
    return-void
.end method

.method public bindAllWidgets(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3898
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindAllWidgetsRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3899
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAllWidgets:Lcom/android/launcher3/util/MultiHashMap;

    .line 3900
    return-void

    .line 3903
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3904
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->setWidgets(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 3905
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mAllWidgets:Lcom/android/launcher3/util/MultiHashMap;

    .line 3908
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 3909
    if-eqz v0, :cond_2

    .line 3910
    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onWidgetsBound()V

    .line 3912
    :cond_2
    return-void
.end method

.method public bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 3874
    new-instance v0, Lcom/android/launcher3/Launcher$39;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$39;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 3879
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3880
    return-void

    .line 3884
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 3885
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->removeApps(Ljava/util/List;)V

    .line 3886
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->tryAndUpdatePredictedApps()V

    .line 3888
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

    .line 3417
    new-instance v0, Lcom/android/launcher3/Launcher$29;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$29;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 3422
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3423
    return-void

    .line 3426
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_1

    .line 3428
    new-instance v0, Lcom/android/launcher3/PendingAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v0, p0, p1, v1, v6}, Lcom/android/launcher3/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V

    .line 3429
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 3430
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 3431
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 3432
    return-void

    .line 3442
    :cond_1
    invoke-virtual {p1, v7}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 3453
    :goto_0
    invoke-virtual {p1, v7}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3454
    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v2, :cond_8

    .line 3455
    if-nez v0, :cond_4

    .line 3461
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 3462
    return-void

    .line 3445
    :cond_2
    invoke-virtual {p1, v6}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3447
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    goto :goto_0

    .line 3449
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    goto :goto_0

    .line 3466
    :cond_4
    invoke-virtual {p1, v6}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3467
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3469
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    iput v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3470
    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3474
    new-instance v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {v2, v0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 3475
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 3476
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 3477
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 3478
    iget v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    iput v3, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 3479
    invoke-static {p0, v2}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 3482
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v6

    .line 3483
    if-eqz v6, :cond_9

    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    if-eqz v2, :cond_9

    .line 3484
    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3485
    if-eqz v3, :cond_5

    .line 3486
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3490
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 3491
    iget v7, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3490
    invoke-virtual {v3, v7, v0, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v2

    .line 3496
    iput-object v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 3497
    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3500
    if-eqz v2, :cond_7

    .line 3503
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    if-eqz v6, :cond_a

    :cond_6
    move v1, v5

    :goto_2
    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3508
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 3520
    :cond_8
    :goto_3
    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v1, :cond_d

    .line 3527
    if-nez v0, :cond_c

    .line 3528
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

    .line 3529
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 3530
    return-void

    :cond_9
    move-object v2, v3

    .line 3483
    goto :goto_1

    :cond_a
    move v1, v4

    .line 3505
    goto :goto_2

    .line 3510
    :cond_b
    invoke-virtual {p1, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3511
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v1, :cond_8

    .line 3514
    iput v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 3515
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    goto :goto_3

    .line 3533
    :cond_c
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 3534
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 3535
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 3539
    :goto_4
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 3540
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 3541
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 3547
    return-void

    .line 3537
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

    .line 3250
    new-instance v0, Lcom/android/launcher3/Launcher$25;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher$25;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3255
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3256
    return-void

    .line 3260
    :cond_0
    if-eqz p1, :cond_1

    .line 3261
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 3266
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3268
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3267
    invoke-virtual {p0, p2, v6, v0, v6}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 3270
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 3272
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    .line 3271
    invoke-virtual {p0, p3, v6, v0, v1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 3276
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v6, v6}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 3278
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_4

    .line 3279
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p4}, Lcom/android/launcher3/allapps/AllAppsContainerView;->addApps(Ljava/util/List;)V

    .line 3281
    :cond_4
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 3727
    new-instance v0, Lcom/android/launcher3/Launcher$33;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$33;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 3732
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3733
    return-void

    .line 3736
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 3737
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updateApps(Ljava/util/List;)V

    .line 3739
    :cond_1
    return-void
.end method

.method public bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 1

    .prologue
    .line 3718
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 3719
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;IIZ)V
    .locals 16

    .prologue
    .line 3291
    new-instance v2, Lcom/android/launcher3/Launcher$26;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/Launcher$26;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V

    .line 3296
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3297
    return-void

    .line 3301
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 3302
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3303
    if-eqz p4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->canRunNewAppsAnimation()Z

    move-result v2

    move v6, v2

    .line 3304
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 3305
    const-wide/16 v8, -0x1

    .line 3306
    :goto_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    .line 3307
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 3310
    iget-wide v4, v2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v3, v4, v12

    if-nez v3, :cond_2

    .line 3311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-nez v3, :cond_2

    move-wide v2, v8

    .line 3306
    :goto_2
    add-int/lit8 p2, p2, 0x1

    move-wide v8, v2

    goto :goto_1

    .line 3303
    :cond_1
    const/4 v2, 0x0

    move v6, v2

    goto :goto_0

    .line 3316
    :cond_2
    iget v3, v2, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 3347
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Invalid Item Type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    move-object v3, v2

    .line 3320
    check-cast v3, Lcom/android/launcher3/ShortcutInfo;

    .line 3321
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    .line 3353
    :goto_3
    iget-wide v12, v2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v3, v12, v14

    if-nez v3, :cond_5

    .line 3354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v12, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v3, v12, v13}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    .line 3355
    if-eqz v3, :cond_5

    iget v4, v2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v12, v2, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v3, v4, v12}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3356
    iget v4, v2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v5, v2, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 3357
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 3358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Collision while binding workspace item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3359
    const-string/jumbo v5, ". Collides with "

    .line 3358
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3363
    const-string/jumbo v4, "Launcher"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    move-wide v2, v8

    .line 3365
    goto :goto_2

    .line 3326
    :pswitch_2
    invoke-virtual {v11}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v4, v2

    .line 3327
    check-cast v4, Lcom/android/launcher3/FolderInfo;

    .line 3325
    const v5, 0x7f040015

    move-object/from16 v0, p0

    invoke-static {v5, v0, v3, v4}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v5

    goto :goto_3

    :pswitch_3
    move-object v3, v2

    .line 3331
    check-cast v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 3332
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v4, :cond_3

    .line 3333
    new-instance v5, Lcom/android/launcher3/PendingAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v4, v12}, Lcom/android/launcher3/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V

    :goto_4
    move-object v4, v5

    .line 3343
    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    goto/16 :goto_3

    .line 3336
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v5, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v4

    .line 3337
    if-nez v4, :cond_4

    .line 3338
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    move-wide v2, v8

    .line 3339
    goto/16 :goto_2

    .line 3341
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget v12, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v12, v4}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    goto :goto_4

    .line 3369
    :cond_5
    invoke-virtual {v11, v5, v2}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 3370
    if-eqz v6, :cond_9

    .line 3372
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3373
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 3374
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 3375
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/Launcher;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3376
    iget-wide v2, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    goto/16 :goto_2

    .line 3380
    :cond_6
    if-eqz v6, :cond_7

    .line 3382
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_7

    .line 3383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    .line 3384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    .line 3385
    new-instance v5, Lcom/android/launcher3/Launcher$27;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7, v10}, Lcom/android/launcher3/Launcher$27;-><init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    .line 3391
    cmp-long v2, v8, v2

    if-eqz v2, :cond_8

    .line 3394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v3, Lcom/android/launcher3/Launcher$28;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/android/launcher3/Launcher$28;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    .line 3402
    const-wide/16 v4, 0x1f4

    .line 3394
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3408
    :cond_7
    :goto_5
    invoke-virtual {v11}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 3409
    return-void

    .line 3404
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_9
    move-wide v2, v8

    goto/16 :goto_2

    .line 3316
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

.method public bindPromiseAppProgressUpdated(Lcom/android/launcher3/PromiseAppInfo;)V
    .locals 1

    .prologue
    .line 3743
    new-instance v0, Lcom/android/launcher3/Launcher$34;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$34;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/PromiseAppInfo;)V

    .line 3748
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3749
    return-void

    .line 3752
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 3753
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updatePromiseAppProgress(Lcom/android/launcher3/PromiseAppInfo;)V

    .line 3755
    :cond_1
    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 1

    .prologue
    .line 3828
    new-instance v0, Lcom/android/launcher3/Launcher$37;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$37;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;)V

    .line 3833
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3834
    return-void

    .line 3837
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateRestoreItems(Ljava/util/HashSet;)V

    .line 3838
    return-void
.end method

.method public bindScreens(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 3212
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3213
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3214
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3215
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3220
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 3224
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasCustomContentToLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3225
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->createCustomContentContainer()V

    .line 3226
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->populateCustomContentContainer()V

    .line 3232
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->unlockWallpaperFromDefaultPageOnNextLayout()V

    .line 3233
    return-void
.end method

.method public bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 6

    .prologue
    .line 3782
    new-instance v0, Lcom/android/launcher3/Launcher$36;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/Launcher$36;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 3787
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3788
    return-void

    .line 3791
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3792
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 3795
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3796
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3797
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3799
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 3800
    iget v4, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 3801
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3803
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3807
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3808
    invoke-static {v1, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v0

    .line 3809
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3810
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3813
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3814
    invoke-static {v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofShortcutKeys(Ljava/util/HashSet;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v0

    .line 3815
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3816
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3819
    :cond_5
    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 3759
    new-instance v0, Lcom/android/launcher3/Launcher$35;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$35;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    .line 3764
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3765
    return-void

    .line 3767
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    .line 3768
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 3851
    new-instance v0, Lcom/android/launcher3/Launcher$38;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/Launcher$38;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 3856
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3857
    return-void

    .line 3859
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3860
    invoke-static {p1, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v0

    .line 3861
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3862
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3865
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3866
    invoke-static {p2, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v0

    .line 3867
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3868
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 3870
    :cond_2
    return-void
.end method

.method public clearPendingBinds()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3175
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3176
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 3177
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 3178
    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 3180
    :cond_0
    return-void
.end method

.method public clearPendingExecutor(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 1

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-ne v0, p1, :cond_0

    .line 3587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 3589
    :cond_0
    return-void
.end method

.method public clearTypedText()V
    .locals 2

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1231
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1232
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1233
    return-void
.end method

.method completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V
    .locals 8

    .prologue
    .line 1496
    if-nez p4, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p4

    .line 1500
    :cond_0
    iget-boolean v0, p4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_1

    .line 1501
    const/16 p1, -0x64

    .line 1505
    :cond_1
    new-instance v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v0, p4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1506
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 1507
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 1508
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iput v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 1509
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iput v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 1510
    invoke-virtual {p4}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 1512
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    .line 1513
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 1512
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1515
    if-nez p3, :cond_2

    .line 1517
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, p0, p1, p4}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    .line 1519
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1520
    invoke-direct {p0, p3, v1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1521
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1522
    return-void
.end method

.method completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 850
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v2, p3, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v8

    .line 855
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 856
    const/4 v6, 0x3

    .line 857
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 858
    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 857
    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    .line 860
    new-instance v0, Lcom/android/launcher3/Launcher$8;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;I)V

    move v5, v6

    move-object v6, v4

    move-object v4, v0

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 873
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 874
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dragndrop/DragView;

    .line 875
    const/4 v7, 0x1

    move-object v1, p3

    move-object v2, v8

    .line 873
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 880
    :cond_0
    :goto_1
    return-void

    .line 868
    :cond_1
    if-nez p1, :cond_3

    .line 869
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 870
    const/4 v5, 0x4

    move-object v4, v6

    goto :goto_0

    .line 876
    :cond_2
    if-eqz v4, :cond_0

    .line 878
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    move-object v4, v6

    goto :goto_0
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1392
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1393
    const v1, 0x7f04000b

    const/4 v2, 0x0

    .line 1392
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 1394
    invoke-virtual {v0, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V

    .line 1395
    invoke-virtual {v0, p0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1396
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1397
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1380
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
    .line 2180
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
    .line 3081
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 3082
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 3083
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3085
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v3, :cond_0

    .line 3086
    const v2, 0x7f0c0035

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3094
    :goto_0
    return v0

    .line 3087
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v3, :cond_1

    .line 3088
    const v2, 0x7f0c004f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3089
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_2

    .line 3090
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3092
    :cond_2
    const v2, 0x7f0c0036

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEventX:F

    .line 2718
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3982
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BaseActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3984
    array-length v0, p4

    if-lez v0, :cond_5

    aget-object v0, p4, v2

    const-string/jumbo v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3985
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

    .line 3986
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3987
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

    .line 3989
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    move v0, v2

    .line 3990
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3991
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 3992
    if-eqz v4, :cond_0

    .line 3993
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

    .line 3990
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3986
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3998
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

    .line 3999
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 4000
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 4001
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 4002
    if-eqz v1, :cond_3

    .line 4003
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

    .line 4000
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4008
    :cond_4
    :try_start_0
    invoke-static {p3}, Lcom/android/launcher3/logging/FileLog;->flushAll(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4014
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

    .line 4015
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

    .line 4016
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

    .line 4017
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

    .line 4019
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4021
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_6

    .line 4022
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4024
    :cond_6
    return-void

    .line 4009
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public enterSpringLoadedDragMode()V
    .locals 6

    .prologue
    .line 3006
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStateSpringLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3007
    return-void

    .line 3010
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    .line 3011
    sget-object v3, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    const/4 v4, 0x1

    .line 3012
    const/4 v5, 0x0

    .line 3010
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    .line 3013
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setState(Lcom/android/launcher3/Launcher$State;)V

    .line 3014
    return-void
.end method

.method public executeOnNextDraw(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 1

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 3579
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 3581
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 3582
    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachTo(Lcom/android/launcher3/Launcher;)V

    .line 3583
    return-void
.end method

.method public exitSpringLoadedDragMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3049
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_1

    .line 3050
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    .line 3056
    :cond_0
    :goto_0
    return-void

    .line 3051
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_2

    .line 3052
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0

    .line 3053
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 3054
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_0
.end method

.method public exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 3018
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isStateSpringLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3020
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3021
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3023
    :cond_1
    new-instance v0, Lcom/android/launcher3/Launcher$24;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/launcher3/Launcher$24;-><init>(Lcom/android/launcher3/Launcher;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    .line 3040
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mExitSpringLoadedModeRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3041
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 498
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

    .line 3623
    new-instance v0, Lcom/android/launcher3/Launcher$32;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$32;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 3628
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3629
    return-void

    .line 3634
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForRemainingPages()V

    .line 3636
    invoke-direct {p0, v4}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 3638
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_1

    .line 3639
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v0, v0, Lcom/android/launcher3/util/ActivityResultInfo;->requestCode:I

    .line 3640
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v1, v1, Lcom/android/launcher3/util/ActivityResultInfo;->resultCode:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget-object v2, v2, Lcom/android/launcher3/util/ActivityResultInfo;->data:Landroid/content/Intent;

    .line 3639
    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 3641
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 3645
    :cond_1
    const/4 v0, 0x2

    .line 3644
    invoke-static {v0, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(ILandroid/content/Context;)V

    .line 3647
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->setNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 3649
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 3650
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, v4}, Lcom/android/launcher3/LauncherCallbacks;->finishBindingItems(Z)V

    .line 3655
    :cond_2
    return-void
.end method

.method public finishFirstPageBind(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3593
    new-instance v0, Lcom/android/launcher3/Launcher$30;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$30;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 3598
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3599
    return-void

    .line 3602
    :cond_0
    new-instance v0, Lcom/android/launcher3/Launcher$31;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$31;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 3610
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 3611
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3615
    :goto_0
    return-void

    .line 3613
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 1860
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2643
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_0

    .line 2645
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2646
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 2648
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2649
    if-eqz v0, :cond_2

    .line 2650
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2651
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v2, v1

    div-int/lit8 v3, v1, 0x2

    .line 2652
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 2653
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2654
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 2657
    :goto_0
    invoke-static {p1, v3, v2, v1, v0}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 2658
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    if-eqz v0, :cond_1

    .line 2663
    const v0, 0x7f050002

    const v1, 0x7f050001

    .line 2662
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 2665
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
    .line 1660
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    return-object v0
.end method

.method public getCellLayout(JJ)Lcom/android/launcher3/CellLayout;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2801
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2802
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0

    .line 2805
    :cond_0
    return-object v2

    .line 2808
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 3163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    return v0

    .line 3165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object v0
.end method

.method public getDropTargetBar()Lcom/android/launcher3/DropTargetBar;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    return-object v0
.end method

.method public getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 2534
    new-instance v0, Lcom/android/launcher3/Launcher$21;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$21;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    .line 2545
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHapticFeedbackTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    return-object v0
.end method

.method public getOverviewPanel()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object v0
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStartViewForAllAppsRevealAnimation()Landroid/view/View;
    .locals 1

    .prologue
    .line 1367
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

    .line 2669
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2670
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2671
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
    .line 612
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public getWidgetsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsButton:Landroid/view/View;

    return-object v0
.end method

.method public getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/Workspace;
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method protected hasCustomContentToLeft()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->hasCustomContentToLeft()Z

    move-result v0

    return v0

    .line 568
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSettings()Z
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->hasSettings()Z

    move-result v0

    return v0

    .line 1132
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
    .line 2816
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    return v0
.end method

.method public isAppsViewVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2820
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
    .line 604
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2793
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2794
    instance-of v1, p1, Lcom/android/launcher3/CellLayout;

    .line 2793
    if-eqz v1, :cond_0

    .line 2794
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 2793
    :cond_0
    return v0
.end method

.method public isOnCustomContent()Z
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    return v0
.end method

.method isStateSpringLoaded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3044
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 3045
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

    .line 2824
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
    .line 1976
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1972
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
    .line 3073
    return-void
.end method

.method public lockScreenOrientation()V
    .locals 1

    .prologue
    .line 3934
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 3935
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 3937
    :cond_0
    return-void
.end method

.method protected moveWorkspaceToDefaultScreen()V
    .locals 2

    .prologue
    .line 3974
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen(Z)V

    .line 3975
    return-void
.end method

.method public notifyWidgetProvidersChanged()V
    .locals 1

    .prologue
    .line 3920
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace$State;->shouldUpdateWidget:Z

    if-eqz v0, :cond_0

    .line 3921
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 3923
    :cond_0
    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->onAccessibilityStateChanged(Z)V

    .line 2551
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 794
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 795
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->onActivityResult(IILandroid/content/Intent;)V

    .line 798
    :cond_0
    return-void
.end method

.method public onAppWidgetHostReset()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 516
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1576
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onAttachedToWindow()V

    .line 1578
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 1579
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onAttachedToWindow()V

    .line 1582
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2185
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2186
    return-void

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2190
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 2191
    return-void

    .line 2196
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    .line 2197
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    .line 2198
    if-eqz v1, :cond_5

    .line 2199
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getActiveTextView()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2200
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getActiveTextView()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    .line 2227
    :goto_0
    return-void

    .line 2202
    :cond_2
    instance-of v0, v1, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v0, :cond_4

    .line 2204
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getExtendedTouchView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x9

    .line 2203
    invoke-virtual {v2, v4, v0, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    .line 2209
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_0

    .line 2205
    :cond_4
    instance-of v0, v1, Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 2207
    check-cast v0, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    const/4 v3, 0x3

    .line 2206
    invoke-virtual {v2, v4, v0, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    goto :goto_1

    .line 2211
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2212
    const/4 v0, 0x4

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(II)V

    .line 2213
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_0

    .line 2214
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWidgetsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2215
    const/4 v0, 0x5

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(II)V

    .line 2216
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    goto :goto_0

    .line 2217
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2218
    const/4 v0, 0x6

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(II)V

    .line 2219
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_0

    .line 2222
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 2225
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

    .line 2237
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2238
    return-void

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2242
    return-void

    .line 2245
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_3

    .line 2246
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2247
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 2249
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 2247
    invoke-virtual {v0, v2, v2, v4, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 2250
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 2252
    :cond_2
    return-void

    .line 2255
    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_5

    .line 2256
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2257
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2258
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 2261
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->snapToPageFromOverView(I)V

    .line 2262
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 2264
    :cond_4
    return-void

    .line 2267
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2268
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_7

    .line 2269
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickAppShortcut(Landroid/view/View;)V

    .line 2284
    :cond_6
    :goto_0
    return-void

    .line 2270
    :cond_7
    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_8

    .line 2271
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_6

    .line 2272
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickFolderIcon(Landroid/view/View;)V

    goto :goto_0

    .line 2274
    :cond_8
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v1, :cond_9

    instance-of v1, p1, Lcom/android/launcher3/pageindicators/PageIndicator;

    if-nez v1, :cond_a

    .line 2275
    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v1, :cond_b

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 2276
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0

    .line 2277
    :cond_b
    instance-of v1, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v1, :cond_c

    .line 2278
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    goto :goto_0

    .line 2279
    :cond_c
    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_6

    .line 2280
    instance-of v0, p1, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-eqz v0, :cond_6

    .line 2281
    check-cast p1, Lcom/android/launcher3/PendingAppWidgetHostView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onClickPendingWidget(Lcom/android/launcher3/PendingAppWidgetHostView;)V

    goto :goto_0
.end method

.method public onClickAddWidgetButton(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2479
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_0

    .line 2480
    const v0, 0x7f0c0024

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2484
    :goto_0
    return-void

    .line 2482
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0
.end method

.method protected onClickAllAppsButton(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2334
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2335
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(II)V

    .line 2337
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    .line 2341
    :goto_0
    return-void

    .line 2339
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_0
.end method

.method protected onClickAppShortcut(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2386
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2387
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v1, :cond_0

    .line 2388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input must be a Shortcut"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2392
    :cond_0
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 2394
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    if-eqz v1, :cond_1

    .line 2395
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v1, v1, -0x5

    and-int/lit8 v1, v1, -0x9

    if-nez v1, :cond_2

    .line 2420
    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2421
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2422
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2423
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2425
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    .line 2424
    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/Launcher;->onClickPendingAppItem(Landroid/view/View;Ljava/lang/String;Z)V

    .line 2426
    return-void

    .line 2401
    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2403
    iget-object v0, v0, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2404
    return-void

    .line 2407
    :cond_3
    const v1, 0x7f0c0022

    .line 2408
    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 2409
    const v0, 0x7f0c0023

    .line 2414
    :goto_1
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2415
    return-void

    .line 2410
    :cond_4
    iget v2, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    .line 2411
    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 2412
    :cond_5
    const v0, 0x7f0c0025

    goto :goto_1

    :cond_6
    move v0, v1

    .line 2411
    goto :goto_1

    .line 2422
    :cond_7
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2431
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 2432
    return-void
.end method

.method protected onClickFolderIcon(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2462
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v0, :cond_0

    .line 2463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input must be a FolderIcon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2466
    :cond_0
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 2467
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2469
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    .line 2471
    :cond_1
    return-void
.end method

.method public onClickPendingWidget(Lcom/android/launcher3/PendingAppWidgetHostView;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2295
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_0

    .line 2296
    const v0, 0x7f0c0024

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2297
    return-void

    .line 2300
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2301
    invoke-virtual {p1}, Lcom/android/launcher3/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2303
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 2304
    if-nez v2, :cond_1

    .line 2305
    return-void

    .line 2307
    :cond_1
    new-instance v3, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v3, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2309
    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2310
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2312
    return-void

    .line 2314
    :cond_2
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 2315
    const/16 v2, 0xc

    .line 2314
    invoke-virtual {v3, p0, v1, v0, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)V

    .line 2323
    :goto_0
    return-void

    .line 2317
    :cond_3
    const/16 v1, 0xd

    invoke-virtual {v3, p0, v0, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;I)Z

    goto :goto_0

    .line 2320
    :cond_4
    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2321
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
    .line 2525
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2525
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2527
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2528
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2529
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 2530
    return-void
.end method

.method public onClickWallpaperPicker(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2491
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isWallpaperAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2492
    const v0, 0x7f0c0052

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2493
    return-void

    .line 2496
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    .line 2497
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(I)F

    move-result v0

    .line 2498
    new-instance v2, Lcom/android/launcher3/util/PendingRequestArgs;

    new-instance v3, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v3}, Lcom/android/launcher3/ItemInfo;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 2499
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2500
    const-string/jumbo v3, "com.android.launcher3.WALLPAPER_OFFSET"

    .line 2499
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v2

    .line 2502
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2504
    if-eqz v3, :cond_1

    .line 2505
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2508
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2512
    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    .line 2510
    :goto_0
    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2517
    :goto_1
    return-void

    :cond_2
    move-object v0, v1

    .line 2512
    goto :goto_0

    .line 2513
    :catch_0
    move-exception v0

    .line 2514
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 2515
    const v0, 0x7f0c0021

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

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->preOnCreate()V

    .line 370
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->setOnThemeChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;)V

    .line 372
    invoke-virtual {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->isDark()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->supportsDarkText()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->overrideTheme(ZZ)V

    .line 374
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 376
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 380
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isInMultiWindowModeCompat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 382
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 383
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 384
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 387
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 388
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    .line 389
    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 390
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->getWriter(Z)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    .line 391
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 392
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 394
    new-instance v0, Lcom/android/launcher3/dragndrop/DragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 395
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 396
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    .line 398
    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 400
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;-><init>(Lcom/android/launcher3/Launcher;I)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 401
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 406
    iput-boolean v4, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 408
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040019

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    .line 410
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p0, v4}, Lcom/android/launcher3/DeviceProfile;->layout(Lcom/android/launcher3/Launcher;Z)V

    .line 412
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->loadExtractedColorsAndColorItems()V

    .line 414
    new-instance v0, Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 416
    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 419
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->lockAllApps()V

    .line 421
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 429
    const/16 v0, -0x3e9

    .line 430
    if-eqz p1, :cond_2

    .line 431
    const-string/jumbo v1, "launcher.current_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 436
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    .line 445
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 446
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 448
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 451
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-nez v0, :cond_3

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isAllowRotationPrefEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 453
    new-instance v0, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    .line 454
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 457
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->handleDragRequest(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 464
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->setOrientation()V

    .line 466
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setContentView(Landroid/view/View;)V

    .line 469
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 470
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    .line 475
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    .line 476
    const v1, 0x7f01002b

    invoke-static {p0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    .line 475
    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 478
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_5

    .line 479
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    .line 481
    :cond_5
    return-void

    .line 439
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 441
    invoke-direct {p0, v5}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1821
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onDestroy()V

    .line 1823
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1824
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1825
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    .line 1830
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1832
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    if-eqz v0, :cond_1

    .line 1836
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1840
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1844
    :goto_0
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 1846
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1848
    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1851
    invoke-static {p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->setOnThemeChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;)V

    .line 1853
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->onDestroyActivity()V

    .line 1855
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1856
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDestroy()V

    .line 1858
    :cond_2
    return-void

    .line 1841
    :catch_0
    move-exception v0

    .line 1842
    const-string/jumbo v1, "Launcher"

    const-string/jumbo v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1586
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onDetachedFromWindow()V

    .line 1588
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDetachedFromWindow()V

    .line 1591
    :cond_0
    return-void
.end method

.method public onDragStarted()V
    .locals 1

    .prologue
    .line 2554
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isOnCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->moveWorkspaceToDefaultScreen()V

    .line 2559
    :cond_0
    return-void
.end method

.method public onExtractedColorsChanged()V
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->loadExtractedColorsAndColorItems()V

    .line 504
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mExtractedColors:Lcom/android/launcher3/dynamicui/ExtractedColors;

    invoke-virtual {v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->notifyChange()V

    .line 505
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
    .line 2581
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 2582
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onInteractionBegin()V

    .line 2584
    :cond_0
    return-void
.end method

.method protected onInteractionEnd()V
    .locals 1

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 2567
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onInteractionEnd()V

    .line 2569
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1176
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    .line 1177
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1178
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1179
    :cond_0
    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->acceptFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1180
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1, v3, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1182
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1189
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onSearchRequested()Z

    move-result v0

    return v0

    .line 1194
    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    const/4 v0, 0x1

    return v0

    .line 1198
    :cond_2
    return v2
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4055
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4056
    sparse-switch p1, :sswitch_data_0

    .line 4082
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 4058
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_0

    .line 4059
    invoke-virtual {p0, v4, v4}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    .line 4060
    return v4

    .line 4064
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 4065
    instance-of v0, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 4066
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    .line 4065
    if-eqz v0, :cond_0

    .line 4067
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 4068
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 4069
    const v3, 0x7f0e000f

    .line 4067
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    .line 4065
    if-eqz v0, :cond_0

    .line 4070
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->requestFocus()Z

    .line 4071
    return v4

    .line 4076
    :sswitch_2
    new-instance v0, Lcom/android/launcher3/keyboard/CustomActionsPopup;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/keyboard/CustomActionsPopup;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->show()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4077
    return v4

    .line 4056
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

    .line 1203
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 1205
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isOnCustomContent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1207
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 1210
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 1213
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1213
    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1216
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/Launcher;->showOverviewMode(ZZ)V

    .line 1219
    :cond_0
    return v2

    .line 1221
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherProviderChanged()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onLauncherProviderChange()V

    .line 561
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2723
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    .line 2724
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 2725
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v2, :cond_2

    return v4

    .line 2728
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEventX:F

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DeviceProfile;->shouldIgnoreLongPressToOverview(F)Z

    move-result v5

    .line 2730
    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_5

    .line 2731
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2732
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_3

    xor-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_3

    .line 2733
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 2735
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 2733
    invoke-virtual {v0, v3, v4, v3, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 2736
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    .line 2737
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    .line 2739
    return v3

    .line 2741
    :cond_3
    return v4

    .line 2744
    :cond_4
    return v4

    .line 2750
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_b

    .line 2751
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 2752
    new-instance v2, Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-direct {v2, p1, v0}, Lcom/android/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 2753
    iget-object v0, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2754
    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    move-object v1, v2

    .line 2759
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2760
    if-nez v0, :cond_9

    .line 2762
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2763
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->startReordering(Landroid/view/View;)Z

    .line 2764
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 2765
    const/4 v1, 0x6

    .line 2764
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(III)V

    .line 2775
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    .line 2788
    :cond_6
    :goto_2
    return v3

    .line 2767
    :cond_7
    if-eqz v5, :cond_8

    .line 2768
    return v4

    .line 2770
    :cond_8
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

    goto :goto_1

    .line 2782
    :cond_9
    instance-of v0, v0, Lcom/android/launcher3/folder/Folder;

    if-nez v0, :cond_a

    move v0, v4

    :goto_3
    if-nez v0, :cond_6

    .line 2784
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    goto :goto_2

    :cond_a
    move v0, v3

    .line 2782
    goto :goto_3

    :cond_b
    move-object v0, v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/high16 v3, 0x400000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1681
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1683
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_0

    move v4, v1

    .line 1688
    :goto_0
    if-eqz v4, :cond_2

    .line 1689
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_2

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v3, v0

    .line 1691
    :goto_2
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1692
    if-eqz v5, :cond_8

    .line 1693
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v0, :cond_3

    .line 1695
    return-void

    :cond_0
    move v4, v2

    .line 1683
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1689
    goto :goto_1

    :cond_2
    move v3, v2

    .line 1688
    goto :goto_2

    .line 1700
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v6

    .line 1703
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->exitWidgetResizeMode()V

    .line 1705
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 1706
    instance-of v7, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v7, :cond_b

    .line 1708
    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->getExtendedTouchView()Landroid/view/View;

    move-result-object v0

    const/16 v7, 0x9

    .line 1707
    invoke-virtual {v6, v2, v0, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    .line 1718
    :cond_4
    :goto_3
    invoke-static {p0, v4}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;Z)V

    .line 1719
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragMode()V

    .line 1723
    if-eqz v4, :cond_d

    .line 1724
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 1729
    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v6

    .line 1730
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1732
    const-string/jumbo v0, "input_method"

    .line 1731
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1733
    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1737
    :cond_5
    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_6

    .line 1738
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset()V

    .line 1742
    :cond_6
    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    if-eqz v0, :cond_7

    .line 1743
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->scrollToTop()V

    .line 1746
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_8

    .line 1747
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onHomeIntent()V

    .line 1750
    :cond_8
    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->handleDragRequest(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)Z

    .line 1752
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_9

    .line 1753
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onNewIntent(Landroid/content/Intent;)V

    .line 1759
    :cond_9
    if-eqz v5, :cond_a

    .line 1761
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->shouldMoveToDefaultScreenOnHomeIntent()Z

    move-result v0

    .line 1763
    :goto_5
    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 1768
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mMoveToDefaultScreenFromNewIntent:Z

    .line 1769
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Launcher$16;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$16;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1783
    :cond_a
    return-void

    .line 1709
    :cond_b
    instance-of v7, v0, Lcom/android/launcher3/folder/Folder;

    if-eqz v7, :cond_c

    .line 1711
    check-cast v0, Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    const/4 v7, 0x3

    .line 1710
    invoke-virtual {v6, v2, v0, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    goto/16 :goto_3

    .line 1712
    :cond_c
    if-eqz v4, :cond_4

    .line 1714
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/Workspace$State;->containerType:I

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v7

    .line 1713
    invoke-virtual {v6, v2, v0, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(III)V

    goto/16 :goto_3

    .line 1726
    :cond_d
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    goto/16 :goto_4

    :cond_e
    move v0, v1

    .line 1761
    goto :goto_5
.end method

.method public onPageBoundSynchronously(I)V
    .locals 2

    .prologue
    .line 3573
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3574
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1054
    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue(I)V

    .line 1056
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    .line 1057
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 1058
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 1059
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->resetLastGestureUpTime()V

    .line 1063
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onHide()V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onPause()V

    .line 1070
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
    .line 1957
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1958
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1961
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 6

    .prologue
    const/16 v5, 0x1000

    .line 4031
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4032
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v2, :cond_0

    .line 4033
    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f0c0035

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4034
    const/16 v3, 0x1d

    .line 4033
    invoke-direct {v0, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4036
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 4037
    new-instance v2, Lcom/android/launcher3/keyboard/CustomActionsPopup;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/keyboard/CustomActionsPopup;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->canShow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4038
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f0c0027

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4039
    const/16 v4, 0x2b

    .line 4038
    invoke-direct {v2, v3, v4, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4041
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ItemInfo;

    if-eqz v2, :cond_2

    .line 4042
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    .line 4041
    if-eqz v0, :cond_2

    .line 4043
    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f0c0086

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4044
    const/16 v3, 0x2f

    .line 4043
    invoke-direct {v0, v2, v3, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4046
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4047
    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f0c0026

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4050
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 4051
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9

    .prologue
    const/16 v3, 0xe

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 803
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 804
    if-ne p1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 805
    invoke-virtual {v2}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 806
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 809
    iget-wide v4, v2, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    iget-wide v6, v2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_3

    .line 811
    iget v3, v2, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v4, v2, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 813
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v2

    .line 815
    array-length v3, p3

    if-lez v3, :cond_2

    .line 816
    aget v3, p3, v8

    if-nez v3, :cond_2

    .line 817
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 824
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 828
    :cond_1
    return-void

    .line 820
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 821
    const v1, 0x7f0c0016

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 820
    const v1, 0x7f0c0040

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
    .line 1787
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1788
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

    .line 1789
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    goto :goto_0

    .line 1791
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 943
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->preOnResume()V

    .line 947
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onResume()V

    .line 948
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedSessionMillis()V

    .line 951
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_4

    .line 952
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 962
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v3, :cond_2

    .line 963
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->tryAndUpdatePredictedApps()V

    .line 965
    :cond_2
    sget-object v0, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    .line 967
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 968
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v0, :cond_3

    .line 969
    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 970
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentWorkspaceScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    .line 971
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 973
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    move v3, v2

    .line 981
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 982
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 981
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 953
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_6

    .line 954
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_5

    move v0, v1

    .line 958
    :goto_2
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 954
    goto :goto_2

    .line 959
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v3, :cond_1

    .line 960
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0

    .line 984
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 990
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    move v3, v2

    .line 991
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 992
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 991
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 994
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 999
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_b

    .line 1001
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWaitingForResume:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 1008
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1009
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->reinflateWidgetsIfNecessary()V

    .line 1021
    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1022
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mMoveToDefaultScreenFromNewIntent:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1021
    if-eqz v0, :cond_d

    .line 1026
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1027
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onShow(Z)V

    .line 1030
    :cond_d
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mMoveToDefaultScreenFromNewIntent:Z

    .line 1031
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/Launcher;->updateInteraction(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 1032
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onResume()V

    .line 1035
    invoke-static {v1, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(ILandroid/content/Context;)V

    .line 1039
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->refreshShortcutsIfRequired()V

    .line 1041
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->shouldShowDiscoveryBounce()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1042
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->showDiscoveryBounce()V

    .line 1044
    :cond_e
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mIsResumeFromActionScreenOff:Z

    .line 1045
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_f

    .line 1046
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onResume()V

    .line 1049
    :cond_f
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1154
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1795
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1796
    const-string/jumbo v0, "launcher.current_screen"

    .line 1797
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPageOffsetFromCustomContent()I

    move-result v1

    .line 1796
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1800
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1802
    const-string/jumbo v0, "launcher.state"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1805
    invoke-static {p0, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;Z)V

    .line 1807
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_1

    .line 1808
    const-string/jumbo v0, "launcher.request_args"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1810
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_2

    .line 1811
    const-string/jumbo v0, "launcher.activity_result"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1814
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_3

    .line 1815
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1817
    :cond_3
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1966
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1968
    return v1
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 900
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onStart()V

    .line 901
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 903
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onStart()V

    .line 907
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->setNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 915
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 916
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 917
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 920
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 921
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/16 v2, 0xff

    .line 920
    filled-new-array {v4, v2}, [I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    .line 922
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/Launcher$9;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 928
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 929
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 930
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 932
    :cond_4
    iput-boolean v4, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    .line 933
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 884
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onStop()V

    .line 885
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 887
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onStop()V

    .line 891
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->stopListening()V

    .line 895
    :cond_1
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener()V

    .line 896
    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreate()V

    .line 486
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2288
    const/4 v0, 0x0

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 2829
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onTrimMemory(I)V

    .line 2830
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 2833
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 2838
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 2839
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onTrimMemory(I)V

    .line 2841
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 1160
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onWindowFocusChanged(Z)V

    .line 1161
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 1163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherCallbacks;->onWindowFocusChanged(Z)V

    .line 1166
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 1597
    if-nez p1, :cond_1

    .line 1598
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1603
    new-instance v1, Lcom/android/launcher3/Launcher$15;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$15;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1627
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearTypedText()V

    .line 1629
    :cond_1
    return-void
.end method

.method protected onWorkspaceLockedChanged()V
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onWorkspaceLockedChanged()V

    .line 1999
    :cond_0
    return-void
.end method

.method protected overrideTheme(ZZ)V
    .locals 1

    .prologue
    .line 489
    if-eqz p1, :cond_1

    .line 490
    const v0, 0x7f120004

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setTheme(I)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    if-eqz p2, :cond_0

    .line 492
    const v0, 0x7f120003

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setTheme(I)V

    goto :goto_0
.end method

.method protected populateCustomContentContainer()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->populateCustomContentContainer()V

    .line 580
    :cond_0
    return-void
.end method

.method public refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 1

    .prologue
    .line 3930
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 3931
    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2128
    instance-of v0, p2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 2130
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 2131
    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_1

    .line 2132
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 2136
    :goto_0
    if-eqz p3, :cond_0

    .line 2137
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2157
    :cond_0
    :goto_1
    return v4

    .line 2134
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_0

    .line 2139
    :cond_2
    instance-of v0, p2, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_4

    .line 2140
    check-cast p2, Lcom/android/launcher3/FolderInfo;

    .line 2141
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 2142
    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 2144
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2145
    if-eqz p3, :cond_0

    .line 2146
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/FolderInfo;)V

    goto :goto_1

    .line 2148
    :cond_4
    instance-of v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5

    .line 2149
    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2150
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 2151
    if-eqz p3, :cond_0

    .line 2152
    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    goto :goto_1

    .line 2155
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public setAllAppsButton(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 1364
    return-void
.end method

.method public setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z
    .locals 1

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    .line 553
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

    .line 3148
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3150
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 3151
    return v1

    .line 3153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setOrientation()V
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x5

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 2

    .prologue
    .line 1988
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    .line 1989
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1990
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1991
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onWorkspaceLockedChanged()V

    .line 1993
    :cond_0
    return-void
.end method

.method public showAppsView(ZZ)V
    .locals 1

    .prologue
    .line 2927
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->markAppsViewShown()V

    .line 2928
    if-eqz p2, :cond_0

    .line 2929
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->tryAndUpdatePredictedApps()V

    .line 2931
    :cond_0
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(Lcom/android/launcher3/Launcher$State;Z)Z

    .line 2932
    return-void
.end method

.method public showOverviewMode(Z)V
    .locals 1

    .prologue
    .line 2876
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->showOverviewMode(ZZ)V

    .line 2877
    return-void
.end method

.method showOverviewMode(ZZ)V
    .locals 6

    .prologue
    .line 2884
    const/4 v5, 0x0

    .line 2885
    if-eqz p2, :cond_0

    .line 2886
    new-instance v5, Lcom/android/launcher3/Launcher$22;

    invoke-direct {v5, p0}, Lcom/android/launcher3/Launcher$22;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 2896
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setVisibility(I)V

    .line 2897
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    .line 2898
    sget-object v3, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    move v4, p1

    .line 2897
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    .line 2899
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setState(Lcom/android/launcher3/Launcher$State;)V

    .line 2903
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->requestDisallowInterceptTouchEvent(Z)V

    .line 2904
    return-void
.end method

.method showWidgetsView(ZZ)V
    .locals 2

    .prologue
    .line 2939
    if-eqz p2, :cond_0

    .line 2940
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->scrollToTop()V

    .line 2942
    :cond_0
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(Lcom/android/launcher3/Launcher$State;Z)Z

    .line 2944
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    new-instance v1, Lcom/android/launcher3/Launcher$23;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$23;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsContainerView;->post(Ljava/lang/Runnable;)Z

    .line 2950
    return-void
.end method

.method public showWorkspace(Z)Z
    .locals 1

    .prologue
    .line 2844
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

    .line 2848
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v3, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v2, v3, :cond_3

    .line 2849
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v2, v3, :cond_4

    move v6, v0

    .line 2850
    :goto_0
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2851
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setVisibility(I)V

    .line 2852
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateTransitionAnimation:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    .line 2853
    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    move v4, p1

    move-object v5, p2

    .line 2852
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    .line 2856
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2857
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2862
    :cond_1
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setState(Lcom/android/launcher3/Launcher$State;)V

    .line 2864
    if-eqz v6, :cond_2

    .line 2866
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2867
    const/16 v1, 0x20

    .line 2866
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2869
    :cond_2
    return v6

    :cond_3
    move v6, v0

    .line 2848
    goto :goto_0

    :cond_4
    move v6, v1

    .line 2849
    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1870
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1871
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2675
    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {p0, p2}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2676
    const v1, 0x7f0c0023

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2677
    return v4

    .line 2681
    :cond_0
    if-eqz p1, :cond_3

    .line 2682
    const-string/jumbo v2, "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 2683
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v2

    move-object v3, v2

    .line 2685
    :goto_1
    if-nez p3, :cond_5

    move-object v2, v1

    .line 2688
    :goto_2
    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2689
    if-eqz p1, :cond_1

    .line 2690
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2693
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v1, :cond_6

    .line 2694
    instance-of v1, p3, Lcom/android/launcher3/ShortcutInfo;

    .line 2693
    if-eqz v1, :cond_6

    .line 2695
    iget v1, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq v1, v7, :cond_2

    .line 2696
    iget v1, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v5, 0x6

    if-ne v1, v5, :cond_6

    .line 2697
    :cond_2
    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2693
    if-eqz v1, :cond_6

    .line 2699
    invoke-direct {p0, p2, v3, p3}, Lcom/android/launcher3/Launcher;->startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/ItemInfo;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2707
    :goto_3
    return v7

    :cond_3
    move v2, v4

    .line 2681
    goto :goto_0

    :cond_4
    move-object v3, v1

    .line 2683
    goto :goto_1

    .line 2685
    :cond_5
    iget-object v1, p3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    move-object v2, v1

    goto :goto_2

    .line 2700
    :cond_6
    if-eqz v2, :cond_7

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2702
    :cond_7
    invoke-virtual {p0, p2, v3}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2708
    :catch_0
    move-exception v1

    .line 2709
    const v2, 0x7f0c0021

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2710
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

    .line 2712
    return v4

    .line 2704
    :cond_8
    :try_start_2
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v1

    .line 2705
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2704
    invoke-virtual {v1, v5, v2, v6, v3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public startBinding()V
    .locals 1

    .prologue
    .line 3192
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 3194
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->setWorkspaceLoading(Z)V

    .line 3197
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->clearDropTargets()V

    .line 3198
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeAllWorkspaceScreens()V

    .line 3200
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->resetLayout()V

    .line 3206
    :cond_0
    return-void
.end method

.method public startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 1917
    const-string/jumbo v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1918
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 1919
    if-nez v1, :cond_0

    .line 1920
    const-string/jumbo v0, "Launcher"

    const-string/jumbo v1, "No global search activity found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    return-void

    .line 1923
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1924
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1925
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1927
    if-nez p3, :cond_4

    .line 1928
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1933
    :goto_0
    const-string/jumbo v3, "source"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1934
    const-string/jumbo v3, "source"

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    :cond_1
    const-string/jumbo v3, "app_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1937
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1938
    const-string/jumbo v0, "query"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1940
    :cond_2
    if-eqz p2, :cond_3

    .line 1941
    const-string/jumbo v0, "select_query"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1943
    :cond_3
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1945
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1949
    :goto_1
    return-void

    .line 1930
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1946
    :catch_0
    move-exception v0

    .line 1947
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
    .line 1877
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/BaseActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    return-void

    .line 1879
    :catch_0
    move-exception v0

    .line 1880
    new-instance v0, Landroid/content/ActivityNotFoundException;

    invoke-direct {v0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1892
    if-nez p1, :cond_0

    .line 1894
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1896
    :cond_0
    if-nez p3, :cond_1

    .line 1897
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1898
    const-string/jumbo v0, "source"

    const-string/jumbo v1, "launcher-search"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1902
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherCallbacks;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1901
    if-eqz v0, :cond_3

    .line 1904
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/launcher3/Launcher;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 1908
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 1909
    return-void
.end method

.method public startWorkspaceStateChangeAnimation(Lcom/android/launcher3/Workspace$State;ZLcom/android/launcher3/anim/AnimationLayerSet;)Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    .line 2999
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/Workspace;->setStateWithAnimation(Lcom/android/launcher3/Workspace$State;ZLcom/android/launcher3/anim/AnimationLayerSet;)Landroid/animation/Animator;

    move-result-object v1

    .line 3000
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->updateInteraction(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 3001
    return-object v1
.end method

.method public tryAndUpdatePredictedApps()V
    .locals 2

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 3064
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->getPredictedApps()Ljava/util/List;

    move-result-object v0

    .line 3065
    if-eqz v0, :cond_0

    .line 3066
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setPredictedApps(Ljava/util/List;)V

    .line 3069
    :cond_0
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 4

    .prologue
    .line 3940
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 3941
    if-eqz p1, :cond_1

    .line 3942
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 3951
    :cond_0
    :goto_0
    return-void

    .line 3944
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/Launcher$40;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$40;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 3948
    const-wide/16 v2, 0x1f4

    .line 3944
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateIconBadges(Ljava/util/Set;)V
    .locals 2

    .prologue
    .line 1557
    new-instance v0, Lcom/android/launcher3/Launcher$14;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$14;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/Set;)V

    .line 1569
    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1570
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1572
    :cond_0
    return-void
.end method

.method public updateInteraction(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2590
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p1, v0, :cond_1

    move v0, v1

    .line 2591
    :goto_0
    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p2, v3, :cond_2

    .line 2592
    :goto_1
    if-eqz v1, :cond_3

    .line 2593
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onInteractionBegin()V

    .line 2597
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 2590
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2591
    goto :goto_1

    .line 2594
    :cond_3
    if-eqz v0, :cond_0

    .line 2595
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onInteractionEnd()V

    goto :goto_2
.end method

.method public useVerticalBarLayout()Z
    .locals 1

    .prologue
    .line 3671
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    return v0
.end method

.method waitUntilResume(Ljava/lang/Runnable;Z)Z
    .locals 1

    .prologue
    .line 3111
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_2

    .line 3113
    if-eqz p2, :cond_1

    .line 3114
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3117
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3118
    const/4 v0, 0x1

    return v0

    .line 3120
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
