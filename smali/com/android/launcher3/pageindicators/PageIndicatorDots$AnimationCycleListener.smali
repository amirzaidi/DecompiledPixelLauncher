.class Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 1

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->mCancelled:Z

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->mCancelled:Z

    .line 328
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->mCancelled:Z

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-set0(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-get3(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-wrap1(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V

    .line 336
    :cond_0
    return-void
.end method
