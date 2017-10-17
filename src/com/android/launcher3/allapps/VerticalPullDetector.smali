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

.field private mListener:Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;

.field private mScrollConditions:I

.field private mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

.field private mSubtractDisplacement:F

.field private final mTouchSlop:F

.field private mVelocity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->IDLE:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    iput-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    .line 126
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mTouchSlop:F

    .line 127
    return-void
.end method

.method private static computeDampeningFactor(F)F
    .locals 1

    .prologue
    .line 268
    const v0, 0x417ea5dd

    add-float/2addr v0, p0

    div-float v0, p0, v0

    return v0
.end method

.method private computeVelocity(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    .line 246
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

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    .line 211
    iput v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    .line 213
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 214
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mTouchSlop:F

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_1
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mTouchSlop:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    goto :goto_0
.end method

.method private static interpolate(FFF)F
    .locals 2

    .prologue
    .line 275
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
    .line 238
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

    .line 240
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportDragStart(Z)Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mListener:Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;->onDragStart(Z)V

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method private reportDragging()Z
    .locals 3

    .prologue
    .line 221
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mLastDisplacement:F

    sub-float/2addr v0, v1

    .line 222
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mListener:Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    iget v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mSubtractDisplacement:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;->onDrag(FF)Z

    move-result v0

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne p1, v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->initializeDragging()V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->IDLE:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_2

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->reportDragStart(Z)Z

    .line 70
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne p1, v0, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->reportDragEnd()V

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    .line 75
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->reportDragStart(Z)Z

    goto :goto_0
.end method

.method private shouldScrollStart()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 136
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 137
    return v3

    .line 141
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 142
    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 143
    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 144
    return v3

    .line 147
    :cond_1
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mScrollConditions:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 149
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_3
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mScrollConditions:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_2

    .line 151
    :cond_4
    return v3
.end method


# virtual methods
.method public calculateDuration(FF)J
    .locals 4

    .prologue
    .line 280
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 281
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 282
    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x44960000    # 1200.0f

    div-float v0, v3, v0

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v0, v0

    .line 286
    return-wide v0
.end method

.method public computeVelocity(FJ)F
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-wide v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mCurrentMillis:J

    .line 251
    iput-wide p2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mCurrentMillis:J

    .line 253
    iget-wide v4, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mCurrentMillis:J

    sub-long v2, v4, v2

    long-to-float v1, v2

    .line 254
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    div-float v0, p1, v1

    .line 255
    :cond_0
    iget v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 256
    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    .line 261
    :goto_0
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    return v0

    .line 258
    :cond_1
    invoke-static {v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->computeDampeningFactor(F)F

    move-result v1

    .line 259
    iget v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    goto :goto_0
.end method

.method public finishedScrolling()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->IDLE:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V

    .line 199
    return-void
.end method

.method public isDraggingOrSettling()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 78
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
    .line 93
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
    .line 85
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
    .line 89
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

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mLastDisplacement:F

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mLastY:F

    .line 194
    const/4 v0, 0x1

    return v0

    .line 157
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDownX:F

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDownY:F

    .line 159
    iput v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mLastDisplacement:F

    .line 160
    iput v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    .line 161
    iput v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mVelocity:F

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDownX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementX:F

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDownY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mDisplacementY:F

    .line 170
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->computeVelocity(Landroid/view/MotionEvent;)F

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->shouldScrollStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->reportDragging()Z

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mState:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    if-ne v0, v1, :cond_0

    .line 184
    sget-object v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;->SETTLING:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setState(Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollState;)V

    goto :goto_0

    .line 155
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
    .line 130
    iput p1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mScrollConditions:I

    .line 131
    iput-boolean p2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mIgnoreSlopWhenSettling:Z

    .line 132
    return-void
.end method

.method public setListener(Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/launcher3/allapps/VerticalPullDetector;->mListener:Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;

    .line 115
    return-void
.end method
