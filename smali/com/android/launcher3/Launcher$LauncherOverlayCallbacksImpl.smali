.class Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(F)V
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 1155
    :cond_0
    return-void
.end method
