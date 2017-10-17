.class public Lcom/android/launcher3/widget/WidgetsBottomSheet;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mInsets:Landroid/graphics/Rect;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

.field private mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

.field private mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

.field private mTranslationYClosed:I

.field private mTranslationYOpen:I

.field private mTranslationYRange:F

.field private mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

.field private mWasNavBarLight:Z


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Lcom/android/launcher3/allapps/VerticalPullDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mWasNavBarLight:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/widget/WidgetsBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/widget/WidgetsBottomSheet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setLightNavBar(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f120002

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setWillNotDraw(Z)V

    .line 82
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 83
    new-array v0, v2, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 84
    new-instance v0, Landroid/support/v4/view/b/a;

    invoke-direct {v0}, Landroid/support/v4/view/b/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setListener(Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;)V

    .line 89
    return-void
.end method

.method private addDivider(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040033

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 153
    return-void
.end method

.method private addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 157
    const v1, 0x7f040031

    .line 156
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 159
    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview(Z)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    return-object v0
.end method

.method public static getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsBottomSheet;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsBottomSheet;

    return-object v0
.end method

.method private open(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 179
    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    return-void

    .line 182
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    .line 183
    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setLightNavBar(Z)V

    .line 184
    if-eqz p1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 186
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    int-to-float v2, v2

    .line 185
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/widget/WidgetsBottomSheet$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet$1;-><init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_2
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setTranslationY(F)V

    goto :goto_0
.end method

.method private setLightNavBar(Z)V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/Launcher;->activateLightSystemBars(ZZZ)V

    .line 229
    return-void
.end method


# virtual methods
.method public getLogContainerType()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x5

    return v0
.end method

.method protected handleClose(Z)V
    .locals 3

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    return-void

    .line 205
    :cond_1
    if-eqz p1, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 207
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v2, v2

    .line 206
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;-><init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 217
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 217
    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    :goto_1
    return-void

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    goto :goto_0

    .line 221
    :cond_3
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setTranslationY(F)V

    .line 222
    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mWasNavBarLight:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setLightNavBar(Z)V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    goto :goto_1
.end method

.method protected isOfType(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 233
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->handleClick()V

    .line 170
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x2

    .line 296
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setDetectableScrollConditions(IZ)V

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 295
    goto :goto_0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrag(FF)Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    int-to-float v0, v0

    .line 268
    iget v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v1, v1

    .line 267
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setTranslationY(F)V

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onDragEnd(FZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 274
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;->setVelocityAtZero(F)V

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    .line 277
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYRange:F

    div-float/2addr v2, v3

    .line 276
    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/allapps/VerticalPullDetector;->calculateDuration(FF)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->close(Z)V

    .line 285
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYRange:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYRange:F

    div-float/2addr v2, v3

    .line 281
    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/allapps/VerticalPullDetector;->calculateDuration(FF)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    invoke-direct {p0, v4}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->open(Z)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->close(Z)V

    .line 308
    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->handleLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->onMeasure(II)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    .line 96
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    iget v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYRange:F

    .line 97
    return-void
.end method

.method protected onWidgetsBound()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    .line 118
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 117
    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v5

    .line 120
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 121
    const v1, 0x7f0e0072

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 123
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    move v3, v4

    .line 125
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 126
    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;

    move-result-object v6

    .line 127
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/WidgetItem;

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 129
    invoke-virtual {v6}, Lcom/android/launcher3/widget/WidgetCell;->ensurePreview()V

    .line 130
    invoke-virtual {v6, v4}, Lcom/android/launcher3/widget/WidgetCell;->setVisibility(I)V

    .line 131
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_0

    .line 132
    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->addDivider(Landroid/view/ViewGroup;)V

    .line 125
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 136
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 139
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    :goto_1
    return-void

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 144
    const v3, 0x7f040033

    .line 143
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 146
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 145
    invoke-static {v3, v5}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public populateAndShow(Lcom/android/launcher3/ItemInfo;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 101
    const v0, 0x7f0e002e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 102
    iget-object v5, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v5, v5, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v4, v2

    const v5, 0x7f0c0064

    .line 101
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->onWidgetsBound()V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mWasNavBarLight:Z

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->measure(II)V

    .line 110
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setTranslationY(F)V

    .line 111
    iput-boolean v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    .line 112
    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->open(Z)V

    .line 113
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 251
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 252
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 253
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 254
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getPaddingTop()I

    move-result v3

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getPaddingRight()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    .line 255
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setPadding(IIII)V

    .line 257
    return-void
.end method
