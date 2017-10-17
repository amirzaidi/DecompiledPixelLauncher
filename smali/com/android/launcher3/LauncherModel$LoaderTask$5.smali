.class final Lcom/android/launcher3/LauncherModel$LoaderTask$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final synthetic val$chunkSize:I

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field final synthetic val$start:I

.field final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$workspaceItems:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$start:I

    iput p5, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$chunkSize:I

    .line 1454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 1458
    if-eqz v0, :cond_0

    .line 1459
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$start:I

    iget v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$start:I

    iget v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;->val$chunkSize:I

    add-int/2addr v3, v4

    .line 1460
    const/4 v4, 0x0

    .line 1459
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 1462
    :cond_0
    return-void
.end method
