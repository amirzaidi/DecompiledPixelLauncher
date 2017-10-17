.class public Lcom/android/launcher3/model/BgDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final appWidgets:Ljava/util/ArrayList;

.field public final deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

.field public final folders:Lcom/android/launcher3/util/LongArrayMap;

.field public final itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

.field public final pinnedShortcutCounts:Ljava/util/Map;

.field public final workspaceItems:Ljava/util/ArrayList;

.field public final workspaceScreens:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    .line 98
    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 59
    return-void
.end method

.method private declared-synchronized dumpProto(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .prologue
    monitor-enter p0

    .line 158
    :try_start_0
    new-instance v3, Lcom/android/launcher3/logging/DumpTargetWrapper;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(II)V

    .line 159
    new-instance v4, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v4}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 160
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 161
    new-instance v2, Ljava/lang/Long;

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 162
    new-instance v0, Lcom/android/launcher3/logging/DumpTargetWrapper;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(II)V

    .line 161
    invoke-virtual {v4, v6, v7, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 160
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 168
    new-instance v5, Lcom/android/launcher3/logging/DumpTargetWrapper;

    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v1

    const/4 v6, 0x3

    invoke-direct {v5, v6, v1}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(II)V

    .line 169
    invoke-virtual {v5, v0}, Lcom/android/launcher3/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 170
    iget-object v1, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 171
    new-instance v7, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-direct {v7, v1}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 172
    invoke-virtual {v7, v1}, Lcom/android/launcher3/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 173
    invoke-virtual {v5, v7}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_1
    :try_start_1
    iget-wide v6, v0, Lcom/android/launcher3/FolderInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    .line 176
    invoke-virtual {v3, v5}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    .line 166
    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 177
    :cond_3
    iget-wide v6, v0, Lcom/android/launcher3/FolderInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    .line 178
    new-instance v1, Ljava/lang/Long;

    iget-wide v6, v0, Lcom/android/launcher3/FolderInfo;->screenId:J

    invoke-direct {v1, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    goto :goto_3

    .line 182
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 184
    instance-of v2, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v2, :cond_6

    .line 182
    :cond_5
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 187
    :cond_6
    new-instance v2, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-direct {v2, v0}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 188
    invoke-virtual {v2, v0}, Lcom/android/launcher3/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 189
    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 190
    invoke-virtual {v3, v2}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    goto :goto_5

    .line 191
    :cond_7
    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 192
    new-instance v5, Ljava/lang/Long;

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    goto :goto_5

    .line 195
    :cond_8
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 197
    new-instance v2, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-direct {v2, v0}, Lcom/android/launcher3/logging/DumpTargetWrapper;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 198
    invoke-virtual {v2, v0}, Lcom/android/launcher3/logging/DumpTargetWrapper;->writeToDumpTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 199
    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-nez v5, :cond_a

    .line 200
    invoke-virtual {v3, v2}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    .line 195
    :cond_9
    :goto_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 201
    :cond_a
    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-nez v5, :cond_9

    .line 202
    new-instance v5, Ljava/lang/Long;

    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/logging/DumpTargetWrapper;->add(Lcom/android/launcher3/logging/DumpTargetWrapper;)V

    goto :goto_7

    .line 208
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-virtual {v3}, Lcom/android/launcher3/logging/DumpTargetWrapper;->getFlattenedList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {v4}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 211
    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/DumpTargetWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/DumpTargetWrapper;->getFlattenedList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 214
    :cond_c
    array-length v0, p4

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    aget-object v0, p4, v0

    const-string/jumbo v1, "--debug"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 215
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-static {v0}, Lcom/android/launcher3/logging/DumpTargetWrapper;->getDumpTargetStr(Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_d
    monitor-exit p0

    .line 218
    return-void

    .line 220
    :cond_e
    :try_start_2
    new-instance v3, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;

    invoke-direct {v3}, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;-><init>()V

    .line 221
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    iput-object v0, v3, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 222
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 223
    iget-object v4, v3, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    aput-object v0, v4, v1

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 225
    :cond_f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :try_start_3
    invoke-static {v3}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 229
    const-string/jumbo v0, "BgDataModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_b
    monitor-exit p0

    .line 234
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :try_start_4
    const-string/jumbo v1, "BgDataModel"

    const-string/jumbo v2, "Exception writing dumpsys --proto"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b
.end method


# virtual methods
.method public declared-synchronized addItem(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5, p2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 284
    iget v2, p2, Lcom/android/launcher3/ItemInfo;->itemType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    .line 330
    return-void

    .line 286
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->id:J

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    move-object v2, v0

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 287
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 291
    :pswitch_2
    :try_start_2
    invoke-static {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v3

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    .line 293
    if-nez v2, :cond_3

    .line 294
    new-instance v2, Landroid/util/MutableInt;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/util/MutableInt;-><init>(I)V

    .line 295
    iget-object v4, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :goto_1
    if-eqz p3, :cond_1

    iget v2, v2, Landroid/util/MutableInt;->value:I

    if-ne v2, v6, :cond_1

    .line 302
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->pinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    .line 308
    :cond_1
    :pswitch_3
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 309
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_3
    iget v4, v2, Landroid/util/MutableInt;->value:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/util/MutableInt;->value:I

    goto :goto_1

    .line 312
    :cond_4
    if-eqz p3, :cond_5

    .line 313
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adding item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to a folder that "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 316
    const-string/jumbo v3, " doesn\'t exist"

    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    const-string/jumbo v3, "BgDataModel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :cond_5
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(J)Lcom/android/launcher3/FolderInfo;

    move-result-object v2

    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    goto/16 :goto_0

    .line 327
    :pswitch_4
    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 111
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 115
    :try_start_0
    array-length v0, p4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string/jumbo v2, "--proto"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/BgDataModel;->dumpProto(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 117
    return-void

    .line 119
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Data Model:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ---- workspace screens: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v1

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ---- workspace items "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 126
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ---- appwidget items "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 130
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 133
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ---- folder items "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 134
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 137
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ---- items id map "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 142
    :cond_5
    array-length v0, p4

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string/jumbo v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 149
    :cond_6
    :try_start_2
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :cond_7
    monitor-exit p0

    .line 152
    return-void
.end method

.method public declared-synchronized findOrMakeFolder(J)Lcom/android/launcher3/FolderInfo;
    .locals 3

    .prologue
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 339
    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 342
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 344
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    .locals 6

    .prologue
    monitor-enter p0

    .line 241
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 242
    iget v1, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 278
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 244
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 256
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :pswitch_2
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v3

    .line 261
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableInt;

    .line 262
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/util/MutableInt;->value:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Landroid/util/MutableInt;->value:I

    if-nez v4, :cond_1

    .line 263
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/InstallShortcutReceiver;->getPendingShortcuts(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 262
    if-eqz v1, :cond_1

    .line 265
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    .line 271
    :cond_1
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    .line 280
    return-void

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public varargs declared-synchronized removeItem(Landroid/content/Context;[Lcom/android/launcher3/ItemInfo;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 237
    :try_start_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 238
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateDeepShortcutMap(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 5

    .prologue
    monitor-enter p0

    .line 352
    if-eqz p1, :cond_1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 354
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 356
    iget-object v2, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 356
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 364
    :cond_1
    :try_start_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 365
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 366
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isDynamic()Z

    move-result v1

    .line 367
    :goto_2
    if-eqz v1, :cond_2

    .line 369
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 370
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 366
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 365
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    monitor-exit p0

    .line 373
    return-void
.end method
