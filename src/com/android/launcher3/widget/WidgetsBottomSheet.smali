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

.field private mGradientBackground:Lcom/android/launcher3/graphics/GradientView;

.field private mInsets:Landroid/graphics/Rect;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

.field private mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

.field private mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

.field private mTranslationYClosed:I

.field private mTranslationYOpen:I

.field private mTranslationYRange:F

.field private mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Lcom/android/launcher3/allapps/VerticalPullDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->onCloseComplete()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setWillNotDraw(Z)V

    .line 84
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 85
    new-array v0, v3, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    .line 87
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 88
    new-instance v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setListener(Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;)V

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    const v2, 0x7f040017

    .line 92
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/graphics/GradientView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mGradientBackground:Lcom/android/launcher3/graphics/GradientView;

    .line 94
    return-void
.end method

.method private addDivider(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040035

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 158
    return-void
.end method

.method private addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 162
    const v1, 0x7f040033

    .line 161
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 164
    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview(Z)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    return-object v0
.end method

.method public static getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsBottomSheet;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsBottomSheet;

    return-object v0
.end method

.method private onCloseComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iput-boolean v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mGradientBackground:Lcom/android/launcher3/graphics/GradientView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    .line 237
    const/4 v1, 0x2

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 238
    return-void
.end method

.method private open(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 184
    iget-boolean v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    :cond_0
    return-void

    .line 187
    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    .line 188
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f01002a

    invoke-static {v2, v3}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v2

    .line 189
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v3

    .line 191
    if-eqz v2, :cond_2

    move v0, v1

    .line 189
    :cond_2
    invoke-virtual {v3, v1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 192
    if-eqz p1, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 194
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    int-to-float v2, v2

    .line 193
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/widget/WidgetsBottomSheet$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet$1;-><init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_3
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public getLogContainerType()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x5

    return v0
.end method

.method protected handleClose(Z)V
    .locals 3

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    return-void

    .line 213
    :cond_1
    if-eqz p1, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 215
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v2, v2

    .line 214
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;-><init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 223
    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 230
    :goto_1
    return-void

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    goto :goto_0

    .line 227
    :cond_3
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setTranslationY(F)V

    .line 228
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->onCloseComplete()V

    goto :goto_1
.end method

.method protected isOfType(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 242
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsContainerView;->handleClick()V

    .line 175
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x2

    .line 314
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setDetectableScrollConditions(IZ)V

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 313
    goto :goto_0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrag(FF)Z
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    int-to-float v0, v0

    .line 277
    iget v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v1, v1

    .line 276
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setTranslationY(F)V

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public onDragEnd(FZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 292
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;->setVelocityAtZero(F)V

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    .line 295
    iget v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYRange:F

    div-float/2addr v2, v3

    .line 294
    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/allapps/VerticalPullDetector;->calculateDuration(FF)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 296
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->close(Z)V

    .line 303
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYRange:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mVerticalPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYRange:F

    div-float/2addr v2, v3

    .line 299
    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/allapps/VerticalPullDetector;->calculateDuration(FF)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    invoke-direct {p0, v4}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->open(Z)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->close(Z)V

    .line 326
    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 180
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
    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->onMeasure(II)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    .line 101
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    iget v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYOpen:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYRange:F

    .line 102
    return-void
.end method

.method protected onWidgetsBound()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    .line 123
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 122
    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v5

    .line 125
    const v0, 0x7f0e0088

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    const v1, 0x7f0e008c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 128
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    move v3, v4

    .line 130
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 131
    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->addItemCell(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/WidgetCell;

    move-result-object v6

    .line 132
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/WidgetItem;

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 134
    invoke-virtual {v6}, Lcom/android/launcher3/widget/WidgetCell;->ensurePreview()V

    .line 135
    invoke-virtual {v6, v4}, Lcom/android/launcher3/widget/WidgetCell;->setVisibility(I)V

    .line 136
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_0

    .line 137
    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->addDivider(Landroid/view/ViewGroup;)V

    .line 130
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 141
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 144
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 143
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 154
    :goto_1
    return-void

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 149
    const v3, 0x7f040035

    .line 148
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 151
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 150
    invoke-static {v3, v5}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    invoke-virtual {v1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public populateAndShow(Lcom/android/launcher3/ItemInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 106
    const v0, 0x7f0e002e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 107
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mOriginalItemInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const v3, 0x7f0c006d

    .line 106
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->onWidgetsBound()V

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mGradientBackground:Lcom/android/launcher3/graphics/GradientView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mGradientBackground:Lcom/android/launcher3/graphics/GradientView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/graphics/GradientView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0, v4, v4}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->measure(II)V

    .line 115
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setTranslationY(F)V

    .line 116
    iput-boolean v4, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mIsOpen:Z

    .line 117
    invoke-direct {p0, v5}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->open(Z)V

    .line 118
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 260
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 261
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 262
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 263
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getPaddingTop()I

    move-result v3

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getPaddingRight()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    .line 264
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->setPadding(IIII)V

    .line 266
    return-void
.end method

.method public setTranslationY(F)V
    .locals 3

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->setTranslationY(F)V

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mGradientBackground:Lcom/android/launcher3/graphics/GradientView;

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYClosed:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mTranslationYRange:F

    div-float v1, v0, v1

    .line 286
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet;->mGradientBackground:Lcom/android/launcher3/graphics/GradientView;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/graphics/GradientView;->setProgress(FZ)V

    .line 288
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
