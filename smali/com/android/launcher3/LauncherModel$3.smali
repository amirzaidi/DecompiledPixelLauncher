.class final Lcom/android/launcher3/LauncherModel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$screensCopy:Ljava/util/ArrayList;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$3;->val$screensCopy:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3;->val$uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3;->val$screensCopy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 353
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 354
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3;->val$screensCopy:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 356
    const-string/jumbo v0, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    const-string/jumbo v0, "screenRank"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3;->val$uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 362
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 368
    :try_start_1
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$3;->val$screensCopy:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 371
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
