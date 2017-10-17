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
    .line 55
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mScaleToFit:F

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    .line 88
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 90
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 93
    const v0, 0x7f020057

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setBackgroundResource(I)V

    .line 95
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 98
    :cond_0
    return-void
.end method

.method private checkIfAutoAdvance()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_3

    .line 394
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    move v0, v1

    .line 397
    :goto_0
    sget-object v3, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    move v2, v1

    .line 398
    :cond_0
    if-eq v0, v2, :cond_1

    .line 399
    if-eqz v0, :cond_2

    .line 400
    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 404
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->maybeRegisterAutoAdvance()V

    .line 406
    :cond_1
    return-void

    .line 402
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

    .line 130
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 131
    return v4

    :cond_0
    move v1, v2

    .line 133
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 135
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 136
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    return v4

    .line 133
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_2
    return v2
.end method

.method private dispatchChildFocus(Z)V
    .locals 0

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setSelected(Z)V

    .line 354
    return-void
.end method

.method private getAdvanceable()Landroid/widget/Advanceable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 411
    :cond_0
    return-object v1

    .line 410
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 413
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
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

    .line 418
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 419
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 420
    sget-object v2, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 421
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    if-eq v0, v2, :cond_2

    .line 422
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 424
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHostView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHostView$2;-><init>(Lcom/android/launcher3/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->scheduleNextAdvance()V

    .line 435
    :cond_2
    return-void
.end method

.method private runAutoAdvance()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->scheduleNextAdvance()V

    .line 456
    return-void
.end method

.method private scheduleNextAdvance()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x4e20

    .line 438
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAutoAdvanceRegistered:Z

    if-nez v0, :cond_0

    .line 439
    return-void

    .line 441
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 442
    rem-long v2, v0, v4

    sub-long v2, v4, v2

    add-long/2addr v0, v2

    .line 443
    sget-object v2, Lcom/android/launcher3/LauncherAppWidgetHostView;->sAutoAdvanceWidgetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xfa

    mul-long/2addr v2, v4

    .line 442
    add-long/2addr v0, v2

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 445
    if-eqz v2, :cond_1

    .line 446
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 448
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 243
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->clearChildFocus(Landroid/view/View;)V

    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->dispatchChildFocus(Z)V

    .line 344
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 272
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->requestFocus()Z

    .line 276
    return v2

    .line 278
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Launcher widget must have LauncherAppWidgetProviderInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    :goto_0
    return v0

    .line 267
    :cond_0
    const/high16 v0, 0x60000

    goto :goto_0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScaleToFit()F
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mScaleToFit:F

    return v0
.end method

.method public getTranslationForCentering()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    return-object v0
.end method

.method public isReinflateRequired()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 148
    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_0

    .line 149
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mSlop:F

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    .line 226
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 227
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onDetachedFromWindow()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsAttachedToWindow:Z

    .line 236
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 237
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 324
    if-eqz p1, :cond_0

    .line 325
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 326
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->dispatchChildFocus(Z)V

    .line 328
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 329
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 381
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 164
    return v2

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 171
    return v2

    .line 174
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :cond_3
    :goto_0
    return v3

    .line 176
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 178
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v1, :cond_4

    .line 179
    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 181
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    .line 184
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->setTouchCompleteListener(Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 174
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
    .line 283
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 284
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 285
    const/4 v0, 0x1

    return v0

    .line 287
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

    .line 292
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 294
    iput-boolean v3, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 295
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 296
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 298
    packed-switch v0, :pswitch_data_0

    .line 314
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 315
    return v3

    .line 300
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 319
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 303
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 305
    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v2, v3, :cond_0

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-ne v0, v3, :cond_0

    .line 306
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 307
    iput-boolean v4, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    .line 308
    return v3

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 364
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    invoke-direct {p0, p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsScrollable:Z

    .line 375
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHostView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHostView$1;-><init>(Lcom/android/launcher3/LauncherAppWidgetHostView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchComplete()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 262
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 206
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
    .line 385
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onWindowVisibilityChanged(I)V

    .line 386
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->maybeRegisterAutoAdvance()V

    .line 387
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 334
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->dispatchChildFocus(Z)V

    .line 335
    if-eqz p2, :cond_0

    .line 336
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 338
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 334
    goto :goto_0
.end method

.method public setScaleToFit(F)V
    .locals 0

    .prologue
    .line 459
    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mScaleToFit:F

    .line 460
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setScaleX(F)V

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setScaleY(F)V

    .line 462
    return-void
.end method

.method public setTranslationForCentering(FF)V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mTranslationForCentering:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setTranslationX(F)V

    .line 471
    invoke-virtual {p0, p2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setTranslationY(F)V

    .line 472
    return-void
.end method

.method public switchToErrorView()V
    .locals 3

    .prologue
    .line 358
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 359
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    .line 123
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 126
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->checkIfAutoAdvance()V

    .line 127
    return-void
.end method

.method public updateLastInflationOrientation()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mPreviousOrientation:I

    .line 117
    return-void
.end method
