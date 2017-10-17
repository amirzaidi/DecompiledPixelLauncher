.class public Lcom/android/launcher3/model/LoaderCursor;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field public final allUsers:Landroid/util/LongSparseArray;

.field private final cellXIndex:I

.field private final cellYIndex:I

.field public container:J

.field private final containerIndex:I

.field private final iconIndex:I

.field private final iconPackageIndex:I

.field private final iconResourceIndex:I

.field public id:J

.field private final idIndex:I

.field private final intentIndex:I

.field public itemType:I

.field private final itemTypeIndex:I

.field private final itemsToRemove:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private final mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field private final occupied:Lcom/android/launcher3/util/LongArrayMap;

.field private final profileIdIndex:I

.field public restoreFlag:I

.field private final restoredIndex:I

.field private final restoredRows:Ljava/util/ArrayList;

.field private final screenIndex:I

.field public serialNumber:J

.field public final titleIndex:I

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 64
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    .line 100
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 102
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 106
    const-string/jumbo v0, "icon"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconIndex:I

    .line 107
    const-string/jumbo v0, "iconPackage"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconPackageIndex:I

    .line 108
    const-string/jumbo v0, "iconResource"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconResourceIndex:I

    .line 109
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    .line 111
    const-string/jumbo v0, "_id"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->idIndex:I

    .line 112
    const-string/jumbo v0, "container"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    .line 113
    const-string/jumbo v0, "itemType"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemTypeIndex:I

    .line 114
    const-string/jumbo v0, "screen"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    .line 115
    const-string/jumbo v0, "cellX"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    .line 116
    const-string/jumbo v0, "cellY"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    .line 117
    const-string/jumbo v0, "profileId"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->profileIdIndex:I

    .line 118
    const-string/jumbo v0, "restored"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredIndex:I

    .line 119
    const-string/jumbo v0, "intent"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->intentIndex:I

    .line 120
    return-void
.end method

.method private getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->id:J

    .line 365
    iget-wide v0, p0, Lcom/android/launcher3/model/LoaderCursor;->container:J

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 366
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->screenIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 367
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellXIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 368
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->cellYIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 369
    return-void
.end method

