.class public Lcom/android/launcher3/model/ModelWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mContext:Landroid/content/Context;

.field private final mHasVerticalHotseat:Z

.field private final mWorkerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/model/ModelWriter;JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Z)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 58
    new-instance v0, Lcom/android/launcher3/util/LooperExecuter;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecuter;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    .line 59
    iput-boolean p3, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    .line 60
    return-void
.end method

.method private checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 9

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 94
    if-eqz v0, :cond_4

    if-eq p3, v0, :cond_4

    .line 96
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_0

    instance-of v1, p3, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 97
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    move-object v2, p3

    .line 98
    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    .line 99
    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    .line 99
    if-eqz v3, :cond_0

    .line 101
    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->id:J

    iget-wide v6, v2, Lcom/android/launcher3/ShortcutInfo;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 102
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-ne v3, v4, :cond_0

    .line 103
    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->container:J

    iget-wide v6, v2, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 104
    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iget-wide v6, v2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 105
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    if-ne v3, v4, :cond_0

    .line 106
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    if-ne v3, v4, :cond_0

    .line 107
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    if-ne v3, v4, :cond_0

    .line 108
    iget v1, v1, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iget v2, v2, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    if-ne v1, v2, :cond_0

    .line 110
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "modelItem: "

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string/jumbo v1, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    if-eqz p4, :cond_1

    .line 123
    invoke-virtual {v1, p4}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 125
    :cond_1
    throw v1

    .line 117
    :cond_2
    const-string/jumbo v1, "null"

    goto :goto_0

    .line 119
    :cond_3
    const-string/jumbo v0, "null"

    goto :goto_1

    .line 127
    :cond_4
    return-void
.end method

.method private updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 2

    .prologue
    .line 64
    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 65
    iput p6, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 66
    iput p7, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 69
    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 70
    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    sub-int/2addr v0, p7

    add-int/lit8 p6, v0, -0x1

    .line 70
    :cond_0
    int-to-long v0, p6

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_1
    iput-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    goto :goto_0
.end method


# virtual methods
.method public addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 8

    .prologue
    .line 206
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 208
    new-instance v3, Lcom/android/launcher3/util/ContentWriter;

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 210
    invoke-virtual {p1, v3}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 212
    const-string/jumbo v0, "generate_new_item_id"

    invoke-static {v2, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    .line 213
    const-string/jumbo v0, "_id"

    iget-wide v4, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    .line 215
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 216
    iget-object v6, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter$1;-><init>(Lcom/android/launcher3/model/ModelWriter;Landroid/content/ContentResolver;Lcom/android/launcher3/util/ContentWriter;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 4

    .prologue
    .line 83
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    goto :goto_0
.end method

.method public deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/FolderInfo;)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/ModelWriter$3;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/FolderInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/ItemInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    .line 233
    return-void
.end method

.method public deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    .line 240
    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/ModelWriter$2;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Iterable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public modifyItemInDatabase(Lcom/android/launcher3/ItemInfo;JJIIII)V
    .locals 4

    .prologue
    .line 175
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 176
    iput p8, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 177
    iput p9, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 179
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 180
    const-string/jumbo v1, "container"

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "cellX"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "cellY"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "rank"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "spanX"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "spanY"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 186
    const-string/jumbo v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public moveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 4

    .prologue
    .line 134
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 136
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 137
    const-string/jumbo v1, "container"

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "cellX"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "cellY"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "rank"

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public moveItemsInDatabase(Ljava/util/ArrayList;JI)V
    .locals 14

    .prologue
    .line 151
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 154
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v12, :cond_0

    .line 155
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 156
    move/from16 v0, p4

    int-to-long v6, v0

    iget v8, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    move-object v2, p0

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 158
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 159
    const-string/jumbo v4, "container"

    iget-wide v6, v3, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string/jumbo v4, "cellX"

    iget v5, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string/jumbo v4, "cellY"

    iget v5, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string/jumbo v4, "rank"

    iget v5, v3, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string/jumbo v4, "screen"

    iget-wide v6, v3, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;

    invoke-direct {v3, p0, p1, v11}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {p1, v0}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 197
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method
