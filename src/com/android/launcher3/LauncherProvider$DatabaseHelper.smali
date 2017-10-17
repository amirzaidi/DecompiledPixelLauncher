.class public Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMaxItemId:J

.field private mMaxScreenId:J

.field private final mWidgetHostResetHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 584
    const-string/jumbo v0, "launcher.db"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 588
    const-string/jumbo v0, "favorites"

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "workspaceScreens"

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->tableExists(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    const-string/jumbo v0, "LauncherProvider"

    const-string/jumbo v1, "Tables are missing after onCreate has been called. Trying to recreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 592
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 595
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initIds()V

    .line 596
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 603
    new-instance v0, Lcom/android/launcher3/util/NoLocaleSqliteContext;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/NoLocaleSqliteContext;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/16 v2, 0x1b

    invoke-direct {p0, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 580
    iput-wide v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 581
    iput-wide v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 604
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 605
    iput-object p2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mWidgetHostResetHandler:Landroid/os/Handler;

    .line 606
    return-void
.end method

.method private addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 672
    return-void
.end method

.method private addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 3

    .prologue
    .line 1081
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1083
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ALTER TABLE favorites ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1084
    const-string/jumbo v1, " INTEGER NOT NULL DEFAULT "

    .line 1083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1084
    const-string/jumbo v1, ";"

    .line 1083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1092
    const/4 v0, 0x1

    return v0

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    :try_start_1
    const-string/jumbo v1, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1088
    const/4 v0, 0x0

    .line 1090
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1088
    return v0

    .line 1089
    :catchall_0
    move-exception v0

    .line 1090
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1089
    throw v0
.end method

.method private addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    .prologue
    .line 1077
    const-string/jumbo v0, "profileId"

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method private addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3

    .prologue
    .line 675
    if-eqz p2, :cond_0

    const-string/jumbo v0, " IF NOT EXISTS "

    .line 676
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "workspaceScreens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 677
    const-string/jumbo v1, "_id"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 677
    const-string/jumbo v1, " INTEGER PRIMARY KEY,"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 678
    const-string/jumbo v1, "screenRank"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 678
    const-string/jumbo v1, " INTEGER,"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 679
    const-string/jumbo v1, "modified"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 679
    const-string/jumbo v1, " INTEGER NOT NULL DEFAULT 0"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 680
    const-string/jumbo v1, ");"

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 681
    return-void

    .line 675
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2

    .prologue
    .line 1128
    const-string/jumbo v0, "favorites"

    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2

    .prologue
    .line 1145
    const-string/jumbo v0, "workspaceScreens"

    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherProvider;->getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 687
    const-string/jumbo v0, "DELETE FROM favorites WHERE screen NOT IN (SELECT _id FROM workspaceScreens) AND container = -100"

    .line 694
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 699
    const-string/jumbo v0, "DELETE FROM favorites WHERE container <> -100 AND container <> -101 AND container NOT IN (SELECT _id FROM favorites WHERE itemType = 2)"

    .line 711
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method private tableExists(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 620
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 621
    const-string/jumbo v2, "sqlite_master"

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "tbl_name"

    aput-object v4, v3, v11

    .line 622
    const-string/jumbo v4, "tbl_name = ?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v11

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    .line 620
    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 625
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 627
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 625
    return v1

    :cond_0
    move v1, v11

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v1

    .line 627
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 626
    throw v1
.end method


# virtual methods
.method public checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 1119
    const-string/jumbo v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1120
    const-string/jumbo v2, "workspaceScreens"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1121
    iget-wide v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 1125
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-wide v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    goto :goto_0
.end method

.method convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 945
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 951
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDefaultUserSerial()J

    move-result-wide v4

    .line 952
    const-string/jumbo v1, "favorites"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 953
    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 954
    const-string/jumbo v0, "intent"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "itemType=1 AND profileId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 956
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 952
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 958
    :try_start_1
    const-string/jumbo v0, "UPDATE favorites SET itemType=0 WHERE _id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 961
    :try_start_2
    const-string/jumbo v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 962
    const-string/jumbo v3, "intent"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 964
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 965
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 968
    const/4 v5, 0x0

    :try_start_3
    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 974
    :try_start_4
    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 978
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 979
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 980
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 983
    :catch_0
    move-exception v0

    move-object v8, v2

    .line 984
    :goto_1
    :try_start_5
    const-string/jumbo v2, "LauncherProvider"

    const-string/jumbo v3, "Error deduping shortcuts"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 986
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 987
    if-eqz v8, :cond_1

    .line 988
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_1
    if-eqz v1, :cond_2

    .line 991
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 994
    :cond_2
    :goto_2
    return-void

    .line 969
    :catch_1
    move-exception v4

    .line 970
    :try_start_6
    const-string/jumbo v5, "LauncherProvider"

    const-string/jumbo v6, "Unable to parse intent"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v0

    .line 986
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 987
    if-eqz v2, :cond_3

    .line 988
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_3
    if-eqz v1, :cond_4

    .line 991
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 985
    :cond_4
    throw v0

    .line 982
    :cond_5
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 986
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 987
    if-eqz v2, :cond_6

    .line 988
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_6
    if-eqz v1, :cond_2

    .line 991
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_2

    .line 985
    :catchall_1
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v8

    goto :goto_3

    .line 983
    :catch_2
    move-exception v0

    move-object v1, v8

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v8

    move-object v8, v2

    goto :goto_1
.end method

.method public createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 890
    :try_start_0
    const-string/jumbo v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 891
    const-string/jumbo v0, "DROP TABLE IF EXISTS workspaceScreens"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 893
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 897
    return-void

    .line 894
    :catchall_0
    move-exception v0

    .line 895
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 894
    throw v0
.end method

.method public generateNewItemId()J
    .locals 4

    .prologue
    .line 1102
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error: max item id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1105
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1106
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    return-wide v0
.end method

.method public generateNewScreenId()J
    .locals 4

    .prologue
    .line 1137
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error: max screen id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 1141
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    return-wide v0
.end method

.method public getDefaultUserSerial()J
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 667
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 666
    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected initIds()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 611
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 614
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 615
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 617
    :cond_1
    return-void
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 1115
    const-string/jumbo v0, "favorites"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I
    .locals 10

    .prologue
    .line 1149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    invoke-virtual {p2, p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v2

    .line 1154
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1155
    const/4 v0, 0x0

    .line 1156
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1157
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1158
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1159
    const-string/jumbo v5, "_id"

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1160
    const-string/jumbo v0, "screenRank"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1161
    const-string/jumbo v0, "workspaceScreens"

    const/4 v5, 0x0

    invoke-static {p0, p1, v0, v5, v3}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Failed initialize screen tablefrom default layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1169
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 1170
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxScreenId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 1172
    return v2
.end method

.method public newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 3

    .prologue
    .line 1110
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 636
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 638
    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 639
    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 642
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeMaxItemId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxItemId:J

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onEmptyDbCreated()V

    .line 644
    return-void
.end method

.method protected onDataUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 6

    .prologue
    .line 745
    packed-switch p2, :pswitch_data_0

    .line 762
    return-void

    .line 749
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 750
    invoke-virtual {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 751
    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update favorites set intent = replace(intent, \';l.profile="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 753
    const-string/jumbo v3, ";\', \';\') where itemType = 0;"

    .line 752
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :cond_0
    :pswitch_1
    return-void

    .line 745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 873
    const/16 v0, 0x1c

    if-ne p2, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p3, v0, :cond_0

    .line 876
    return-void

    .line 879
    :cond_0
    const-string/jumbo v0, "LauncherProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Database version downgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 880
    const-string/jumbo v2, ". Wiping databse."

    .line 879
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 882
    return-void
.end method

.method protected onEmptyDbCreated()V
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mWidgetHostResetHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 653
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mWidgetHostResetHandler:Landroid/os/Handler;

    .line 654
    const/4 v1, 0x3

    .line 653
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 661
    invoke-static {v0, v1}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 663
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 716
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 717
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 718
    const-string/jumbo v1, "com.android.launcher3.device.prefs"

    .line 717
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 719
    const-string/jumbo v1, "provider_data_version"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 720
    if-eq v1, v5, :cond_1

    .line 722
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "EMPTY_DATABASE_CREATED"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 725
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onDataUpgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 726
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 734
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "provider_data_version"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 736
    :cond_1
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    :try_start_1
    const-string/jumbo v1, "LauncherProvider"

    const-string/jumbo v2, "Error updating data version, ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 729
    return-void

    .line 730
    :catchall_0
    move-exception v0

    .line 731
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 730
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 767
    packed-switch p2, :pswitch_data_0

    .line 867
    :cond_0
    :goto_0
    const-string/jumbo v0, "LauncherProvider"

    const-string/jumbo v1, "Destroying all old data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 869
    return-void

    .line 773
    :pswitch_0
    iput-wide v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J

    .line 774
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 777
    :pswitch_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 780
    :try_start_0
    const-string/jumbo v0, "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 792
    :pswitch_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 795
    :try_start_1
    const-string/jumbo v0, "ALTER TABLE favorites ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 797
    const-string/jumbo v0, "ALTER TABLE workspaceScreens ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 805
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 809
    :pswitch_3
    const-string/jumbo v0, "restored"

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 829
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    :pswitch_6
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->recreateWorkspaceTable(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    :pswitch_8
    const-string/jumbo v0, "options"

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    :pswitch_9
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->markExistingUsersForNoFolderCreation(Landroid/content/Context;)V

    .line 854
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 858
    :pswitch_b
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->prepareScreenZeroToHostQsb(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 857
    if-nez v0, :cond_0

    .line 863
    :pswitch_c
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    :try_start_2
    const-string/jumbo v1, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 788
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 787
    :catchall_0
    move-exception v0

    .line 788
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 787
    throw v0

    .line 800
    :catch_1
    move-exception v0

    .line 801
    :try_start_3
    const-string/jumbo v1, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 805
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 804
    :catchall_1
    move-exception v0

    .line 805
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 804
    throw v0

    .line 767
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public recreateWorkspaceTable(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1000
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1002
    :try_start_0
    const-string/jumbo v1, "workspaceScreens"

    .line 1003
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 1005
    const-string/jumbo v7, "screenRank"

    .line 1004
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 1002
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1006
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1007
    const-wide/16 v2, 0x0

    .line 1009
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1011
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1012
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    goto :goto_0

    .line 1017
    :cond_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1020
    const-string/jumbo v0, "DROP TABLE IF EXISTS workspaceScreens"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1021
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->addWorkspacesTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1024
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v8

    .line 1025
    :goto_2
    if-ge v1, v4, :cond_1

    .line 1026
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1027
    const-string/jumbo v7, "_id"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1028
    const-string/jumbo v0, "screenRank"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    invoke-static {v6}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 1030
    const-string/jumbo v0, "workspaceScreens"

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1025
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1016
    :catchall_0
    move-exception v0

    .line 1017
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1016
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1034
    :catch_0
    move-exception v0

    .line 1036
    :try_start_3
    const-string/jumbo v1, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1039
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1037
    return v8

    .line 1032
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1033
    iput-wide v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mMaxScreenId:J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1039
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1041
    return v9

    .line 1038
    :catchall_1
    move-exception v0

    .line 1039
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1038
    throw v0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 905
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v11

    .line 908
    :try_start_0
    const-class v1, Landroid/appwidget/AppWidgetHost;

    const-string/jumbo v2, "getAppWidgetIds"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 909
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 910
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v11, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [I

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 916
    :try_start_1
    const-string/jumbo v2, "favorites"

    .line 917
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "appWidgetId"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 918
    const-string/jumbo v4, "itemType=4"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 916
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 919
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 920
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 921
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v1

    .line 936
    const-string/jumbo v2, "LauncherProvider"

    const-string/jumbo v3, "Error getting widgets list"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 938
    :cond_0
    return-void

    .line 911
    :catch_1
    move-exception v1

    .line 912
    const-string/jumbo v2, "LauncherProvider"

    const-string/jumbo v3, "getAppWidgetIds not supported"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    return-void

    .line 923
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 925
    array-length v3, v9

    move v1, v10

    :goto_1
    if-ge v1, v3, :cond_0

    aget v4, v9, v1

    .line 926
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 928
    :try_start_3
    const-string/jumbo v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Deleting invalid widget "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {v11, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 925
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 930
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1045
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1047
    if-eqz p2, :cond_0

    .line 1049
    :try_start_0
    const-string/jumbo v0, "ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1053
    :cond_0
    const-string/jumbo v0, "SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;"

    .line 1056
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1053
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1058
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1059
    const-string/jumbo v1, "UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;"

    .line 1061
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1059
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    .line 1068
    :try_start_1
    const-string/jumbo v1, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1069
    return v8

    .line 1064
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1065
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1071
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1073
    return v9

    .line 1070
    :catchall_0
    move-exception v0

    .line 1071
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1070
    throw v0
.end method
