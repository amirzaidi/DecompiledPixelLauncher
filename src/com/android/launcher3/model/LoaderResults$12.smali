.class final Lcom/android/launcher3/model/LoaderResults$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;

.field final synthetic val$widgets:Lcom/android/launcher3/util/MultiHashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$12;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iput-object p2, p0, Lcom/android/launcher3/model/LoaderResults$12;->val$widgets:Lcom/android/launcher3/util/MultiHashMap;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults$12;->this$0:Lcom/android/launcher3/model/LoaderResults;

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderResults;->-get0(Lcom/android/launcher3/model/LoaderResults;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 387
    if-eqz v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults$12;->val$widgets:Lcom/android/launcher3/util/MultiHashMap;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAllWidgets(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 390
    :cond_0
    return-void
.end method
