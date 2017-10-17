.class public abstract Lcom/android/launcher3/model/ExtendedModelTask;
.super Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/android/launcher3/model/ExtendedModelTask$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/ExtendedModelTask$2;-><init>(Lcom/android/launcher3/model/ExtendedModelTask;Lcom/android/launcher3/util/MultiHashMap;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/ExtendedModelTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 61
    return-void
.end method

.method public bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/model/ExtendedModelTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 37
    return-void
.end method

.method public bindUpdatedShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    new-instance v0, Lcom/android/launcher3/model/ExtendedModelTask$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/model/ExtendedModelTask$1;-><init>(Lcom/android/launcher3/model/ExtendedModelTask;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ExtendedModelTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 51
    :cond_1
    return-void
.end method
