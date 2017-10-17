.class public Lcom/android/launcher3/allapps/VerticalPullDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentMillis:J

.field private mDisplacementX:F

.field private mDisplacementY:F

.field private mDownX:F

.field private mDownY:F

.field private mIgnoreSlopWhenSettling:Z

.field private mLastDisplacement:F

.field private mLastY:F

.field mListener:Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;

.field private mScrollConditions:I

.field private mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

.field private mSubtractDisplacement:F

.field private mTouchSlop:F

.field private mVelocity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->IDLE:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    iput-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    .line 128
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mTouchSlop:F

    .line 129
    return-void
.end method

.method private static computeDampeningFactor(F)F
    .locals 1

    .prologue
    .line 270
    const v0, 0x417ea5dd

    add-float/2addr v0, p0

    div-float v0, p0, v0

    return v0
.end method

.method private computeVelocity(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mLastY:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher3/allapps/VerticalPullDetector;->computeVelocity(FJ)F

    move-result v0

    return v0
.end method

.method private initializeDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    .line 213
    iput v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    .line 215
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 216
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mTouchSlop:F

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mTouchSlop:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    goto :goto_0
.end method

.method private static interpolate(FFF)F
    .locals 2

    .prologue
    .line 277
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private reportDragEnd()V
    .locals 4

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mListener:Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;

    iget v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;->onDragEnd(FZ)V

    .line 242
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportDragStart(Z)Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mListener:Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;->onDragStart(Z)V

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method private reportDragging()Z
    .locals 3

    .prologue
    .line 223
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mLastDisplacement:F

    sub-float/2addr v0, v1

    .line 224
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mListener:Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    iget v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;->onDrag(FF)Z

    move-result v0

    return v0

    .line 232
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne p1, v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->initializeDragging()V

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->IDLE:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_2

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->reportDragStart(Z)Z

    .line 72
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne p1, v0, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->reportDragEnd()V

    .line 76
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    .line 77
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->reportDragStart(Z)Z

    goto :goto_0
.end method

.method private shouldScrollStart()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 138
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 139
    return v3

    .line 143
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 144
    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 145
    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 146
    return v3

    .line 149
    :cond_1
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mScrollConditions:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 151
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_3
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mScrollConditions:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_2

    .line 153
    :cond_4
    return v3
.end method


# virtual methods
.method public calculateDuration(FF)J
    .locals 4

    .prologue
    .line 282
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 283
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 284
    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x44960000    # 1200.0f

    div-float v0, v3, v0

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v0, v0

    .line 288
    return-wide v0
.end method

.method public computeVelocity(FJ)F
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 252
    iget-wide v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mCurrentMillis:J

    .line 253
    iput-wide p2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mCurrentMillis:J

    .line 255
    iget-wide v4, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mCurrentMillis:J

    sub-long v2, v4, v2

    long-to-float v1, v2

    .line 256
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    div-float v0, p1, v1

    .line 257
    :cond_0
    iget v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 258
    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    .line 263
    :goto_0
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    return v0

    .line 260
    :cond_1
    invoke-static {v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->computeDampeningFactor(F)F

    move-result v1

    .line 261
    iget v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    goto :goto_0
.end method

.method public finishedScrolling()V
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->IDLE:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V

    .line 201
    return-void
.end method

.method public isDraggingOrSettling()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v2, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v2, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingState()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdleState()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->IDLE:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettlingState()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mLastDisplacement:F

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mLastY:F

    .line 196
    const/4 v0, 0x1

    return v0

    .line 159
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDownX:F

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDownY:F

    .line 161
    iput v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mLastDisplacement:F

    .line 162
    iput v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    .line 163
    iput v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDownX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementX:F

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDownY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    .line 172
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->computeVelocity(Landroid/view/MotionEvent;)F

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->shouldScrollStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->reportDragging()Z

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    .line 186
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDetectableScrollConditions(IZ)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mScrollConditions:I

    .line 133
    iput-boolean p2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mIgnoreSlopWhenSettling:Z

    .line 134
    return-void
.end method

.method public setListener(Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mListener:Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;

    .line 117
    return-void
.end method
