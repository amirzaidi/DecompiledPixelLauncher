.class final Lcom/android/launcher3/Launcher$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    .line 1800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->moveToDefaultScreen(Z)V

    .line 1806
    :cond_0
    return-void
.end method
