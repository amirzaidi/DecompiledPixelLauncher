.class Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/SQLiteCacheHelper;


# direct methods
.method static synthetic -wrap0(Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/SQLiteCacheHelper;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->this$0:Lcom/android/launcher3/util/SQLiteCacheHelper;

    .line 98
    new-instance v0, Lcom/android/launcher3/util/NoLocaleSqliteContext;

    invoke-direct {v0, p2}, Lcom/android/launcher3/util/NoLocaleSqliteContext;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 99
    return-void
.end method

.method private clearDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->this$0:Lcom/android/launcher3/util/SQLiteCacheHelper;

    invoke-static {v1}, Lcom/android/launcher3/util/SQLiteCacheHelper;->-get0(Lcom/android/launcher3/util/SQLiteCacheHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->this$0:Lcom/android/launcher3/util/SQLiteCacheHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper;->onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 115
    if-eq p2, p3, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 108
    if-eq p2, p3, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->clearDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    :cond_0
    return-void
.end method
