.class final Lcom/android/launcher3/util/FlingAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private mCount:I

.field private mOffset:F

.field final synthetic this$0:Lcom/android/launcher3/util/FlingAnimation;

.field final synthetic val$duration:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/FlingAnimation;JI)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/FlingAnimation$1;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    iput-wide p2, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$startTime:J

    iput p4, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$duration:I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mOffset:F

    .line 1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .prologue
    .line 84
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    if-gez v0, :cond_1

    .line 85
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    .line 91
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mOffset:F

    add-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 86
    :cond_1
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 88
    iget-wide v2, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$startTime:J

    .line 87
    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 88
    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$duration:I

    int-to-float v1, v1

    .line 87
    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mOffset:F

    .line 89
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    goto :goto_0
.end method
