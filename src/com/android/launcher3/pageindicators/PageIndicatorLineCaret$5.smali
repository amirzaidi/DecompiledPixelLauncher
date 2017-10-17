.class final Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;

.field final synthetic val$animatorIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$5;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;

    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$5;->val$animatorIndex:I

    .line 280
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$5;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->-get0(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)[Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$5;->val$animatorIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 284
    return-void
.end method
