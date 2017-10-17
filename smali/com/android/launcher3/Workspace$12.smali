.class final Lcom/android/launcher3/Workspace$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$12;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$12;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$12;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 3516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3519
    iget-object v0, p0, Lcom/android/launcher3/Workspace$12;->val$finalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3520
    iget-object v0, p0, Lcom/android/launcher3/Workspace$12;->val$finalView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3522
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace$12;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3523
    iget-object v0, p0, Lcom/android/launcher3/Workspace$12;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3525
    :cond_1
    return-void
.end method
