.class public Lcom/android/launcher3/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;


# instance fields
.field private mAutoAdvanceRunnable:Ljava/lang/Runnable;

.field private mChildrenFocused:Z

.field private final mContext:Landroid/content/Context;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mIsAttachedToWindow:Z

.field private mIsAutoAdvanceRegistered:Z

.field private mIsScrollable:Z

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mPreviousOrientation:I

.field private mScaleToFit:F

.field private mSlop:F

.field private final mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field private final mTranslationForCentering:Landroid/graphics/PointF;


# direct methods
.method static synthetic -wrap0(Lcom/android/launcher3/LauncherAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->runAutoAdvance()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mScaleToFit:F

    .line 89
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    .line 93
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 95
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 98
    const v0, 0x7f020050

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setBackgroundResource(I)V

    .line 100
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    .line 103
    const-string/jumbo v1, "setExecutor"

    .line 102
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 103
    const-class v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 104
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string/jumbo v1, "LauncherWidgetHostView"

    const-string/jumbo v2, "Unable to set async executor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkIfAutoAdvance()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 402
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_3

    .line 405
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    move v0, v1

    .line 408
    :goto_0
    sget-object v3, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    move v2, v1

    .line 409
    :cond_0
    if-eq v0, v2, :cond_1

    .line 410
    if-eqz v0, :cond_2

    .line 411
    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 415
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->maybeRegisterAutoAdvance()V

    .line 417
    :cond_1
    return-void

    .line 413
    :cond_2
    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private checkScrollableRecursively(Landroid/view/ViewGroup;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 141
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 142
    return v4

    :cond_0
    move v1, v2

    .line 144
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 145
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 146
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 147
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    return v4

    .line 144
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_2
    return v2
.end method

.method private dispatchChildFocus(Z)V
    .locals 0

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setSelected(Z)V

    .line 365
    return-void
.end method

.method private getAdvanceable()Landroid/widget/Advanceable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 422
    :cond_0
    return-object v1

    .line 421
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 424
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 425
    instance-of v2, v0, Landroid/widget/Advanceable;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/Advanceable;

    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private maybeRegisterAutoAdvance()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 431
    sget-object v2, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 432
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    if-eq v0, v2, :cond_2

    .line 433
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    .line 434
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHostView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHostView$2;-><init>(Lcom/android/launcher3/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 444
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->scheduleNextAdvance()V

    .line 446
    :cond_2
    return-void
.end method

.method private runAutoAdvance()V
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->scheduleNextAdvance()V

    .line 467
    return-void
.end method

.method private scheduleNextAdvance()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x4e20

    .line 449
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    if-nez v0, :cond_0

    .line 450
    return-void

    .line 452
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 453
    rem-long v2, v0, v4

    sub-long v2, v4, v2

    add-long/2addr v0, v2

    .line 454
    sget-object v2, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xfa

    mul-long/2addr v2, v4

    .line 453
    add-long/2addr v0, v2

    .line 455
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 456
    if-eqz v2, :cond_1

    .line 457
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 459
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 254
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->clearChildFocus(Landroid/view/View;)V

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->dispatchChildFocus(Z)V

    .line 355
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 283
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->requestFocus()Z

    .line 287
    return v2

    .line 289
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Launcher widget must have LauncherAppWidgetProviderInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    :goto_0
    return v0

    .line 278
    :cond_0
    const/high16 v0, 0x60000

    goto :goto_0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScaleToFit()F
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mScaleToFit:F

    return v0
.end method

.method public getTranslationForCentering()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    return-object v0
.end method

.method public isReinflateRequired()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 159
    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_0

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    .line 234
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mSlop:F

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    .line 237
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 238
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onDetachedFromWindow()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    .line 247
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 248
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 335
    if-eqz p1, :cond_0

    .line 336
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 337
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->dispatchChildFocus(Z)V

    .line 339
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 340
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 392
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 175
    return v2

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 182
    return v2

    .line 185
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_3
    :goto_0
    return v3

    .line 187
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 189
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 193
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    .line 195
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->setTouchCompleteListener(Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;)V

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 295
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 296
    const/4 v0, 0x1

    return v0

    .line 298
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 303
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 305
    iput-boolean v3, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 306
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 307
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 309
    packed-switch v0, :pswitch_data_0

    .line 325
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 326
    return v3

    .line 311
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 330
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 314
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 316
    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v2, v3, :cond_0

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-ne v0, v3, :cond_0

    .line 317
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 318
    iput-boolean v4, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 319
    return v3

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 375
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    invoke-direct {p0, p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsScrollable:Z

    .line 386
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHostView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHostView$1;-><init>(Lcom/android/launcher3/LauncherAppWidgetHostView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchComplete()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 273
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onWindowVisibilityChanged(I)V

    .line 397
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->maybeRegisterAutoAdvance()V

    .line 398
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 345
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->dispatchChildFocus(Z)V

    .line 346
    if-eqz p2, :cond_0

    .line 347
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 349
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 345
    goto :goto_0
.end method

.method public setScaleToFit(F)V
    .locals 0

    .prologue
    .line 470
    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mScaleToFit:F

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setScaleX(F)V

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setScaleY(F)V

    .line 473
    return-void
.end method

.method public setTranslationForCentering(FF)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 481
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setTranslationX(F)V

    .line 482
    invoke-virtual {p0, p2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setTranslationY(F)V

    .line 483
    return-void
.end method

.method public switchToErrorView()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 370
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    .line 134
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 137
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 138
    return-void
.end method

.method public updateLastInflationOrientation()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mPreviousOrientation:I

    .line 128
    return-void
.end method
