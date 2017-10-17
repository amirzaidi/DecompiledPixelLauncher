.class public Lcom/android/launcher3/provider/LauncherDbUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenIdsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :try_start_0
    const-string/jumbo v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 110
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :try_start_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    :try_start_2
    const-string/jumbo v3, "LauncherDbUtils"

    const-string/jumbo v4, "Invalid screen id"

    invoke-static {v3, v4, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 117
    throw v0

    .line 118
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 120
    return-object v1
.end method

.method public static prepareScreenZeroToHostQsb(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 50
    :try_start_0
    const-string/jumbo v1, "workspaceScreens"

    .line 51
    const-string/jumbo v7, "screenRank"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 50
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->getScreenIdsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 55
    return v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 59
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 61
    const-wide/16 v0, 0x1

    .line 62
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 63
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5, v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->renameScreen(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 67
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/launcher3/provider/LauncherDbUtils;->renameScreen(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :cond_3
    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_2
    const-string/jumbo v1, "favorites"

    .line 72
    const-string/jumbo v3, "container = -100 and screen = 0 and cellY = 0"

    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 71
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 73
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v0

    if-nez v0, :cond_6

    .line 77
    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_1
    if-eqz v9, :cond_5

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :try_start_6
    const-string/jumbo v1, "LauncherDbUtils"

    const-string/jumbo v2, "Failed to update workspace size"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 85
    return v0

    .line 77
    :catch_1
    move-exception v9

    goto :goto_1

    .line 75
    :cond_5
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 75
    return v0

    .line 77
    :cond_6
    if-eqz v1, :cond_7

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_7
    :goto_2
    if-eqz v9, :cond_b

    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    throw v0

    .line 77
    :catch_2
    move-exception v9

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v8

    :goto_3
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v2

    :goto_4
    if-eqz v8, :cond_8

    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_8
    :goto_5
    if-eqz v1, :cond_a

    :try_start_b
    throw v1

    :catch_4
    move-exception v2

    if-nez v1, :cond_9

    move-object v1, v2

    goto :goto_5

    :cond_9
    if-eq v1, v2, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    throw v0

    .line 79
    :cond_b
    new-instance v0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/provider/LossyScreenMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->migrateScreen0()V

    .line 81
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 82
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    return v0

    .line 77
    :catchall_2
    move-exception v0

    move-object v1, v9

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v1

    move-object v1, v9

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method private static renameScreen(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 5

    .prologue
    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 94
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 95
    const-string/jumbo v2, "_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string/jumbo v2, "workspaceScreens"

    const-string/jumbo v3, "_id = ?"

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 99
    const-string/jumbo v2, "screen"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string/jumbo v2, "favorites"

    const-string/jumbo v3, "container = -100 and screen = ?"

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    return-void
.end method
