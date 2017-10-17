.class final Lcom/android/launcher3/LauncherModel$LoaderTask$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$7;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$7;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$7;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$7;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 1541
    if-eqz v0, :cond_0

    .line 1542
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->clearPendingBinds()V

    .line 1543
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->startBinding()V

    .line 1545
    :cond_0
    return-void
.end method
