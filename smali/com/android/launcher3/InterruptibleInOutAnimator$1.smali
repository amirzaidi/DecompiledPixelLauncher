.class final Lcom/android/launcher3/InterruptibleInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/InterruptibleInOutAnimator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 56
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher3/InterruptibleInOutAnimator$1;->this$0:Lcom/android/launcher3/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 60
    return-void
.end method
