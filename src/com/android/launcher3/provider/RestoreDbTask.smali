.class public Lcom/android/launcher3/provider/RestoreDbTask;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPending(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 135
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "restore_task_pending"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static performRestore(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Z
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 52
    :try_start_0
    new-instance v0, Lcom/android/launcher3/provider/RestoreDbTask;

    invoke-direct {v0}, Lcom/android/launcher3/provider/RestoreDbTask;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/provider/RestoreDbTask;->sanitizeDB(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const/4 v0, 0x1

    .line 59
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    :try_start_1
    const-string/jumbo v2, "RestoreDbTask"

    const-string/jumbo v3, "Failed to verify db"

    invoke-static {v2, v3, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const/4 v0, 0x0

    .line 59
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 57
    return v0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 58
    throw v0
.end method

.method private sanitizeDB(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v1, 0x8

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/launcher3/provider/RestoreDbTask;->getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v4

    .line 76
    const-string/jumbo v0, "favorites"

    const-string/jumbo v3, "profileId != ?"

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 75
    invoke-virtual {p2, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 77
    if-lez v0, :cond_0

    .line 78
    const-string/jumbo v3, "RestoreDbTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " items belonging to a managed profile, were deleted"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    const-string/jumbo v0, "KeepAllIcons"

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 83
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 84
    const-string/jumbo v7, "restored"

    .line 85
    if-eqz v3, :cond_2

    move v0, v1

    .line 84
    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string/jumbo v0, "favorites"

    invoke-virtual {p2, v0, v6, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    const-string/jumbo v0, "restored"

    .line 92
    if-eqz v3, :cond_3

    .line 89
    :goto_1
    or-int/lit8 v1, v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string/jumbo v0, "favorites"

    const-string/jumbo v1, "itemType = ?"

    .line 94
    new-array v3, v8, [Ljava/lang/String;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 93
    invoke-virtual {p2, v0, v6, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v0

    .line 97
    invoke-static {v4, v5, v0, v1}, Lcom/android/launcher3/Utilities;->longCompare(JJ)I

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const-string/jumbo v2, "RestoreDbTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Changing primary user id from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/launcher3/provider/RestoreDbTask;->migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 101
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 85
    goto :goto_0

    :cond_3
    move v1, v2

    .line 92
    goto :goto_1
.end method

.method public static setPending(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 139
    const-string/jumbo v0, "RestoreDbTask"

    const-string/jumbo v1, "Restore data received through full backup"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "restore_task_pending"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void
.end method


# virtual methods
.method protected getDefaultProfileId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 123
    :try_start_0
    const-string/jumbo v0, "PRAGMA table_info (favorites)"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 124
    :try_start_1
    const-string/jumbo v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 125
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    const-string/jumbo v3, "profileId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const-string/jumbo v0, "dflt_value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v4

    .line 131
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .line 127
    :cond_2
    return-wide v4

    .line 130
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v3, "Table does not have a profile id column"

    invoke-direct {v0, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 131
    :catch_1
    move-exception v0

    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_4

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_6

    throw v2

    :catch_2
    move-exception v1

    if-nez v2, :cond_5

    move-object v2, v1

    goto :goto_3

    :cond_5
    if-eq v2, v1, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method protected migrateProfileId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    const-string/jumbo v1, "profileId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string/jumbo v1, "favorites"

    invoke-virtual {p1, v1, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    const-string/jumbo v0, "ALTER TABLE favorites RENAME TO favorites_old;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 115
    const-string/jumbo v0, "INSERT INTO favorites SELECT * FROM favorites_old;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "DROP TABLE favorites_old;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    return-void
.end method
