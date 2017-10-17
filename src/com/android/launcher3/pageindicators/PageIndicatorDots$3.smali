.class final Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;


# direct methods
.method constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    .line 204
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-set2(Lcom/android/launcher3/pageindicators/PageIndicatorDots;[F)[F

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidateOutline()V

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 211
    return-void
.end method
