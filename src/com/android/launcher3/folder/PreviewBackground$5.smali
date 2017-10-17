.class final Lcom/android/launcher3/folder/PreviewBackground$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;

.field final synthetic val$bgMultiplier0:F

.field final synthetic val$bgMultiplier1:F

.field final synthetic val$scale0:F

.field final synthetic val$scale1:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;FFFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale1:F

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale0:F

    iput p4, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$bgMultiplier1:F

    iput p5, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$bgMultiplier0:F

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 365
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale1:F

    mul-float/2addr v2, v0

    sub-float v3, v5, v0

    iget v4, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale0:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 367
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$bgMultiplier1:F

    mul-float/2addr v2, v0

    sub-float v0, v5, v0

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$bgMultiplier0:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/launcher3/folder/PreviewBackground;->-set0(Lcom/android/launcher3/folder/PreviewBackground;F)F

    .line 368
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 369
    return-void
.end method
