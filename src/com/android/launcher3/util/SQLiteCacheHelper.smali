.class public abstract Lcom/android/launcher3/util/SQLiteCacheHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_ICON_CACHE:Z


# instance fields
.field private mIgnoreWrites:Z

.field private final mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/util/SQLiteCacheHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/SQLiteCacheHelper;->NO_ICON_CACHE:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-boolean v0, Lcom/android/launcher3/util/SQLiteCacheHelper;->NO_ICON_CACHE:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 p2, 0x0

    .line 34
    :cond_0
    iput-object p4, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;-><init>(Lcom/android/launcher3/util/SQLiteCacheHelper;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    .line 38
    return-void
.end method

.method private onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "SQLiteCacheHelper"

    const-string/jumbo v1, "Disk full, all write operations will be ignored"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    .line 76
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    iget-object v1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->-wrap0(Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    if-eqz v0, :cond_0

    .line 45
    return-void

    .line 48
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string/jumbo v1, "SQLiteCacheHelper"

    const-string/jumbo v2, "Ignoring sqlite exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/SQLiteCacheHelper;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_0
.end method

.method public insertOrReplace(Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 64
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string/jumbo v1, "SQLiteCacheHelper"

    const-string/jumbo v2, "Ignoring sqlite exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    .line 67
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/SQLiteCacheHelper;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_0
.end method

.method protected abstract onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    .line 82
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
