.class public Lcom/android/launcher3/InvariantDeviceProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEFAULT_ICON_SIZE_DP:F

.field private static KNEARESTNEIGHBOR:F

.field private static WEIGHT_EFFICIENT:F

.field private static WEIGHT_POWER:F


# instance fields
.field defaultLayoutId:I

.field public defaultWallpaperSize:Landroid/graphics/Point;

.field public fillResIconDpi:I

.field hotseatIconSize:F

.field public hotseatScale:F

.field public iconBitmapSize:I

.field public iconSize:F

.field public iconTextSize:F

.field public landscapeProfile:Lcom/android/launcher3/DeviceProfile;

.field minAllAppsPredictionColumns:I

.field minHeightDps:F

.field minWidthDps:F

.field name:Ljava/lang/String;

.field public numColumns:I

.field public numFolderColumns:I

.field public numFolderRows:I

.field public numHotseatIcons:I

.field public numRows:I

.field public portraitProfile:Lcom/android/launcher3/DeviceProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->DEFAULT_ICON_SIZE_DP:F

    .line 51
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->KNEARESTNEIGHBOR:F

    .line 52
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_POWER:F

    .line 55
    const v0, 0x47c35000    # 100000.0f

    sput v0, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_EFFICIENT:F

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 17

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string/jumbo v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 129
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 130
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 134
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 135
    invoke-virtual {v3, v5, v6}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 138
    iget v2, v5, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Lcom/android/launcher3/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    .line 139
    iget v2, v6, Landroid/graphics/Point;->x:I

    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Lcom/android/launcher3/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    .line 142
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    .line 141
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/launcher3/InvariantDeviceProfile;->findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v7

    .line 146
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 147
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 148
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 149
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 150
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 151
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    .line 152
    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    .line 153
    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    .line 155
    iget v2, v7, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 156
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    invoke-static {v2, v4}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 157
    iget v2, v7, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 158
    iget v2, v7, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 159
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getLauncherIconDensity(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    .line 165
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatScale:F

    .line 167
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 168
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 171
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 172
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 174
    new-instance v2, Lcom/android/launcher3/DeviceProfile;

    .line 175
    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    .line 174
    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    .line 176
    new-instance v9, Lcom/android/launcher3/DeviceProfile;

    .line 177
    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    move v14, v8

    move v15, v7

    .line 176
    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x2d0

    if-lt v2, v3, :cond_0

    .line 182
    new-instance v2, Landroid/graphics/Point;

    .line 183
    int-to-float v3, v7

    invoke-static {v7, v8}, Lcom/android/launcher3/InvariantDeviceProfile;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 182
    invoke-direct {v2, v3, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    mul-int/lit8 v3, v8, 0x2

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v2, v3, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 14

    .prologue
    .line 101
    iget-object v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v3, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    iget v4, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v5, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 102
    iget v6, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iget v7, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v8, p1, Lcom/android/launcher3/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    .line 103
    iget v9, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    iget v10, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    iget v11, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    iget v12, p1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 104
    iget v13, p1, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    move-object v0, p0

    .line 101
    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFIFI)V

    .line 105
    return-void
.end method

.method constructor <init>(Ljava/lang/String;FFIIIIIFFIFI)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->name:Ljava/lang/String;

    .line 110
    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    .line 111
    iput p3, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    .line 112
    iput p4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 113
    iput p5, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 114
    iput p6, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    .line 115
    iput p7, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    .line 116
    iput p8, p0, Lcom/android/launcher3/InvariantDeviceProfile;->minAllAppsPredictionColumns:I

    .line 117
    iput p9, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 118
    iput p10, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 119
    iput p11, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    .line 120
    iput p12, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 121
    iput p13, p0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 123
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatScale:F

    .line 124
    return-void
.end method

.method private add(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 2

    .prologue
    .line 307
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 308
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 309
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 310
    return-void
.end method

.method private applyPartnerDeviceProfileOverrides(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p0, p2}, Lcom/android/launcher3/Partner;->applyInvariantDeviceProfileOverrides(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/util/DisplayMetrics;)V

    .line 261
    :cond_0
    return-void
.end method

.method private getLauncherIconDensity(I)I
    .locals 6

    .prologue
    .line 229
    const/4 v0, 0x7

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 239
    const/16 v1, 0x280

    .line 240
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ltz v1, :cond_1

    .line 241
    aget v3, v2, v1

    int-to-float v3, v3

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v3, v4

    .line 242
    const/high16 v4, 0x43200000    # 160.0f

    .line 241
    div-float/2addr v3, v4

    .line 243
    int-to-float v4, p1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 244
    aget v0, v2, v1

    .line 240
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 248
    :cond_1
    return v0

    .line 229
    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private multiply(F)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    .line 314
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    .line 315
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    .line 316
    return-object p0
.end method

.method private static wallpaperTravelToScreenWidthRatio(II)F
    .locals 4

    .prologue
    const v3, 0x3f80fc10

    const v2, 0x3e9d89d7

    .line 348
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 369
    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    return v0
.end method

.method private weight(FFFFF)F
    .locals 6

    .prologue
    .line 336
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    .line 337
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 338
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0

    .line 340
    :cond_0
    sget v1, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_EFFICIENT:F

    float-to-double v2, v1

    float-to-double v0, v0

    float-to-double v4, p5

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v0, v2, v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method dist(FFFF)F
    .locals 4

    .prologue
    .line 264
    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p4, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile$1;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;FF)V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 283
    return-object p3
.end method

.method public getAllAppsButtonRank()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 332
    const/4 v1, 0x2

    .line 331
    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    .line 331
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    goto :goto_0
.end method

.method getPredefinedDeviceProfiles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 22

    .prologue
    .line 191
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 192
    const/16 v17, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    .line 193
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v19

    .line 196
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 197
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_3

    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 198
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "profile"

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-static/range {v16 .. v16}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/R$styleable;->InvariantDeviceProfile:[I

    .line 199
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 201
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 202
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 203
    const/4 v2, 0x0

    const/16 v3, 0x9

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 204
    new-instance v2, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 205
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 207
    const/4 v5, 0x0

    const/4 v8, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 210
    const/4 v8, 0x5

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 211
    const/4 v9, 0x6

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 212
    const/4 v10, 0x7

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 214
    const/4 v12, 0x0

    const/16 v13, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 215
    const/16 v13, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 216
    const/16 v14, 0xb

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 217
    const/16 v15, 0xc

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 204
    invoke-direct/range {v2 .. v15}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Ljava/lang/String;FFIIIIIFFIFI)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v2

    move-object/from16 v3, v16

    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v16, v3

    move-object v3, v2

    move-object v2, v4

    :goto_2
    if-eqz v16, :cond_2

    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    if-eqz v3, :cond_6

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    .line 221
    :catch_1
    move-exception v2

    .line 222
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 223
    :cond_3
    if-eqz v16, :cond_4

    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_4
    if-eqz v17, :cond_7

    :try_start_6
    throw v17

    :catch_2
    move-exception v17

    goto :goto_4

    :catch_3
    move-exception v4

    if-nez v3, :cond_5

    move-object v3, v4

    goto :goto_3

    :cond_5
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1

    .line 224
    :cond_7
    return-object v18

    .line 223
    :catchall_1
    move-exception v2

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object/from16 v3, v17

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method invDistWeightedInterpolate(FFLjava/util/ArrayList;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 291
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 292
    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->dist(FFFF)F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    .line 293
    return-object v0

    .line 296
    :cond_0
    new-instance v8, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v8}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>()V

    move v6, v1

    move v7, v2

    .line 297
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    int-to-float v0, v6

    sget v1, Lcom/android/launcher3/InvariantDeviceProfile;->KNEARESTNEIGHBOR:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 298
    new-instance v9, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v9, v0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 299
    iget v3, v9, Lcom/android/launcher3/InvariantDeviceProfile;->minWidthDps:F

    iget v4, v9, Lcom/android/launcher3/InvariantDeviceProfile;->minHeightDps:F

    sget v5, Lcom/android/launcher3/InvariantDeviceProfile;->WEIGHT_POWER:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/InvariantDeviceProfile;->weight(FFFFF)F

    move-result v0

    .line 300
    add-float v1, v7, v0

    .line 301
    invoke-direct {v9, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->multiply(F)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->add(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 297
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_0

    .line 303
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v7

    invoke-direct {v8, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->multiply(F)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    return-object v0
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getAllAppsButtonRank()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
