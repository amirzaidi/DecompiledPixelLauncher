.class public Lcom/android/launcher3/DeviceProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allAppsButtonVisualSize:I

.field public allAppsCellHeightPx:I

.field public allAppsIconDrawablePaddingPx:I

.field public allAppsIconSizePx:I

.field public allAppsIconTextSizePx:F

.field public allAppsNumCols:I

.field public allAppsNumPredictiveCols:I

.field public final appWidgetScale:Landroid/graphics/PointF;

.field public final availableHeightPx:I

.field public final availableWidthPx:I

.field public cellHeightPx:I

.field public final cellLayoutBottomPaddingPx:I

.field public final cellLayoutPaddingLeftRightPx:I

.field public cellWidthPx:I

.field private final defaultPageSpacingPx:I

.field public final defaultWidgetPadding:Landroid/graphics/Rect;

.field private final desiredWorkspaceLeftRightMarginPx:I

.field public dropTargetBarSizePx:I

.field public final edgeMarginPx:I

.field public folderBackgroundOffset:I

.field public folderCellHeightPx:I

.field public folderCellWidthPx:I

.field public folderChildDrawablePaddingPx:I

.field public folderChildIconSizePx:I

.field public folderChildTextSizePx:I

.field public folderIconPreviewPadding:I

.field public folderIconSizePx:I

.field public final heightPx:I

.field public hotseatBarBottomPaddingPx:I

.field public hotseatBarLeftNavBarLeftPaddingPx:I

.field public hotseatBarLeftNavBarRightPaddingPx:I

.field public hotseatBarRightNavBarLeftPaddingPx:I

.field public hotseatBarRightNavBarRightPaddingPx:I

.field public hotseatBarSizePx:I

.field public hotseatBarTopPaddingPx:I

.field public hotseatCellHeightPx:I

.field public iconDrawablePaddingOriginalPx:I

.field public iconDrawablePaddingPx:I

.field public iconSizePx:I

.field public iconTextSizePx:I

.field public final inv:Lcom/android/launcher3/InvariantDeviceProfile;

.field public final isLandscape:Z

.field public final isLargeTablet:Z

.field public final isPhone:Z

.field public final isTablet:Z

.field public mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

.field private mInsets:Landroid/graphics/Rect;

.field private mListeners:Ljava/util/ArrayList;

.field private final overviewModeBarItemWidthPx:I

.field private final overviewModeBarSpacerWidthPx:I

.field private final overviewModeIconZoneRatio:F

.field private final overviewModeMaxIconZoneHeightPx:I

.field private final overviewModeMinIconZoneHeightPx:I

.field private final pageIndicatorLandLeftNavBarGutterPx:I

.field private final pageIndicatorLandRightNavBarGutterPx:I

.field private final pageIndicatorLandWorkspaceOffsetPx:I

.field private pageIndicatorSizePx:I

.field private final topWorkspacePadding:I

.field public final transposeLayoutWithOrientation:Z

.field public final widthPx:I

.field public workspaceCellPaddingXPx:I

.field public workspaceSpringLoadShrinkFactor:F

.field public final workspaceSpringLoadedBottomSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    .line 157
    iput-object p2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 158
    iput-boolean p7, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 164
    const v0, 0x7f0f0003

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 165
    const v0, 0x7f0f0004

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    .line 166
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    .line 170
    const v0, 0x7f0f0006

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 169
    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const/4 v0, 0x2

    .line 172
    :goto_1
    invoke-static {p1, v0}, Lcom/android/launcher3/DeviceProfile;->getContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 178
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v6, 0x0

    invoke-static {v3, v0, v6}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    .line 181
    const v0, 0x7f0b0010

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 184
    const v0, 0x7f0b001d

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 183
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    .line 186
    const v0, 0x7f0b001e

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 185
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBottomPaddingPx:I

    .line 188
    const v0, 0x7f0b0011

    .line 187
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorSizePx:I

    .line 190
    const v0, 0x7f0b0013

    .line 189
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandLeftNavBarGutterPx:I

    .line 192
    const v0, 0x7f0b0014

    .line 191
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandRightNavBarGutterPx:I

    .line 194
    const v0, 0x7f0b0045

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 193
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandWorkspaceOffsetPx:I

    .line 196
    const v0, 0x7f0b001b

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 195
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    .line 198
    const v0, 0x7f0b001a

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    .line 200
    const v0, 0x7f0b0016

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 199
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    .line 202
    const v0, 0x7f0b0017

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 201
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    .line 204
    const v0, 0x7f0b0018

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 203
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarItemWidthPx:I

    .line 206
    const v0, 0x7f0b0019

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 205
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarSpacerWidthPx:I

    .line 208
    const v0, 0x7f0d0001

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v0, v6

    .line 207
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeIconZoneRatio:F

    .line 210
    const v0, 0x7f0b0015

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 209
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    .line 211
    const v0, 0x7f0b0029

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    .line 213
    const v0, 0x7f0b001c

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 212
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    .line 215
    const v0, 0x7f0b001f

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    .line 218
    const v0, 0x7f0b0020

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 217
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    .line 220
    const v0, 0x7f0b0021

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 219
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    .line 222
    const v0, 0x7f0b0023

    .line 221
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarLeftNavBarRightPaddingPx:I

    .line 224
    const v0, 0x7f0b0024

    .line 223
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarRightNavBarRightPaddingPx:I

    .line 226
    const v0, 0x7f0b0027

    .line 225
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarLeftNavBarLeftPaddingPx:I

    .line 228
    const v0, 0x7f0b0028

    .line 227
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarRightNavBarLeftPaddingPx:I

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    invoke-static {v0, v4}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    .line 229
    :goto_3
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 235
    iput p5, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 236
    iput p6, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 237
    if-eqz p7, :cond_5

    .line 238
    iget v0, p4, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 239
    iget v0, p3, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 246
    :goto_4
    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 249
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    .line 250
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_6

    .line 251
    :goto_5
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v0, v1

    .line 257
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorSizePx:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 260
    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 263
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/launcher3/DeviceProfile;->computeAllAppsButtonSize(Landroid/content/Context;)V

    .line 266
    new-instance v0, Lcom/android/launcher3/badge/BadgeRenderer;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {v0, v3, v1}, Lcom/android/launcher3/badge/BadgeRenderer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    .line 267
    return-void

    :cond_1
    move v0, v1

    .line 166
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 174
    goto/16 :goto_1

    .line 182
    :cond_3
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    goto/16 :goto_2

    .line 231
    :cond_4
    const v0, 0x7f0b0022

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 232
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    .line 231
    add-int/2addr v0, v6

    .line 232
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    .line 231
    add-int/2addr v0, v6

    goto :goto_3

    .line 241
    :cond_5
    iget v0, p3, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 242
    iget v0, p4, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    goto :goto_4

    :cond_6
    move v2, v1

    .line 250
    goto :goto_5
.end method

.method private adjustToHideWorkspaceLabels()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 305
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 306
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 307
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 312
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    mul-int/2addr v0, v1

    .line 313
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    add-int/2addr v1, v2

    .line 314
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v2

    .line 313
    add-int/2addr v1, v2

    .line 315
    mul-int/lit8 v0, v0, 0x2

    .line 313
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 316
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static calculateCellHeight(II)I
    .locals 1

    .prologue
    .line 567
    div-int v0, p0, p1

    return v0
.end method

.method public static calculateCellWidth(II)I
    .locals 1

    .prologue
    .line 564
    div-int v0, p0, p1

    return v0
.end method

