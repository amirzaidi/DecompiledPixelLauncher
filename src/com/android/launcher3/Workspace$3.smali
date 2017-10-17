.class final Lcom/android/launcher3/Workspace$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    .line 933
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/launcher3/Workspace$3;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/android/launcher3/Workspace$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 942
    :cond_1
    return-void
.end method
