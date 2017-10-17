.class final Lcom/android/launcher3/LauncherModel$LoaderTask$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final synthetic val$apps:Ljava/util/List;

.field final synthetic val$heuristic:Lcom/android/launcher3/util/ManagedProfileHeuristic;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/util/ManagedProfileHeuristic;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->val$heuristic:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->val$apps:Ljava/util/List;

    .line 1712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->val$heuristic:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$12;->val$apps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processUserApps(Ljava/util/List;)V

    .line 1717
    return-void
.end method
