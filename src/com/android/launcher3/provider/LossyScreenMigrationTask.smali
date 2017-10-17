.class public Lcom/android/launcher3/provider/LossyScreenMigrationTask;
.super Lcom/android/launcher3/model/GridSizeMigrationTask;
.source "SourceFile"


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mOriginalItems:Lcom/android/launcher3/util/LongArrayMap;

.field private final mUpdates:Lcom/android/launcher3/util/LongArrayMap;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    .line 50
    invoke-static {p1}, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v3

    .line 51
    new-instance v4, Landroid/graphics/Point;

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 52
    new-instance v5, Landroid/graphics/Point;

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 54
    iput-object p3, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mOriginalItems:Lcom/android/launcher3/util/LongArrayMap;

    .line 56
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mUpdates:Lcom/android/launcher3/util/LongArrayMap;

    .line 57
    return-void
.end method


# virtual methods
.method protected loadWorkspaceEntries(J)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->loadWorkspaceEntries(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 73
    iget-object v3, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mOriginalItems:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 76
    iget v3, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 77
    iget-object v3, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mUpdates:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    return-object v1
.end method

.method public migrateScreen0()V
    .locals 10

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->migrateScreen(J)V

    .line 86
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mUpdates:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 88
    iget-object v1, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mOriginalItems:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 90
    iget v4, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    iget v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-ne v4, v5, :cond_1

    iget v4, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    iget v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-eq v4, v5, :cond_2

    .line 92
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 93
    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->addToContentValues(Landroid/content/ContentValues;)V

    .line 94
    iget-object v1, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "favorites"

    const-string/jumbo v5, "_id = ?"

    .line 95
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v8, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v6, v7

    .line 94
    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_2
    iget v4, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    if-ne v4, v5, :cond_1

    iget v1, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    if-eq v1, v4, :cond_0

    goto :goto_1

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 101
    iget-object v2, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "favorites"

    .line 106
    const-string/jumbo v2, "_id"

    iget-object v3, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    :cond_5
    return-void
.end method

.method protected queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "favorites"

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher3/provider/LossyScreenMigrationTask;->mUpdates:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {p1}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 67
    return-void
.end method
