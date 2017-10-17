.class public Lcom/android/launcher3/Partner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sPartner:Lcom/android/launcher3/Partner;

.field private static sSearched:Z


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/Partner;->sSearched:Z

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    .line 77
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;
    .locals 4

    .prologue
    const-class v2, Lcom/android/launcher3/Partner;

    monitor-enter v2

    .line 61
    :try_start_0
    sget-boolean v0, Lcom/android/launcher3/Partner;->sSearched:Z

    if-nez v0, :cond_1

    .line 62
    const-string/jumbo v0, "com.android.launcher3.action.PARTNER_CUSTOMIZATION"

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    new-instance v3, Lcom/android/launcher3/Partner;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v3, Lcom/android/launcher3/Partner;->sPartner:Lcom/android/launcher3/Partner;

    .line 66
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Partner;->sSearched:Z

    .line 68
    :cond_1
    sget-object v0, Lcom/android/launcher3/Partner;->sPartner:Lcom/android/launcher3/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public applyInvariantDeviceProfileOverrides(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/util/DisplayMetrics;)V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 120
    const/high16 v0, -0x40800000    # -1.0f

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "grid_num_rows"

    .line 124
    const-string/jumbo v4, "integer"

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 125
    if-lez v2, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "grid_num_columns"

    .line 130
    const-string/jumbo v5, "integer"

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 131
    if-lez v3, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "grid_icon_size_dp"

    .line 136
    const-string/jumbo v5, "dimen"

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 137
    if-lez v3, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 139
    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    :cond_1
    if-lez v2, :cond_2

    if-lez v1, :cond_2

    .line 147
    iput v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 148
    iput v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 151
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 152
    iput v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 154
    :cond_3
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "Launcher.Partner"

    const-string/jumbo v2, "Invalid Partner grid resource!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    return-void

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public hasDefaultLayout()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "partner_default_layout"

    .line 89
    const-string/jumbo v3, "xml"

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 90
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
