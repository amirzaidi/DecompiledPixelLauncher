.class public Lcom/android/launcher3/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;


# instance fields
.field private mListenerHandler:Landroid/os/Handler;

.field private final mListenerWrapper:Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

.field protected mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/launcher3/config/ProviderConfig;->AUTHORITY:Ljava/lang/String;

    sput-object v0, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 98
    new-instance v0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;-><init>(Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListenerWrapper:Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

    .line 75
    return-void
.end method

.method static addModifiedTime(Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 482
    const-string/jumbo v0, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 483
    return-void
.end method

.method private clearFlagEmptyDbCreated()V
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "EMPTY_DATABASE_CREATED"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    return-void
.end method

.method private createWorkspaceLoaderFromAppRestriction(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 547
    const-string/jumbo v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 548
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 549
    if-nez v0, :cond_0

    .line 550
    return-object v4

    .line 553
    :cond_0
    const-string/jumbo v2, "workspace.configuration.package.name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_1

    .line 556
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 559
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 558
    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    const-string/jumbo v1, "LauncherProvider"

    const-string/jumbo v2, "Target package for restricted profile not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    return-object v4

    .line 565
    :cond_1
    return-object v4
.end method

.method static dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 192
    if-nez p4, :cond_0

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error: attempting to insert null values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    invoke-virtual {p0, p2, p4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 199
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private deleteEmptyFolders()Ljava/util/ArrayList;
    .locals 9

    .prologue
    .line 443
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 444
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 448
    :try_start_0
    const-string/jumbo v3, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    .line 453
    const-string/jumbo v1, "favorites"

    .line 454
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 455
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 453
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 456
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    :try_start_1
    const-string/jumbo v2, "LauncherProvider"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 471
    :goto_1
    return-object v8

    .line 459
    :cond_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 460
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    const-string/jumbo v1, "favorites"

    .line 462
    const-string/jumbo v2, "_id"

    .line 461
    invoke-static {v2, v8}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 462
    const/4 v3, 0x0

    .line 461
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 468
    :catchall_0
    move-exception v1

    .line 469
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 468
    throw v1
.end method

.method private getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;
    .locals 6

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 570
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 571
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v2, p1

    .line 570
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method static getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT MAX(_id) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1183
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1186
    :goto_0
    if-eqz v4, :cond_0

    .line 1187
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1190
    :cond_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 1191
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: could not query max id in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-wide v0, v2

    .line 1183
    goto :goto_0

    .line 1194
    :cond_2
    return-wide v0

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method private initializeExternalAdd(Landroid/content/ContentValues;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 250
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v2

    .line 251
    const-string/jumbo v1, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    const-string/jumbo v1, "itemType"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 258
    const-string/jumbo v1, "appWidgetId"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 256
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 262
    const-string/jumbo v2, "appWidgetProvider"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_0

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    .line 268
    const-string/jumbo v5, "appWidgetId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    invoke-virtual {v1, v4, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    return v7

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string/jumbo v1, "LauncherProvider"

    const-string/jumbo v2, "Failed to initialize external widget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    return v7

    .line 278
    :cond_0
    return v7

    .line 283
    :cond_1
    const-string/jumbo v1, "screen"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 286
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 287
    const-string/jumbo v4, "INSERT OR IGNORE INTO workspaceScreens (_id, screenRank) select ?, (ifnull(MAX(screenRank), -1)+1) from workspaceScreens"

    .line 286
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 289
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 291
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 292
    const-string/jumbo v2, "_id"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    const-string/jumbo v3, "workspaceScreens"

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 294
    return v8

    .line 295
    :catch_1
    move-exception v1

    .line 298
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 296
    return v7

    .line 297
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 298
    :goto_0
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 297
    throw v0

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0
.end method

.method private declared-synchronized loadDefaultFavoritesIfNecessary()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    const-string/jumbo v0, "LauncherProvider"

    const-string/jumbo v1, "loading default workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    .line 503
    invoke-direct {p0, v2}, Lcom/android/launcher3/LauncherProvider;->createWorkspaceLoaderFromAppRestriction(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v0

    .line 504
    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v0

    .line 507
    :cond_0
    if-nez v0, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v1

    .line 509
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/Partner;->hasDefaultLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    invoke-virtual {v1}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 511
    const-string/jumbo v3, "partner_default_layout"

    .line 512
    const-string/jumbo v5, "xml"

    invoke-virtual {v1}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-virtual {v4, v3, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 513
    if-eqz v5, :cond_1

    .line 514
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 515
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 514
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 520
    :cond_1
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 521
    :goto_0
    if-nez v0, :cond_2

    .line 522
    invoke-direct {p0, v2}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v0

    .line 527
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 529
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v0

    if-gtz v0, :cond_3

    if-eqz v1, :cond_3

    .line 532
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 533
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 534
    invoke-direct {p0, v2}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v2

    .line 533
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    .line 536
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    .line 538
    return-void

    :cond_5
    move v1, v6

    .line 520
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reloadLauncherIfExternal()V
    .locals 2

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 204
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 331
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 334
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 335
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 336
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 337
    return-object v0

    .line 338
    :catchall_0
    move-exception v0

    .line 339
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 338
    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 305
    new-instance v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 310
    :try_start_0
    array-length v4, p2

    move v0, v1

    .line 311
    :goto_0
    if-ge v0, v4, :cond_1

    .line 312
    aget-object v5, p2, v0

    invoke-static {v5}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 313
    iget-object v5, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v6, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    aget-object v7, p2, v0

    const/4 v8, 0x0

    invoke-static {v5, v3, v6, v8, v7}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 319
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 314
    return v1

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 323
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 324
    array-length v0, p2

    return v0

    .line 318
    :catchall_0
    move-exception v0

    .line 319
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 318
    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 379
    return-object v2

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 383
    const-string/jumbo v0, "set_extracted_colors_and_wallpaper_id_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    const-string/jumbo v0, "extra_extractedColors"

    .line 385
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string/jumbo v1, "extra_wallpaperId"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 388
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 389
    const-string/jumbo v3, "pref_extractedColors"

    .line 388
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 390
    const-string/jumbo v3, "pref_wallpaperId"

    .line 388
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 392
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mListenerHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 393
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 394
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-object v1

    .line 383
    :cond_1
    const-string/jumbo v0, "clear_empty_db_flag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 399
    return-object v2

    .line 383
    :cond_2
    const-string/jumbo v0, "get_empty_db_flag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    const-string/jumbo v1, "value"

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "EMPTY_DATABASE_CREATED"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    return-object v0

    .line 383
    :cond_3
    const-string/jumbo v0, "delete_empty_folders"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    const-string/jumbo v1, "value"

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->deleteEmptyFolders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 410
    return-object v0

    .line 383
    :cond_4
    const-string/jumbo v0, "generate_new_item_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 415
    return-object v0

    .line 383
    :cond_5
    const-string/jumbo v0, "generate_new_screen_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 418
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 419
    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewScreenId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 420
    return-object v0

    .line 383
    :cond_6
    const-string/jumbo v0, "create_empty_db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 424
    return-object v2

    .line 383
    :cond_7
    const-string/jumbo v0, "load_default_favorites"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 427
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->loadDefaultFavoritesIfNecessary()V

    .line 428
    return-object v2

    .line 383
    :cond_8
    const-string/jumbo v0, "remove_ghost_widgets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 432
    return-object v2

    .line 435
    :cond_9
    return-object v2
.end method

.method protected declared-synchronized createDbIfNotExists()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mListenerHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v0}, Lcom/android/launcher3/provider/RestoreDbTask;->performRestore(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/RestoreDbTask;->setPending(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 172
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 346
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 350
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 351
    const-string/jumbo v2, "favorites"

    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 350
    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 354
    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 355
    if-lez v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 357
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 359
    :cond_1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 214
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 217
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 218
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherProvider;->initializeExternalAdd(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    return-object v4

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 224
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 225
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v2, v1, v0, v4, p2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 226
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    return-object v4

    .line 228
    :cond_1
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 231
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v1, :cond_3

    .line 232
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 245
    :cond_2
    :goto_0
    return-object v0

    .line 235
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_4

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "isExternalAdd"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 240
    :cond_4
    const-string/jumbo v1, "notify"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_5

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected notifyListeners()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mListenerWrapper:Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListenerHandler:Landroid/os/Handler;

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/logging/FileLog;->setDir(Ljava/io/File;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->apply(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/SessionCommitReceiver;->applyDefaultUserPrefs(Landroid/content/Context;)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 179
    new-instance v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 181
    iget-object v1, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 184
    iget-object v3, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 187
    return-object v0
.end method

.method public setLauncherProviderChangeListener(Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListenerWrapper:Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;

    invoke-static {v0, p1}, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->-set0(Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;Lcom/android/launcher3/LauncherProviderChangeListener;)Lcom/android/launcher3/LauncherProviderChangeListener;

    .line 137
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 365
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 367
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 368
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 369
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 370
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 373
    return v0
.end method
