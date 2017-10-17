.class public Lcom/google/android/apps/nexuslauncher/reflection/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final L:Lcom/google/android/apps/nexuslauncher/reflection/c/a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/c/a;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->L:Lcom/google/android/apps/nexuslauncher/reflection/c/a;

    .line 62
    return-void
.end method


# virtual methods
.method public declared-synchronized V(J)V
    .locals 7

    .prologue
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 117
    const-wide v0, 0xb43e9400L

    sub-long v0, p1, v0

    .line 118
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->L:Lcom/google/android/apps/nexuslauncher/reflection/c/a;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/reflection/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 119
    const-string/jumbo v3, "reflection_event"

    const-string/jumbo v4, "timestamp <= ?"

    .line 120
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 119
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 121
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized W(Lcom/google/research/reflection/a/b;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 65
    :try_start_0
    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->getInstance()Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->Z(Lcom/google/android/apps/nexuslauncher/reflection/d/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 66
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized X(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12

    .prologue
    const/4 v9, 0x0

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->L:Lcom/google/android/apps/nexuslauncher/reflection/c/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 145
    :try_start_1
    const-string/jumbo v1, "reflection_event"

    .line 146
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "id"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 147
    const-string/jumbo v3, "id like ?"

    .line 148
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 149
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 144
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v3

    .line 151
    :try_start_2
    const-string/jumbo v1, "UPDATE reflection_event SET id = ? WHERE _id = ?"

    .line 150
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v2

    .line 153
    :try_start_3
    const-string/jumbo v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 154
    const-string/jumbo v1, "id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 156
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 158
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 160
    invoke-interface {p3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, "_"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-interface {p3, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v2, v8, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 166
    const/4 v1, 0x2

    invoke-virtual {v2, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 167
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    move-object v9, v3

    :goto_1
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move-object v11, v3

    move-object v3, v9

    move-object v9, v1

    move-object v1, v11

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    move-object v4, v9

    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    move-object v2, v4

    :cond_4
    :goto_4
    if-eqz v2, :cond_9

    :try_start_7
    throw v2
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 170
    :catch_1
    move-exception v1

    .line 171
    :try_start_8
    const-string/jumbo v2, "Reflection.EvtDbLogger"

    const-string/jumbo v3, "Error renaming EventIds"

    invoke-static {v2, v3, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 173
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_5
    monitor-exit p0

    .line 175
    return-void

    .line 169
    :cond_5
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 174
    if-eqz v2, :cond_6

    :try_start_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_6
    move-object v2, v9

    :goto_6
    if-eqz v3, :cond_7

    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_7
    move-object v1, v2

    :cond_8
    :goto_7
    if-eqz v1, :cond_a

    :try_start_d
    throw v1
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 172
    :catchall_1
    move-exception v1

    .line 173
    :try_start_e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :catch_2
    move-exception v2

    goto :goto_6

    :catch_3
    move-exception v1

    if-eqz v2, :cond_8

    if-eq v2, v1, :cond_7

    :try_start_f
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_7

    :catch_4
    move-exception v4

    if-eqz v9, :cond_2

    if-eq v9, v4, :cond_1

    invoke-virtual {v9, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v4, v9

    goto :goto_3

    :catch_5
    move-exception v2

    if-eqz v4, :cond_4

    if-eq v4, v2, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v2, v4

    goto :goto_4

    :cond_9
    throw v1
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 173
    :cond_a
    :try_start_10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_5

    .line 174
    :catchall_3
    move-exception v1

    move-object v2, v9

    move-object v3, v9

    goto :goto_2

    :catchall_4
    move-exception v1

    move-object v2, v9

    goto :goto_2

    :catchall_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    move-object v2, v9

    goto :goto_1

    :catch_7
    move-exception v1

    move-object v2, v9

    move-object v9, v3

    goto :goto_1
.end method

.method public declared-synchronized Y(JI)Lcom/google/android/apps/nexuslauncher/reflection/c/d;
    .locals 15

    .prologue
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->L:Lcom/google/android/apps/nexuslauncher/reflection/c/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    const-wide/16 v12, -0x1

    .line 182
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 183
    :try_start_1
    const-string/jumbo v1, "reflection_event"

    .line 184
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s > ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 185
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 187
    const-string/jumbo v7, "_id ASC"

    .line 188
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 183
    const/4 v2, 0x0

    .line 186
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 183
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 190
    :try_start_2
    const-string/jumbo v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 191
    const-string/jumbo v0, "proto"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 192
    const-string/jumbo v0, "id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 193
    const-string/jumbo v0, "latLong"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 194
    const-string/jumbo v0, "semanticPlace"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-wide v0, v12

    .line 196
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v8

    if-eqz v8, :cond_2

    .line 201
    :try_start_3
    new-instance v8, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ae([B)Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/e;)V

    .line 205
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->H(Ljava/lang/String;)Lcom/google/research/reflection/a/b;

    .line 206
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 208
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->ag([B)Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    move-result-object v9

    .line 209
    new-instance v12, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {v12, v9}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/i;)V

    invoke-static {v8, v12}, Lcom/google/research/reflection/common/b;->Ta(Lcom/google/research/reflection/a/b;Lcom/google/research/reflection/a/a;)V

    .line 211
    :cond_0
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 213
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->ag([B)Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    move-result-object v9

    .line 214
    new-instance v12, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {v12, v9}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/i;)V

    invoke-static {v8, v12}, Lcom/google/research/reflection/common/b;->Ta(Lcom/google/research/reflection/a/b;Lcom/google/research/reflection/a/a;)V

    .line 216
    :cond_1
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide v0

    goto :goto_0

    .line 222
    :cond_2
    if-eqz v2, :cond_3

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    if-eqz v10, :cond_7

    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v10

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v9

    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v14

    :goto_3
    if-eqz v2, :cond_4

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    :try_start_8
    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_4

    :cond_5
    if-eq v1, v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    throw v0

    .line 223
    :cond_7
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/c/d;

    invoke-direct {v2, v0, v1, v11}, Lcom/google/android/apps/nexuslauncher/reflection/c/d;-><init>(JLjava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v2

    .line 222
    :catchall_2
    move-exception v0

    move-object v2, v9

    move-object v1, v10

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v10

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 218
    :catch_4
    move-exception v8

    goto/16 :goto_0
.end method

.method public declared-synchronized Z(Lcom/google/android/apps/nexuslauncher/reflection/d/e;)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    invoke-static {p1}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ae([B)Lcom/google/android/apps/nexuslauncher/reflection/d/e;
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 83
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c/c;->L:Lcom/google/android/apps/nexuslauncher/reflection/c/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 84
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 85
    const-string/jumbo v0, "timestamp"

    iget-wide v4, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ah:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string/jumbo v0, "client"

    iget-object v4, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->an:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "type"

    iget-object v4, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ap:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "id"

    iget-object v4, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v4, "eventSource"

    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v6, :cond_0

    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->ao:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->am:Ljava/lang/String;

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v5, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    const/4 v0, 0x0

    array-length v6, v5

    :goto_1
    if-ge v0, v6, :cond_3

    aget-object v7, v5, v0

    .line 96
    iget-object v8, v7, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aC:Ljava/lang/String;

    const-string/jumbo v9, "lat_long"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 97
    const-string/jumbo v8, "latLong"

    .line 98
    invoke-static {v7}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v7

    .line 97
    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    monitor-exit p0

    .line 80
    return-void

    .line 90
    :cond_0
    :try_start_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 99
    :cond_1
    iget-object v8, v7, Lcom/google/android/apps/nexuslauncher/reflection/d/i;->aC:Ljava/lang/String;

    const-string/jumbo v9, "semantic_place"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 100
    const-string/jumbo v8, "semanticPlace"

    .line 101
    invoke-static {v7}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v7

    .line 100
    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_2
    :try_start_4
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->au:[Lcom/google/android/apps/nexuslauncher/reflection/d/i;

    .line 108
    const-string/jumbo v0, "proto"

    invoke-static {v1}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 109
    const-string/jumbo v0, "reflection_event"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 110
    return-void
.end method
