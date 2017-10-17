.class public Lcom/android/launcher3/anim/SpringAnimationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAnimationFactory:Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;

.field private mAnimations:Ljava/util/ArrayList;

.field private mCurrentVelocity:F

.field private mShouldComputeVelocity:Z

.field private mVelocityDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(ILcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    .line 68
    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityDirection:I

    .line 69
    iput-object p2, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimationFactory:Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;

    .line 70
    return-void
.end method

.method private animateToFinalPosition(FIZ)V
    .locals 4

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->computeVelocity()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 135
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a;

    int-to-float v3, p2

    invoke-virtual {v0, v3}, Landroid/support/a/a;->auh(F)Landroid/support/a/b;

    .line 137
    if-eqz p3, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a;

    iget v3, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    invoke-virtual {v0, v3}, Landroid/support/a/a;->aug(F)Landroid/support/a/b;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a;

    invoke-virtual {v0, p1}, Landroid/support/a/a;->atX(F)V

    .line 135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->reset()V

    .line 144
    return-void
.end method

.method private computeVelocity()F
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->isVerticalDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 195
    :goto_0
    const v1, 0x3e333333    # 0.175f

    mul-float/2addr v0, v1

    .line 198
    return v0

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static forView(Landroid/view/View;Landroid/support/a/d;F)Landroid/support/a/a;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/support/a/a;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/a/a;-><init>(Ljava/lang/Object;Landroid/support/a/d;F)V

    .line 236
    new-instance v1, Landroid/support/a/c;

    invoke-direct {v1, p2}, Landroid/support/a/c;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/support/a/a;->aua(Landroid/support/a/c;)Landroid/support/a/a;

    .line 237
    return-object v0
.end method

.method private getVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method private isVerticalDirection()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    iget v1, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityDirection:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public add(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const v1, 0x7f0e0002

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a;

    .line 80
    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimationFactory:Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;

    invoke-interface {v0, p2}, Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;->initialize(Ljava/lang/Object;)Landroid/support/a/a;

    move-result-object v0

    .line 82
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimationFactory:Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;

    invoke-interface {v1, v0, p2}, Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;->update(Landroid/support/a/a;Ljava/lang/Object;)V

    .line 85
    iget v1, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    invoke-virtual {v0, v1}, Landroid/support/a/a;->aug(F)Landroid/support/a/b;

    .line 86
    iget-object v1, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 103
    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    .line 112
    return-void

    .line 106
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->reset()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public animateToFinalPosition(FI)V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FIZ)V

    .line 116
    return-void
.end method

.method public animateToPositionWithVelocity(FIF)V
    .locals 1

    .prologue
    .line 156
    iput p3, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FIZ)V

    .line 159
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 93
    const v0, 0x7f0e0002

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a;

    .line 94
    invoke-virtual {v0}, Landroid/support/a/a;->atY()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/support/a/a;->skipToEnd()V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 182
    iput-object v1, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    .line 186
    return-void
.end method

.method public skipToEnd()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a;

    invoke-virtual {v0}, Landroid/support/a/a;->atY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/a;

    invoke-virtual {v0}, Landroid/support/a/a;->skipToEnd()V

    .line 172
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method
