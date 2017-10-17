.class final Lcom/android/launcher3/LauncherModel$LoaderTask$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final synthetic val$currentScreen:I

.field final synthetic val$deferredExecutor:Ljava/util/concurrent/Executor;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;ILjava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$currentScreen:I

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$deferredExecutor:Ljava/util/concurrent/Executor;

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    .line 1610
    if-eqz v1, :cond_1

    .line 1614
    iget v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$currentScreen:I

    const/16 v2, -0x3e9

    if-eq v0, v2, :cond_0

    .line 1615
    iget v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$currentScreen:I

    invoke-interface {v1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->onPageBoundSynchronously(I)V

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$10;->val$deferredExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-interface {v1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->executeOnNextDraw(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 1619
    :cond_1
    return-void
.end method
