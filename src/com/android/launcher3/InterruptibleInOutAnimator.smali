.class public Lcom/android/launcher3/InterruptibleInOutAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field mDirection:I

.field private mFirstRun:Z

.field private mOriginalDuration:J

.field private mOriginalFromValue:F

.field private mOriginalToValue:F

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;JFF)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    .line 48
    iput v1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p4, v0, v1

    aput p5, v0, v2

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 52
    iput-wide p2, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    .line 53
    iput p4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 54
    iput p5, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalToValue:F

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/InterruptibleInOutAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/InterruptibleInOutAnimator$1;-><init>(Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    return-void
.end method

.method private animate(I)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    .line 66
    if-ne p1, v11, :cond_0

    iget v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalToValue:F

    move v1, v0

    .line 67
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->cancel()V

    .line 75
    iput p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 78
    iget-wide v4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    sub-long v2, v4, v2

    .line 79
    iget-object v4, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    iget-object v2, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v10

    aput v1, v3, v11

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    iput-boolean v10, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    .line 84
    return-void

    .line 66
    :cond_0
    iget v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    move v1, v0

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animate(I)V

    .line 110
    return-void
.end method

.method public animateOut()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animate(I)V

    .line 120
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 89
    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    .line 124
    return-void
.end method
