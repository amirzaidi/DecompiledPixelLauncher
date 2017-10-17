.class public Lcom/android/launcher3/DropTargetBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# static fields
.field protected static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

.field protected mDeferOnDragEnd:Z

.field private final mFadeAnimationEndRunnable:Ljava/lang/Runnable;

.field protected mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/launcher3/DropTargetBar$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DropTargetBar$1;-><init>(Lcom/android/launcher3/DropTargetBar;)V

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lcom/android/launcher3/DropTargetBar$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DropTargetBar$1;-><init>(Lcom/android/launcher3/DropTargetBar;)V

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 66
    return-void
.end method

.method private animateToVisibility(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eq v0, p1, :cond_1

    .line 97
    iput-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 102
    iput-object v2, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getAlpha()F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/launcher3/DropTargetBar;->setVisibility(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 110
    const-wide/16 v2, 0xaf

    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 115
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 105
    goto :goto_0
.end method

.method private setupButtonDropTarget(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 2

    .prologue
    .line 82
    instance-of v0, p1, Lcom/android/launcher3/ButtonDropTarget;

    if-eqz v0, :cond_1

    .line 83
    check-cast p1, Lcom/android/launcher3/ButtonDropTarget;

    .line 84
    invoke-virtual {p1, p0}, Lcom/android/launcher3/ButtonDropTarget;->setDropTargetBar(Lcom/android/launcher3/DropTargetBar;)V

    .line 85
    invoke-virtual {p2, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 86
    invoke-virtual {p2, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 93
    :cond_0
    return-void

    .line 87
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Landroid/view/ViewGroup;

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/launcher3/DropTargetBar;->setupButtonDropTarget(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected deferOnDragEnd()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    .line 131
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0, v1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    .line 123
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DropTargetBar;->setAlpha(F)V

    .line 74
    return-void
.end method

.method public setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 78
    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/DropTargetBar;->setupButtonDropTarget(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V

    .line 79
    return-void
.end method