.method public checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/LoaderCursor;->checkItemPlacement(Lcom/android/launcher3/ItemInfo;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Z)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string/jumbo v0, "Item position overlap"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected checkItemPlacement(Lcom/android/launcher3/ItemInfo;Ljava/util/ArrayList;)Z
    .locals 12

    .prologue
    const-wide/16 v10, -0x64

    const-wide/16 v8, -0x65

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 387
    iget-wide v6, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 388
    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/GridOccupancy;

    .line 401
    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    int-to-long v6, v5

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 402
    const-string/jumbo v0, "LoaderCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error loading shortcut "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    const-string/jumbo v3, " into hotseat position "

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    iget-wide v4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 402
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    const-string/jumbo v3, ", position out of bounds: (0 to "

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    add-int/lit8 v3, v3, -0x1

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 405
    const-string/jumbo v3, ")"

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v1

    .line 409
    :cond_0
    if-eqz v0, :cond_2

    .line 410
    iget-object v2, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-wide v6, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v3, v6

    aget-object v2, v2, v3

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 411
    const-string/jumbo v0, "LoaderCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error loading shortcut into hotseat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    const-string/jumbo v3, " into position ("

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    iget-wide v4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 411
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    const-string/jumbo v3, ":"

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    const-string/jumbo v3, ","

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    const-string/jumbo v3, ") already occupied"

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v1

    .line 416
    :cond_1
    iget-object v0, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v2, v2

    aget-object v0, v0, v2

    aput-boolean v4, v0, v1

    .line 417
    return v4

    .line 420
    :cond_2
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-direct {v0, v2, v4}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 421
    iget-object v2, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-wide v6, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v3, v6

    aget-object v2, v2, v3

    aput-boolean v4, v2, v1

    .line 422
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 423
    return v4

    .line 425
    :cond_3
    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v2, v10

    if-nez v0, :cond_4

    .line 426
    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 428
    return v1

    .line 432
    :cond_4
    return v4

    .line 435
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 436
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 437
    iget-wide v8, p1, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    .line 438
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-gez v0, :cond_7

    .line 440
    :cond_6
    const-string/jumbo v0, "LoaderCursor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading shortcut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 441
    const-string/jumbo v5, " into cell ("

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 441
    const-string/jumbo v5, "-"

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 441
    iget-wide v6, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 440
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 441
    const-string/jumbo v5, ":"

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 442
    iget v5, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 442
    const-string/jumbo v5, ","

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 442
    iget v5, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 443
    const-string/jumbo v5, ") out of screen bounds ( "

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    const-string/jumbo v4, "x"

    .line 440
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    const-string/jumbo v3, ")"

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return v1

    .line 438
    :cond_7
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-ltz v0, :cond_6

    .line 439
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    add-int/2addr v0, v5

    if-gt v0, v2, :cond_6

    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v5, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    add-int/2addr v0, v5

    if-gt v0, v3, :cond_6

    .line 447
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v8, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_9

    .line 448
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v5, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 449
    iget-wide v8, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_8

    .line 452
    add-int/lit8 v3, v2, 0x1

    move v2, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 454
    :cond_8
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v8, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v2, v8, v9, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 456
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->occupied:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/GridOccupancy;

    .line 459
    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v5, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, v2, v3, v5, v8}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 460
    invoke-virtual {v0, p1, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 461
    return v4

    .line 463
    :cond_a
    const-string/jumbo v0, "LoaderCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error loading shortcut "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 464
    const-string/jumbo v3, " into cell ("

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 464
    const-string/jumbo v3, "-"

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 464
    iget-wide v4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 463
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 464
    const-string/jumbo v3, ":"

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    const-string/jumbo v3, ","

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    const-string/jumbo v3, ","

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    const-string/jumbo v3, ","

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 466
    const-string/jumbo v3, ") already occupied"

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v1
.end method

.method public commitDeleted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 316
    const-string/jumbo v2, "_id"

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    .line 315
    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 316
    const/4 v3, 0x0

    .line 314
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_0
    return v1
.end method

.method public commitRestoredItems()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 339
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    const-string/jumbo v1, "restored"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 343
    const-string/jumbo v3, "_id"

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    .line 342
    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 343
    const/4 v4, 0x0

    .line 341
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    :cond_0
    return-void
.end method

.method public getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/ShortcutInfo;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 242
    const-string/jumbo v0, "LoaderCursor"

    const-string/jumbo v1, "Null user found in getShortcutInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v4

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 247
    if-nez v1, :cond_1

    .line 248
    const-string/jumbo v0, "LoaderCursor"

    const-string/jumbo v1, "Missing component found in getShortcutInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-object v4

    .line 252
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 255
    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    .line 257
    if-nez v2, :cond_2

    xor-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    .line 258
    const-string/jumbo v0, "LoaderCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing activity found in getShortcutInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v4

    .line 262
    :cond_2
    new-instance v3, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v3}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 263
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 264
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v4, v3, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 265
    iput-object v0, v3, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v3, v2, p3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v4, v3, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {p0, v3}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_7

    :goto_0
    iput-object v0, v3, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 273
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    const/4 v0, 0x4

    iput v0, v3, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 278
    :cond_4
    iget-object v0, v3, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 283
    :cond_5
    iget-object v0, v3, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 284
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 287
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v1, v3, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, v3, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 288
    return-object v3

    .line 270
    :cond_7
    iget-object v0, v3, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;
    .locals 4

    .prologue
    .line 207
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 209
    iput-object p1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 213
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 217
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 230
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 231
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 232
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 233
    return-object v0

    .line 222
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    goto :goto_0

    .line 227
    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid restoreType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRestoreFlag(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 333
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOnWorkspaceOrHotseat()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 351
    iget-wide v2, p0, Lcom/android/launcher3/model/LoaderCursor;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 352
    iget-wide v2, p0, Lcom/android/launcher3/model/LoaderCursor;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 170
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 171
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconPackageIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget v2, p0, Lcom/android/launcher3/model/LoaderCursor;->iconResourceIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 174
    :cond_0
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v3, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 175
    iget-object v3, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v2, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    :goto_0
    if-nez v0, :cond_1

    .line 182
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->iconIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getBlob(I)[B

    move-result-object v0

    .line 185
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    .line 184
    invoke-static {v0, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :cond_1
    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 152
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 153
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderCursor;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->loadIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 156
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v2, v0, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 162
    :cond_0
    return-object v0
.end method

.method public markDeleted(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 303
    const-string/jumbo v0, "LoaderCursor"

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method public markRestored()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 326
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iput v4, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 330
    :cond_0
    return-void
.end method

.method public moveToNext()Z
    .locals 4

    .prologue
    .line 124
    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v1

    .line 125
    if-eqz v1, :cond_0

    .line 127
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemTypeIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    .line 128
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->containerIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/launcher3/model/LoaderCursor;->container:J

    .line 129
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->idIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    .line 130
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->profileIdIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    iget-wide v2, p0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 132
    iget v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoredIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 134
    :cond_0
    return v1
.end method

.method public parseIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    iget v1, p0, Lcom/android/launcher3/model/LoaderCursor;->intentIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    .line 141
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    const-string/jumbo v1, "LoaderCursor"

    const-string/jumbo v2, "Error parsing Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v0
.end method

.method public updater()Lcom/android/launcher3/util/ContentWriter;
    .locals 8

    .prologue
    .line 295
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    .line 296
    const-string/jumbo v3, "_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 295
    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    return-object v0
.end method