.method private computeAllAppsButtonSize(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 324
    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 325
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 326
    const v2, 0x7f0b003b

    .line 325
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsButtonVisualSize:I

    .line 327
    return-void
.end method

.method private static getContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 2

    .prologue
    .line 761
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 762
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 763
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentHeight()I
    .locals 2

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 721
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 720
    :goto_0
    return v0

    .line 722
    :cond_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getCurrentWidth()I
    .locals 2

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 715
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 714
    :goto_0
    return v0

    .line 716
    :cond_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getVisibleChildCount(Landroid/view/ViewGroup;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 585
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 586
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 587
    add-int/lit8 v1, v1, 0x1

    .line 585
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_1
    return v1
.end method

.method private getWorkspacePageSpacing()I
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    if-eqz v0, :cond_1

    .line 547
    :cond_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    return v0

    .line 552
    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private updateAvailableDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 330
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p2, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 333
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    .line 334
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 335
    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 336
    int-to-float v1, v1

    div-float v0, v1, v0

    .line 337
    invoke-direct {p0, v0, p2, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 339
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateAvailableFolderCellDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 340
    return-void
.end method

.method private updateAvailableFolderCellDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 389
    const v0, 0x7f0b0067

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 390
    const v1, 0x7f0b0068

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 389
    add-int/2addr v0, v1

    .line 391
    const v1, 0x7f0b0069

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v1

    .line 389
    add-int/2addr v0, v1

    .line 393
    invoke-direct {p0, v5, p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 396
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 399
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 400
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 401
    int-to-float v2, v2

    div-float v0, v2, v0

    .line 404
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    .line 405
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    .line 406
    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 408
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 409
    cmpg-float v1, v0, v5

    if-gez v1, :cond_0

    .line 410
    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 412
    :cond_0
    return-void
.end method

.method private updateFolderCellSize(FLandroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 417
    const v0, 0x7f0b0066

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 416
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    .line 419
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    .line 420
    const v1, 0x7f0b0064

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 421
    const v2, 0x7f0b0065

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 423
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 424
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    .line 426
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x3

    .line 425
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    .line 427
    return-void
.end method

.method private updateIconSize(FLandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .locals 5

    .prologue
    const v4, 0x7f0d0005

    const/high16 v3, 0x42c80000    # 100.0f

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeIconSize:F

    .line 345
    :goto_0
    invoke-static {v0, p3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    invoke-static {v0, p3}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 347
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 349
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 350
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v0, v1

    .line 351
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v1

    .line 350
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 354
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 355
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 356
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    .line 357
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->adjustToHideWorkspaceLabels()V

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 368
    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    .line 370
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_3

    .line 371
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v0, v1

    .line 372
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorSizePx:I

    .line 371
    sub-int/2addr v0, v1

    .line 372
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    .line 371
    sub-int/2addr v0, v1

    .line 373
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 375
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 376
    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 374
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    .line 383
    :goto_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    .line 384
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 385
    const v0, 0x7f0b0062

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderIconPreviewPadding:I

    .line 386
    return-void

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    goto/16 :goto_0

    .line 379
    :cond_3
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 378
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    goto :goto_1
.end method


# virtual methods
.method public addLauncherLayoutChangedListener(Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    return-void
.end method

.method public getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v1, v2

    .line 531
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 532
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v3, v4

    .line 533
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr v4, v5

    .line 530
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 536
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 537
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v2, v3

    .line 538
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v3, v4

    .line 539
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v4, v5

    .line 540
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorSizePx:I

    .line 539
    sub-int/2addr v4, v5

    .line 540
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 539
    sub-int/2addr v4, v5

    .line 536
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getCellHeight(I)I
    .locals 1

    .prologue
    .line 726
    packed-switch p1, :pswitch_data_0

    .line 735
    const/4 v0, 0x0

    return v0

    .line 728
    :pswitch_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    return v0

    .line 730
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    return v0

    .line 732
    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    return v0

    .line 726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCellSize()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 460
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 463
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    .line 464
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    .line 465
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    mul-int/lit8 v3, v3, 0x2

    .line 464
    sub-int/2addr v2, v3

    .line 465
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 464
    invoke-static {v2, v3}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 466
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v1

    .line 467
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBottomPaddingPx:I

    .line 466
    sub-int/2addr v1, v2

    .line 467
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 466
    invoke-static {v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 468
    return-object v0
.end method

.method public final getContainerPadding()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 744
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 745
    filled-new-array {v4, v4}, [I

    move-result-object v0

    return-object v0

    .line 749
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 750
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    return-object v1
.end method

.method getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/android/launcher3/DeviceProfile;
    .locals 8

    .prologue
    .line 273
    new-instance v0, Lcom/android/launcher3/DeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    .line 274
    iget-boolean v7, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    move-object v1, p1

    move-object v3, p2

    move-object v4, p2

    .line 273
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    .line 277
    invoke-direct {v0}, Lcom/android/launcher3/DeviceProfile;->adjustToHideWorkspaceLabels()V

    .line 281
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 282
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 283
    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 285
    return-object v0
.end method

.method getOverviewModeButtonBarHeight()I
    .locals 3

    .prologue
    .line 557
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeIconZoneRatio:F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 558
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    .line 559
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 558
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 560
    return v0
.end method

.method public getSearchBarDimensForWidgetOpts()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v0

    .line 449
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 450
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v1, v2

    .line 449
    sub-int/2addr v0, v1

    .line 450
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    .line 449
    div-int/2addr v0, v1

    .line 451
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 449
    add-int/2addr v0, v1

    .line 455
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    .line 453
    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getTotalWorkspacePadding()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 473
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 480
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandLeftNavBarGutterPx:I

    add-int/2addr v0, v1

    .line 485
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarLeftNavBarRightPaddingPx:I

    add-int/2addr v1, v2

    .line 486
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarLeftNavBarLeftPaddingPx:I

    .line 485
    add-int/2addr v1, v2

    .line 487
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 485
    sub-int/2addr v1, v2

    .line 488
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 483
    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 521
    :goto_0
    return-object p1

    .line 490
    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandRightNavBarGutterPx:I

    .line 492
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarRightNavBarRightPaddingPx:I

    add-int/2addr v1, v2

    .line 493
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarRightNavBarLeftPaddingPx:I

    .line 492
    add-int/2addr v1, v2

    .line 494
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 490
    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 497
    :cond_2
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorSizePx:I

    add-int/2addr v0, v1

    .line 498
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_3

    .line 501
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v1

    .line 502
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentHeight()I

    move-result v2

    .line 504
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v3, v4

    .line 505
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v4, v5

    .line 504
    add-int/2addr v3, v4

    sub-int v3, v1, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 506
    int-to-float v3, v3

    .line 507
    int-to-float v1, v1

    const v4, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v4

    .line 506
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 508
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 509
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    mul-int/2addr v3, v4

    .line 508
    sub-int/2addr v2, v3

    .line 509
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    .line 508
    sub-int/2addr v2, v3

    .line 510
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    .line 508
    sub-int/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 511
    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    .line 512
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 511
    invoke-virtual {p1, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 515
    :cond_3
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 516
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    .line 517
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 515
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public isVerticalBarLayout()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout(Lcom/android/launcher3/Launcher;Z)V
    .locals 9

    .prologue
    const/16 v8, 0x50

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 595
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    .line 598
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getSearchBarDimensForWidgetOpts()Landroid/graphics/Point;

    move-result-object v1

    .line 599
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v3

    .line 600
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 601
    iget v4, v1, Landroid/graphics/Point;->x:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 602
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 603
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 604
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    const v0, 0x7f0e0025

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 608
    invoke-virtual {p0, v5}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 609
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 610
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 609
    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/android/launcher3/PagedView;->setPadding(IIII)V

    .line 611
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePageSpacing()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    .line 614
    const v0, 0x7f0e0026

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    .line 615
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 620
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 621
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 622
    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 623
    if-eqz v2, :cond_4

    .line 626
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_2

    .line 627
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarLeftNavBarRightPaddingPx:I

    .line 629
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lez v3, :cond_3

    .line 630
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarLeftNavBarLeftPaddingPx:I

    .line 633
    :goto_1
    const/4 v5, 0x5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 634
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    add-int/2addr v5, v2

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 636
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 638
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 640
    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 641
    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 642
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBottomPaddingPx:I

    add-int/2addr v7, v8

    .line 638
    invoke-virtual {v5, v3, v6, v2, v7}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 665
    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    const v0, 0x7f0e004c

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 669
    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 671
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 672
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_6

    .line 673
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 677
    :goto_3
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 684
    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/ViewGroup;

    move-result-object v1

    .line 689
    if-eqz v1, :cond_1

    .line 690
    invoke-direct {p0, v1}, Lcom/android/launcher3/DeviceProfile;->getVisibleChildCount(Landroid/view/ViewGroup;)I

    move-result v0

    .line 691
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarItemWidthPx:I

    mul-int/2addr v2, v0

    .line 692
    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarSpacerWidthPx:I

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 694
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 695
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 696
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getOverviewModeButtonBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 697
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    :cond_1
    const v0, 0x7f0e002b

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 702
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v1, v2

    .line 703
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 704
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 703
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 706
    if-eqz p2, :cond_8

    .line 707
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-ltz v1, :cond_8

    .line 708
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;->onLauncherLayoutChanged()V

    .line 707
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5

    .line 628
    :cond_2
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarRightNavBarRightPaddingPx:I

    goto/16 :goto_0

    .line 631
    :cond_3
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarRightNavBarLeftPaddingPx:I

    goto/16 :goto_1

    .line 643
    :cond_4
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_5

    .line 645
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 646
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 647
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 648
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    .line 649
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    .line 648
    add-int/2addr v5, v6

    .line 650
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    .line 651
    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v3, v7

    .line 652
    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBottomPaddingPx:I

    add-int/2addr v7, v8

    .line 648
    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 656
    :cond_5
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 657
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 658
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 659
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    .line 660
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    .line 659
    add-int/2addr v5, v6

    .line 661
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    .line 662
    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v3, v7

    .line 663
    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBottomPaddingPx:I

    add-int/2addr v7, v8

    .line 659
    invoke-virtual {v2, v5, v6, v3, v7}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 675
    :cond_6
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandWorkspaceOffsetPx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 680
    :cond_7
    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 681
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorSizePx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 682
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_4

    .line 711
    :cond_8
    return-void
.end method

.method public removeLauncherLayoutChangedListener(Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    :cond_0
    return-void
.end method

.method shouldFadeAdjacentWorkspaceScreens()Z
    .locals 1

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldIgnoreLongPressToOverview(F)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 754
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    if-eq p0, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    if-eq p0, v0, :cond_1

    move v0, v1

    .line 755
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move v3, v1

    .line 756
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_3

    move v4, v1

    .line 757
    :goto_2
    if-nez v0, :cond_4

    if-nez v3, :cond_0

    move v1, v4

    :cond_0
    :goto_3
    return v1

    :cond_1
    move v0, v2

    .line 754
    goto :goto_0

    :cond_2
    move v3, v2

    .line 755
    goto :goto_1

    :cond_3
    move v4, v2

    .line 756
    goto :goto_2

    :cond_4
    move v1, v2

    .line 757
    goto :goto_3
.end method

.method public updateAppsViewNumCols()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsNumPredictiveCols:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsNumCols:I

    .line 435
    return-void
.end method

.method public updateInsets(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 431
    return-void
.end method
