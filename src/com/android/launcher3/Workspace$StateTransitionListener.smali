.class Lcom/android/launcher3/Workspace$StateTransitionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .prologue
    .line 4244
    iput-object p1, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$StateTransitionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 4262
    iget-object v0, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    .line 4263
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->-get2(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_0

    .line 4255
    iget-object v0, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->-wrap2(Lcom/android/launcher3/Workspace;)V

    .line 4257
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->-set4(Lcom/android/launcher3/Workspace;F)F

    .line 4258
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 4248
    iget-object v0, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->-set4(Lcom/android/launcher3/Workspace;F)F

    .line 4249
    return-void
.end method
