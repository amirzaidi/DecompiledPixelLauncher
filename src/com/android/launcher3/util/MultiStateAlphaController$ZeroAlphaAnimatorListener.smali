.class Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mStartedAtZero:Z

.field final synthetic this$0:Lcom/android/launcher3/util/MultiStateAlphaController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/util/MultiStateAlphaController;)V
    .locals 1

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->this$0:Lcom/android/launcher3/util/MultiStateAlphaController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->mStartedAtZero:Z

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/MultiStateAlphaController;Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;-><init>(Lcom/android/launcher3/util/MultiStateAlphaController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->mStartedAtZero:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->this$0:Lcom/android/launcher3/util/MultiStateAlphaController;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiStateAlphaController;->-get1(Lcom/android/launcher3/util/MultiStateAlphaController;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiStateAlphaController;->-set0(Lcom/android/launcher3/util/MultiStateAlphaController;I)I

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->this$0:Lcom/android/launcher3/util/MultiStateAlphaController;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiStateAlphaController;->-wrap0(Lcom/android/launcher3/util/MultiStateAlphaController;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 104
    iget-object v1, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->this$0:Lcom/android/launcher3/util/MultiStateAlphaController;

    invoke-static {v1}, Lcom/android/launcher3/util/MultiStateAlphaController;->-get0(Lcom/android/launcher3/util/MultiStateAlphaController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->mStartedAtZero:Z

    .line 105
    iget-boolean v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->mStartedAtZero:Z

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->this$0:Lcom/android/launcher3/util/MultiStateAlphaController;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiStateAlphaController;->-get1(Lcom/android/launcher3/util/MultiStateAlphaController;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiStateAlphaController;->-set0(Lcom/android/launcher3/util/MultiStateAlphaController;I)I

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;->this$0:Lcom/android/launcher3/util/MultiStateAlphaController;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiStateAlphaController;->-get0(Lcom/android/launcher3/util/MultiStateAlphaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 109
    :cond_1
    return-void
.end method
