.class public Lcom/android/launcher3/model/GridSizeMigrationTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ENABLED:Z


# instance fields
.field protected final mCarryOver:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private final mDestHotseatSize:I

.field protected final mEntryToRemove:Ljava/util/ArrayList;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mShouldRemoveX:Z

.field private final mShouldRemoveY:Z

.field private final mSrcHotseatSize:I

.field private final mSrcX:I

.field private final mSrcY:I

.field private final mTempValues:Landroid/content/ContentValues;

.field private final mTrgX:I

.field private final mTrgY:I

.field private final mUpdateOperations:Ljava/util/ArrayList;

.field private final mValidPackages:Ljava/util/HashSet;

.field private final mWidgetMinSize:Ljava/util/HashMap;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/model/GridSizeMigrationTask;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/model/GridSizeMigrationTask;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    return v0
.end method

.method static synthetic -wrap0(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    sput-boolean v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->ENABLED:Z

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mWidgetMinSize:Ljava/util/HashMap;

    .line 65
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    .line 100
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 102
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mValidPackages:Ljava/util/HashSet;

    .line 104
    iput p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcHotseatSize:I

    .line 106
    iput p5, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mDestHotseatSize:I

    .line 109
    iput v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    iput v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    iput v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcY:I

    iput v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcX:I

    .line 110
    iput-boolean v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    iput-boolean v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    .line 111
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mWidgetMinSize:Ljava/util/HashMap;

    .line 65
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mValidPackages:Ljava/util/HashSet;

    .line 82
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 84
    iget v0, p4, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcX:I

    .line 85
    iget v0, p4, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcY:I

    .line 87
    iget v0, p5, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    .line 88
    iget v0, p5, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    .line 90
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcX:I

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    .line 91
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcY:I

    if-ge v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    .line 94
    iput v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mDestHotseatSize:I

    iput v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcHotseatSize:I

    .line 95
    return-void

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    :cond_1
    move v1, v2

    .line 91
    goto :goto_1
.end method

.method private applyOperations()Z
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    const-string/jumbo v0, "GridSizeMigrationTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 129
    const-string/jumbo v2, "_id"

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    .line 128
    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 129
    const/4 v3, 0x0

    .line 127
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 868
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 870
    invoke-virtual {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->copy()Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 872
    :cond_0
    return-object v1
.end method

.method private getFolderItemsCount(J)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 775
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const-string/jumbo v2, "intent"

    aput-object v2, v0, v3

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "container = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 774
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move v0, v1

    .line 779
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 781
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :catch_0
    move-exception v3

    .line 784
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 787
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 788
    return v0
.end method

.method private static getPointString(II)Ljava/lang/String;
    .locals 5

    .prologue
    .line 881
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "%d,%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 3

    .prologue
    .line 965
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 966
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 967
    const/16 v2, 0x2000

    .line 966
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 968
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 970
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/PackageInstallerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 972
    return-object v1
.end method

.method private loadHotseatEntries()Ljava/util/ArrayList;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 610
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 611
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 612
    const-string/jumbo v3, "_id"

    aput-object v3, v2, v5

    .line 613
    const-string/jumbo v3, "itemType"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 614
    const-string/jumbo v3, "intent"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 615
    const-string/jumbo v3, "screen"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 616
    const-string/jumbo v3, "container = -101"

    move-object v5, v4

    move-object v6, v4

    .line 610
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 618
    const-string/jumbo v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 619
    const-string/jumbo v0, "itemType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 620
    const-string/jumbo v0, "intent"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 621
    const-string/jumbo v0, "screen"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 623
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 624
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    new-instance v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v7}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;-><init>()V

    .line 626
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    .line 627
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    .line 628
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 630
    iget-wide v8, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcHotseatSize:I

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v8, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 637
    :cond_0
    :try_start_0
    iget v0, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 655
    :pswitch_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v8, "Invalid item type"

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :catch_0
    move-exception v0

    .line 659
    const-string/jumbo v8, "GridSizeMigrationTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Removing item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v8, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 641
    :pswitch_1
    :try_start_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyIntent(Ljava/lang/String;)V

    .line 642
    iget v0, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-nez v0, :cond_1

    .line 643
    const v0, 0x3f4ccccd    # 0.8f

    .line 642
    :goto_1
    iput v0, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 664
    :goto_2
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 643
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 647
    :pswitch_2
    :try_start_2
    iget-wide v8, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getFolderItemsCount(J)I

    move-result v0

    .line 648
    if-nez v0, :cond_2

    .line 649
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v8, "Folder is empty"

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_2
    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v0, v8

    iput v0, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 666
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 667
    return-object v6

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static markForMigration(Landroid/content/Context;III)V
    .locals 3

    .prologue
    .line 886
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 887
    const-string/jumbo v1, "migration_src_workspace_size"

    invoke-static {p1, p2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getPointString(II)Ljava/lang/String;

    move-result-object v2

    .line 886
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 888
    const-string/jumbo v1, "migration_src_hotseat_count"

    .line 886
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 890
    return-void
.end method

.method public static migrateGridIfNeeded(Landroid/content/Context;)Z
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 897
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 898
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v9

    .line 900
    iget v0, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v1, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getPointString(II)Ljava/lang/String;

    move-result-object v10

    .line 902
    const-string/jumbo v0, "migration_src_workspace_size"

    const-string/jumbo v1, ""

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget v0, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    const-string/jumbo v1, "migration_src_hotseat_count"

    iget v2, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 905
    return v6

    .line 908
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 912
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v3

    .line 914
    const-string/jumbo v0, "migration_src_hotseat_count"

    iget v1, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 915
    iget v0, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    if-eq v4, v0, :cond_3

    .line 918
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    .line 919
    iget v5, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    move-object v1, p0

    .line 918
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;II)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->migrateHotseat()Z

    move-result v0

    .line 923
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    iget v2, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v4, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 925
    const-string/jumbo v2, "migration_src_workspace_size"

    .line 924
    invoke-interface {v8, v2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->parsePoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    .line 927
    new-instance v4, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;

    invoke-direct {v4, v3, p0}, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;-><init>(Ljava/util/HashSet;Landroid/content/Context;)V

    invoke-virtual {v4, v2, v1}, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->migrate(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    .line 931
    :cond_1
    if-eqz v0, :cond_2

    .line 933
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 934
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 933
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 935
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 936
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 937
    if-nez v1, :cond_2

    .line 938
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Removed every thing during grid resize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :catch_0
    move-exception v0

    .line 944
    :try_start_1
    const-string/jumbo v1, "GridSizeMigrationTask"

    const-string/jumbo v2, "Error during grid migration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    const-string/jumbo v0, "GridSizeMigrationTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Workspace migration completed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    .line 948
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 953
    const-string/jumbo v1, "migration_src_workspace_size"

    .line 952
    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 954
    const-string/jumbo v1, "migration_src_hotseat_count"

    iget v2, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 952
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 946
    return v7

    .line 948
    :cond_2
    const-string/jumbo v0, "GridSizeMigrationTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Workspace migration completed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    .line 948
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 953
    const-string/jumbo v1, "migration_src_workspace_size"

    .line 952
    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 954
    const-string/jumbo v1, "migration_src_hotseat_count"

    iget v2, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 952
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 942
    return v6

    .line 947
    :catchall_0
    move-exception v0

    .line 948
    const-string/jumbo v1, "GridSizeMigrationTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Workspace migration completed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    .line 948
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 953
    const-string/jumbo v2, "migration_src_workspace_size"

    .line 952
    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 954
    const-string/jumbo v2, "migration_src_hotseat_count"

    iget v3, v9, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 952
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 947
    throw v0

    :cond_3
    move v0, v7

    goto/16 :goto_0
.end method

.method private static parsePoint(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 876
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 877
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static removeBrokenHotseatItems(Landroid/content/Context;)Lcom/android/launcher3/util/LongArrayMap;
    .locals 6

    .prologue
    const v4, 0x7fffffff

    .line 980
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationTask;

    .line 981
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-static {p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getValidPackages(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v3

    move-object v1, p0

    move v5, v4

    .line 980
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;II)V

    .line 985
    invoke-direct {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->loadHotseatEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 987
    invoke-direct {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->applyOperations()Z

    .line 988
    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 989
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 990
    iget-wide v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 992
    :cond_0
    return-object v2
.end method

.method private tryRemove(IIILjava/util/ArrayList;[F)Ljava/util/ArrayList;
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 378
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 379
    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    move v2, v1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 381
    iget-boolean v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    if-eqz v2, :cond_3

    .line 382
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    if-eqz v2, :cond_4

    .line 384
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 385
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 388
    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-gt v7, p1, :cond_5

    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    add-int/2addr v7, v8

    if-le v7, p1, :cond_5

    .line 390
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-lt v7, p1, :cond_2

    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 392
    :cond_2
    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-lt v7, p2, :cond_0

    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    goto :goto_2

    :cond_3
    move p1, v6

    .line 381
    goto :goto_0

    :cond_4
    move p2, v6

    .line 382
    goto :goto_1

    .line 389
    :cond_5
    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-gt v7, p2, :cond_6

    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    add-int/2addr v7, v8

    if-gt v7, p2, :cond_1

    .line 394
    :cond_6
    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-le v7, p1, :cond_7

    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 395
    :cond_7
    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-le v7, p2, :cond_8

    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 396
    :cond_8
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v0, v2, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    goto :goto_2

    .line 402
    :cond_9
    new-instance v2, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;

    invoke-direct {v2, p0, v0, v4, p3}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;I)V

    .line 403
    invoke-virtual {v2}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find()V

    .line 404
    iget-object v0, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    iget v0, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    aput v0, p5, v1

    .line 406
    iget v0, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestMoveCost:F

    aput v0, p5, v5

    .line 407
    return-object v3
.end method

.method private verifyIntent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 800
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 802
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyPackage(Ljava/lang/String;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 805
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private verifyPackage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Package not available"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_0
    return-void
.end method


# virtual methods
.method protected loadWorkspaceEntries(J)Ljava/util/ArrayList;
    .locals 23

    .prologue
    .line 676
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    .line 677
    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 678
    const-string/jumbo v5, "itemType"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 679
    const-string/jumbo v5, "cellX"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 680
    const-string/jumbo v5, "cellY"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 681
    const-string/jumbo v5, "spanX"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 682
    const-string/jumbo v5, "spanY"

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 683
    const-string/jumbo v5, "intent"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    .line 684
    const-string/jumbo v5, "appWidgetProvider"

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 685
    const-string/jumbo v5, "appWidgetId"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    .line 686
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "container = -100 AND screen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 675
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;->queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 689
    const-string/jumbo v4, "_id"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 690
    const-string/jumbo v4, "itemType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 691
    const-string/jumbo v4, "cellX"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 692
    const-string/jumbo v4, "cellY"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 693
    const-string/jumbo v4, "spanX"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 694
    const-string/jumbo v4, "spanY"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 695
    const-string/jumbo v4, "intent"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 696
    const-string/jumbo v4, "appWidgetProvider"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 697
    const-string/jumbo v4, "appWidgetId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 699
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 700
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 701
    new-instance v17, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;-><init>()V

    .line 702
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    .line 703
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    .line 704
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 705
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 706
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 707
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 708
    move-wide/from16 v0, p1

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 712
    :try_start_0
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 755
    :pswitch_0
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Invalid item type"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :catch_0
    move-exception v4

    .line 759
    const-string/jumbo v5, "GridSizeMigrationTask"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Removing item "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v5, v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 716
    :pswitch_1
    :try_start_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyIntent(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-nez v4, :cond_1

    .line 718
    const v4, 0x3f4ccccd    # 0.8f

    .line 717
    :goto_1
    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 764
    :cond_0
    :goto_2
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 718
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    .line 722
    :pswitch_2
    :try_start_2
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 724
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;->verifyPackage(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    int-to-float v5, v5

    .line 725
    const v18, 0x3f19999a    # 0.6f

    mul-float v5, v5, v18

    .line 726
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 725
    mul-float v5, v5, v18

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    .line 728
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 729
    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v5

    .line 731
    if-nez v5, :cond_3

    .line 732
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mWidgetMinSize:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    move-object v5, v4

    .line 733
    :goto_3
    if-eqz v5, :cond_6

    .line 734
    iget v4, v5, Landroid/graphics/Point;->x:I

    if-lez v4, :cond_4

    iget v4, v5, Landroid/graphics/Point;->x:I

    :goto_4
    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    .line 735
    iget v4, v5, Landroid/graphics/Point;->y:I

    if-lez v4, :cond_5

    iget v4, v5, Landroid/graphics/Point;->y:I

    :goto_5
    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    .line 741
    :goto_6
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    if-gt v4, v5, :cond_2

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    if-le v4, v5, :cond_0

    .line 742
    :cond_2
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Widget can\'t be resized down to fit the grid"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 732
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v4, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getMinSpans(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    move-object v5, v4

    goto :goto_3

    .line 734
    :cond_4
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    goto :goto_4

    .line 735
    :cond_5
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    goto :goto_5

    .line 738
    :cond_6
    const/4 v4, 0x2

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    const/4 v4, 0x2

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    goto :goto_6

    .line 747
    :pswitch_3
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;->getFolderItemsCount(J)I

    move-result v4

    .line 748
    if-nez v4, :cond_7

    .line 749
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Folder is empty"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 751
    :cond_7
    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 766
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 767
    return-object v16

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected migrateHotseat()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->loadHotseatEntries()Ljava/util/ArrayList;

    move-result-object v3

    .line 146
    iget v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mDestHotseatSize:I

    .line 148
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 150
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 153
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 154
    iget v6, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v7, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    :goto_2
    move-object v1, v0

    goto :goto_1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mEntryToRemove:Ljava/util/ArrayList;

    iget-wide v6, v1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 166
    iget-wide v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 167
    int-to-long v4, v1

    iput-wide v4, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 171
    iput v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 172
    iput v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V

    .line 177
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 183
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->applyOperations()Z

    move-result v0

    return v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method protected migrateScreen(J)V
    .locals 17

    .prologue
    .line 264
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 265
    const/4 v5, 0x1

    .line 267
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->loadWorkspaceEntries(J)Ljava/util/ArrayList;

    move-result-object v14

    .line 269
    const v9, 0x7fffffff

    .line 270
    const v8, 0x7fffffff

    .line 277
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 278
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 279
    const/4 v2, 0x2

    new-array v7, v2, [F

    .line 280
    const/4 v2, 0x0

    .line 283
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcX:I

    if-ge v3, v10, :cond_f

    .line 286
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mSrcY:I

    add-int/lit8 v10, v10, -0x1

    move v12, v4

    move v13, v6

    move v4, v10

    move-object v10, v2

    move v15, v8

    move v8, v9

    move v9, v15

    :goto_2
    if-lt v4, v5, :cond_e

    .line 289
    invoke-static {v14}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/model/GridSizeMigrationTask;->tryRemove(IIILjava/util/ArrayList;[F)Ljava/util/ArrayList;

    move-result-object v11

    .line 291
    const/4 v2, 0x0

    aget v2, v7, v2

    cmpg-float v2, v2, v13

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    aget v2, v7, v2

    cmpl-float v2, v2, v13

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget v2, v7, v2

    cmpg-float v2, v2, v12

    if-gez v2, :cond_2

    .line 292
    :cond_0
    const/4 v2, 0x0

    aget v12, v7, v2

    .line 293
    const/4 v2, 0x1

    aget v10, v7, v2

    .line 294
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    if-eqz v2, :cond_3

    move v2, v3

    .line 295
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    if-eqz v6, :cond_4

    move v6, v4

    :goto_4
    move v8, v12

    move v9, v6

    move v6, v10

    move v10, v2

    move-object v2, v11

    .line 300
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveY:Z

    if-nez v11, :cond_5

    move v4, v6

    move v6, v8

    move v8, v9

    move v9, v10

    .line 305
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mShouldRemoveX:Z

    if-nez v10, :cond_6

    move-object v4, v2

    .line 311
    :goto_7
    const-string/jumbo v2, "GridSizeMigrationTask"

    const-string/jumbo v3, "Removing row %d, column %d on screen %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 312
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 311
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v7, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v7}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 316
    invoke-static {v14}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 317
    iget-wide v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v7, v8, v9, v2}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_8

    .line 265
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_2
    move-object v2, v10

    move v6, v12

    move v10, v8

    move v8, v13

    .line 291
    goto :goto_5

    :cond_3
    move v2, v8

    .line 294
    goto :goto_3

    :cond_4
    move v6, v9

    .line 295
    goto :goto_4

    .line 286
    :cond_5
    add-int/lit8 v4, v4, -0x1

    move v12, v6

    move v13, v8

    move v8, v10

    move-object v10, v2

    goto/16 :goto_2

    .line 283
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 320
    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 321
    iget-wide v10, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v7, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 322
    iget-wide v10, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v7, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 325
    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->columnsSame(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_9

    .line 331
    :cond_9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 332
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 335
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-nez v2, :cond_d

    .line 337
    new-instance v6, Lcom/android/launcher3/util/GridOccupancy;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    invoke-direct {v6, v2, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 338
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 339
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 340
    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    goto :goto_b

    .line 343
    :cond_b
    new-instance v7, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move-object v9, v6

    move v11, v5

    .line 343
    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;IZ)V

    .line 345
    invoke-virtual {v7}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find()V

    .line 346
    iget v2, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d

    .line 349
    iget-object v2, v7, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 350
    move-wide/from16 v0, p1

    iput-wide v0, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 351
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_c

    .line 354
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 357
    :cond_d
    return-void

    :cond_e
    move-object v2, v10

    move v4, v12

    move v6, v13

    move v15, v9

    move v9, v8

    move v8, v15

    goto/16 :goto_6

    :cond_f
    move-object v4, v2

    goto/16 :goto_7
.end method

.method protected migrateWorkspace()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 191
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Unable to get workspace screens"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 197
    const-string/jumbo v0, "GridSizeMigrationTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Migrating "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/model/GridSizeMigrationTask;->migrateScreen(J)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 203
    new-instance v7, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v7}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 205
    iget-wide v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v7, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 214
    :cond_3
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;

    .line 215
    new-instance v2, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgX:I

    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTrgY:I

    invoke-direct {v2, v1, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/launcher3/model/GridSizeMigrationTask;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    .line 214
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;IZ)V

    .line 216
    invoke-virtual {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find()V

    .line 217
    iget-object v1, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 219
    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 220
    const-string/jumbo v2, "generate_new_screen_id"

    .line 218
    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 221
    const-string/jumbo v2, "value"

    .line 218
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 223
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 225
    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mCarryOver:Ljava/util/ArrayList;

    iget-wide v8, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 226
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Unable to find matching items"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_4
    iput-wide v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->screenId:J

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V

    goto :goto_2

    .line 232
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "None of the items can be placed on an empty screen"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_6
    sget-object v1, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 241
    :goto_3
    if-ge v4, v2, :cond_7

    .line 242
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 243
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 244
    const-string/jumbo v0, "_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    const-string/jumbo v0, "screenRank"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 249
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->applyOperations()Z

    move-result v0

    return v0
.end method

.method protected queryWorkspace([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 792
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected update(Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;)V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 364
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->addToContentValues(Landroid/content/ContentValues;)V

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mUpdateOperations:Ljava/util/ArrayList;

    .line 366
    iget-wide v2, p1, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 365
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask;->mTempValues:Landroid/content/ContentValues;

    .line 365
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-void
.end method
