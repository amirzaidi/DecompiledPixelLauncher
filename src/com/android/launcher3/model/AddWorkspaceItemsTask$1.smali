.class final Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/AddWorkspaceItemsTask;

.field final synthetic val$addedItemsFinal:Ljava/util/ArrayList;

.field final synthetic val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->this$0:Lcom/android/launcher3/model/AddWorkspaceItemsTask;

    iput-object p2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 8

    .prologue
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 118
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 120
    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    .line 121
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    .line 128
    const/4 v3, 0x0

    .line 127
    invoke-interface {p1, v0, v2, v1, v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 129
    return-void
.end method
