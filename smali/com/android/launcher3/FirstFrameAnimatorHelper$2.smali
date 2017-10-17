.class final Lcom/android/launcher3/FirstFrameAnimatorHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

.field final synthetic val$animation:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$2;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    iput-object p2, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$2;->val$animation:Landroid/animation/ValueAnimator;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$2;->val$animation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$2;->this$0:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    return-void
.end method
