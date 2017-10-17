.class final Lcom/android/launcher3/PinchAnimationManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/PinchAnimationManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/PinchAnimationManager;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PinchAnimationManager$3;->this$0:Lcom/android/launcher3/PinchAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/PinchAnimationManager$3;->val$view:Landroid/view/View;

    .line 217
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PinchAnimationManager$3;->mCancelled:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PinchAnimationManager$3;->mCancelled:Z

    .line 223
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/launcher3/PinchAnimationManager$3;->mCancelled:Z

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager$3;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_0
    return-void
.end method
