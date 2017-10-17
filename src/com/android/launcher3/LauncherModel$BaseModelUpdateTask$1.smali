.class final Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;

.field final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field final synthetic val$task:Lcom/android/launcher3/LauncherModel$CallbackTask;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;->this$1:Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;->val$task:Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 1872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;->this$1:Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->-get0(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 1875
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;->val$task:Lcom/android/launcher3/LauncherModel$CallbackTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 1878
    :cond_0
    return-void
.end method
