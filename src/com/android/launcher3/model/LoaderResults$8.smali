.class final Lcom/android/launcher3/model/LoaderResults$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;

.field final synthetic val$chunkSize:I

.field final synthetic val$start:I

.field final synthetic val$workspaceItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$8;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$workspaceItems:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$start:I

    iput p4, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$chunkSize:I

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults$8;->this$0:Lcom/android/launcher3/model/LoaderResults;

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderResults;->-get0(Lcom/android/launcher3/model/LoaderResults;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 324
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$workspaceItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$start:I

    iget v3, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$start:I

    iget v4, p0, Lcom/android/launcher3/model/LoaderResults$8;->val$chunkSize:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 327
    :cond_0
    return-void
.end method
