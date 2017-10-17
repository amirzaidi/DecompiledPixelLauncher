.class final Lcom/android/launcher3/LauncherModel$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field final synthetic val$widgets:Lcom/android/launcher3/util/MultiHashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$8;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$8;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$8;->val$widgets:Lcom/android/launcher3/util/MultiHashMap;

    .line 1917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$8;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 1921
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$8;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$8;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$8;->val$widgets:Lcom/android/launcher3/util/MultiHashMap;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAllWidgets(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 1924
    :cond_0
    return-void
.end method
