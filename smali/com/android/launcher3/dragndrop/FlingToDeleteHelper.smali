.class public Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field private final mFlingToDeleteThresholdVelocity:I

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 47
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    const v1, 0x7f0b0056

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mFlingToDeleteThresholdVelocity:I

    .line 49
    return-void
.end method

.method private getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    .prologue
    .line 133
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 134
    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v2

    mul-float/2addr v1, v2

    .line 133
    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e003c

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->isDropEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    return-object v6

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 114
    new-instance v1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 115
    const/high16 v0, 0x42100000    # 36.0f

    .line 116
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mFlingToDeleteThresholdVelocity:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 118
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 119
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 126
    :cond_3
    :goto_0
    float-to-double v2, v0

    const-wide v4, 0x4041800000000000L    # 35.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_5

    .line 127
    return-object v1

    .line 120
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mFlingToDeleteThresholdVelocity:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 124
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    goto :goto_0

    .line 129
    :cond_5
    return-object v6
.end method


# virtual methods
.method public getDropTarget()Lcom/android/launcher3/DropTarget;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    return-object v0
.end method

.method public getFlingAnimation(Lcom/android/launcher3/DropTarget$DragObject;)Ljava/lang/Runnable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    return-object v1

    .line 99
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/FlingAnimation;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/launcher3/util/FlingAnimation;-><init>(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/Launcher;)V

    return-object v1
.end method

.method public recordDragEvent(JLandroid/view/DragEvent;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 64
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :pswitch_0
    return-void

    :pswitch_1
    move v4, v7

    .line 77
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 78
    invoke-virtual {p3}, Landroid/view/DragEvent;->getX()F

    move-result v5

    invoke-virtual {p3}, Landroid/view/DragEvent;->getY()F

    move-result v6

    move-wide v0, p1

    .line 77
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    .line 80
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 81
    return-void

    .line 69
    :pswitch_2
    const/4 v4, 0x2

    .line 70
    goto :goto_0

    .line 72
    :pswitch_3
    const/4 v4, 0x1

    .line 73
    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public recordMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 56
    return-void
.end method

.method public releaseVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 86
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 88
    :cond_0
    return-void
.end method
