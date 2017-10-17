.class Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mValidPackages:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/util/HashSet;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mValidPackages:Ljava/util/HashSet;

    .line 1002
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mContext:Landroid/content/Context;

    .line 1003
    return-void
.end method


# virtual methods
.method public migrate(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 4

    .prologue
    .line 1006
    const/4 v0, 0x0

    .line 1007
    invoke-virtual {p2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1008
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-ge v1, v2, :cond_0

    .line 1010
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1012
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_1

    .line 1014
    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1019
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1021
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 1022
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ge v2, v3, :cond_2

    .line 1023
    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1025
    :cond_2
    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_3

    .line 1026
    iget v2, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1028
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->runStepTask(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1029
    const/4 v0, 0x1

    .line 1031
    :cond_4
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1034
    :cond_5
    return v0
.end method

.method protected runStepTask(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 6

    .prologue
    .line 1038
    new-instance v0, Lcom/android/launcher3/model/GridSizeMigrationTask;

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    .line 1039
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$MultiStepMigrationTask;->mValidPackages:Ljava/util/HashSet;

    move-object v4, p1

    move-object v5, p2

    .line 1038
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/HashSet;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v0}, Lcom/android/launcher3/model/GridSizeMigrationTask;->migrateWorkspace()Z

    move-result v0

    return v0
.end method
