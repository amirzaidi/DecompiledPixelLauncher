.class final Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->val$index:I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-get2(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)[F

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 197
    return-void
.end method
