.class Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/animation/Animator;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field mode:I

.field repeating:Z

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V
    .locals 12

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1971
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 1984
    iget-object v5, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    move-object v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 1985
    iget-object v0, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 1986
    iget-object v0, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 1987
    iget-object v5, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    move-object v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 1988
    iget-object v0, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1989
    iget-object v1, p1, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1990
    sub-int v2, v0, v6

    .line 1991
    sub-int/2addr v1, v7

    .line 1993
    iput-object p2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    .line 1994
    iput p3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    .line 1995
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->setInitialAnimationValues(Z)V

    .line 1996
    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->-get0(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float v3, v4, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalScale:F

    .line 1997
    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 1998
    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    .line 1999
    if-nez p3, :cond_0

    const/4 v0, -0x1

    .line 2000
    :goto_0
    if-ne v2, v1, :cond_1

    if-nez v2, :cond_1

    .line 2014
    :goto_1
    return-void

    .line 1999
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2002
    :cond_1
    if-nez v1, :cond_2

    .line 2003
    iget v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v0, v2

    iget v2, p1, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    goto :goto_1

    .line 2004
    :cond_2
    if-nez v2, :cond_3

    .line 2005
    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_1

    .line 2007
    :cond_3
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 2008
    iget v3, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    neg-int v6, v0

    int-to-float v6, v6

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v6

    float-to-double v6, v2

    .line 2009
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v2, p1, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v10, v2

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 2008
    mul-double/2addr v6, v8

    double-to-int v2, v6

    int-to-float v2, v2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    .line 2010
    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 2011
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v3, p1, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 2010
    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    goto :goto_1
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2092
    :cond_0
    return-void
.end method


# virtual methods
.method animate()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 2036
    iget v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaX:F

    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finalDeltaY:F

    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 2038
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2039
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2040
    invoke-direct {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->cancel()V

    .line 2041
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    if-eqz v1, :cond_1

    .line 2043
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    .line 2044
    return-void

    :cond_0
    move v1, v0

    .line 2036
    goto :goto_0

    .line 2047
    :cond_1
    if-eqz v1, :cond_2

    .line 2048
    return-void

    .line 2050
    :cond_2
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2051
    iput-object v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    .line 2056
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isPowerSaverOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2057
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2058
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2061
    :cond_3
    iget v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->mode:I

    if-nez v0, :cond_4

    const/16 v0, 0x15e

    :goto_1
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2062
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2063
    new-instance v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;-><init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2077
    new-instance v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;-><init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2084
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2086
    return-void

    .line 2061
    :cond_4
    const/16 v0, 0x12c

    goto :goto_1

    .line 2050
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method completeAnimationImmediately()V
    .locals 4

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2099
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->setInitialAnimationValues(Z)V

    .line 2100
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    .line 2101
    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 2102
    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2101
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    .line 2103
    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2101
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    .line 2104
    iget v2, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 2101
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2100
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2106
    const-wide/16 v2, 0x96

    .line 2100
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    .line 2107
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2108
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 2109
    return-void
.end method

.method setInitialAnimationValues(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2017
    if-eqz p1, :cond_1

    .line 2018
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 2020
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2021
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2022
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    .line 2033
    :goto_0
    return-void

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->-get0(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2025
    iput v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2026
    iput v1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    goto :goto_0

    .line 2029
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initScale:F

    .line 2030
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaX:F

    .line 2031
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->initDeltaY:F

    goto :goto_0
.end method
