.class final Lcom/android/launcher3/folder/Folder$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$15;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 1267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$15;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    .line 1271
    const/16 v2, 0x1f4

    .line 1272
    const/4 v3, 0x0

    .line 1270
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 1273
    return-void
.end method
