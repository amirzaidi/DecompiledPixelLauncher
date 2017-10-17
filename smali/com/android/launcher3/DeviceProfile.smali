.class public Lcom/android/launcher3/DeviceProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allAppsButtonVisualSize:I

.field public allAppsIconDrawablePaddingPx:I

.field public allAppsIconSizePx:I

.field public allAppsIconTextSizePx:F

.field public allAppsNumCols:I

.field public allAppsNumPredictiveCols:I

.field public final appWidgetScale:Landroid/graphics/PointF;

.field public final availableHeightPx:I

.field public final availableWidthPx:I

.field public cellHeightPx:I

.field public cellWidthPx:I

.field private final defaultPageSpacingPx:I

.field public final defaultWidgetPadding:Landroid/graphics/Rect;

.field private desiredWorkspaceLeftRightMarginPx:I

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

.field private hotseatBarBottomPaddingPx:I

.field public hotseatBarHeightPx:I

.field private hotseatBarTopPaddingPx:I

.field public hotseatCellHeightPx:I

.field public hotseatCellWidthPx:I

.field public hotseatIconSizePx:I

.field private hotseatLandGutterPx:I

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

.field private final pageIndicatorHeightPx:I

.field private final pageIndicatorLandGutterLeftNavBarPx:I

.field private final pageIndicatorLandGutterRightNavBarPx:I

.field private final pageIndicatorLandWorkspaceOffsetPx:I

.field private final topWorkspacePadding:I

.field public final transposeLayoutWithOrientation:Z

.field public final widthPx:I

.field public workspaceSpringLoadShrinkFactor:F

.field public final workspaceSpringLoadedBottomSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    .line 147
    iput-object p2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 148
    iput-boolean p7, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 154
    const v0, 0x7f0f0003

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 155
    const v0, 0x7f0f0004

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    .line 156
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    .line 160
    const v0, 0x7f0f0006

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 159
    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    .line 162
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v4, 0x0

    invoke-static {p1, v0, v4}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    .line 165
    const v0, 0x7f0b0010

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 166
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 168
    const v0, 0x7f0b0011

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 167
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    .line 170
    const v0, 0x7f0b0013

    .line 169
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandGutterLeftNavBarPx:I

    .line 172
    const v0, 0x7f0b003c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 171
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandWorkspaceOffsetPx:I

    .line 174
    const v0, 0x7f0b0014

    .line 173
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandGutterRightNavBarPx:I

    .line 176
    const v0, 0x7f0b001e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 175
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    .line 178
    const v0, 0x7f0b001d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 177
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    .line 180
    const v0, 0x7f0b0016

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 179
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    .line 182
    const v0, 0x7f0b0017

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 181
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    .line 184
    const v0, 0x7f0b0018

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 183
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarItemWidthPx:I

    .line 186
    const v0, 0x7f0b0019

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 185
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarSpacerWidthPx:I

    .line 188
    const v0, 0x7f0d0001

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    .line 187
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeIconZoneRatio:F

    .line 190
    const v0, 0x7f0b0015

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 189
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    .line 191
    const v0, 0x7f0b0020

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    .line 193
    const v0, 0x7f0b001f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 192
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    .line 194
    const v0, 0x7f0b001a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    .line 196
    const v0, 0x7f0b001b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 195
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    .line 197
    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    .line 198
    const v0, 0x7f0b001c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatLandGutterPx:I

    .line 201
    iput p5, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 202
    iput p6, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 203
    if-eqz p7, :cond_1

    .line 204
    iget v0, p4, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 205
    iget v0, p3, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 212
    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeviceProfile;->computeAllAppsButtonSize(Landroid/content/Context;)V

    .line 216
    new-instance v0, Lcom/android/launcher3/badge/BadgeRenderer;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/badge/BadgeRenderer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    .line 217
    return-void

    :cond_0
    move v0, v1

    .line 156
    goto/16 :goto_0

    .line 207
    :cond_1
    iget v0, p3, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 208
    iget v0, p4, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    goto :goto_1
.end method

.method public static calculateCellHeight(II)I
    .locals 1

    .prologue
    .line 489
    div-int v0, p0, p1

    return v0
.end method

.method public static calculateCellWidth(II)I
    .locals 1

    .prologue
    .line 486
    div-int v0, p0, p1

    return v0
.end method

.method private computeAllAppsButtonSize(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 262
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatIconSizePx:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    const v2, 0x7f0b002f

    .line 262
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsButtonVisualSize:I

    .line 264
    return-void
.end method

.method private getCurrentHeight()I
    .locals 2

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 631
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 630
    :goto_0
    return v0

    .line 632
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
    .line 624
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 625
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 624
    :goto_0
    return v0

    .line 626
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

    .line 507
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 508
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 509
    add-int/lit8 v1, v1, 0x1

    .line 507
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_1
    return v1
.end method

.method private getWorkspacePageSpacing()I
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    return v0

    .line 474
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
    .line 267
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0, p2, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 270
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    .line 271
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    .line 272
    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 273
    int-to-float v1, v1

    div-float v0, v1, v0

    .line 274
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    .line 277
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateAvailableFolderCellDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 278
    return-void
.end method

.method private updateAvailableFolderCellDimensions(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 317
    const v0, 0x7f0b005d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 318
    const v1, 0x7f0b005e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 317
    add-int/2addr v0, v1

    .line 319
    const v1, 0x7f0b005f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v1

    .line 317
    add-int/2addr v0, v1

    .line 321
    invoke-direct {p0, v5, p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 324
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v1, v1, 0x4

    .line 327
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 328
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 329
    int-to-float v2, v2

    div-float v0, v2, v0

    .line 332
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    .line 333
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    .line 334
    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 336
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 337
    cmpg-float v1, v0, v5

    if-gez v1, :cond_0

    .line 338
    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 340
    :cond_0
    return-void
.end method

.method private updateFolderCellSize(FLandroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 345
    const v0, 0x7f0b005c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 344
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    .line 347
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    .line 348
    const v1, 0x7f0b005a

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 349
    const v2, 0x7f0b005b

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 351
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 352
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    .line 354
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x3

    .line 353
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    .line 355
    return-void
.end method

.method private updateIconSize(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .locals 5

    .prologue
    const v4, 0x7f0d0005

    const/high16 v3, 0x42c80000    # 100.0f

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:F

    invoke-static {v0, p4}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:F

    invoke-static {v0, p4}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 284
    iput p2, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatIconSize:F

    invoke-static {v0, p4}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatIconSizePx:I

    .line 286
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 287
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    .line 288
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 290
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 291
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v0, v1

    .line 292
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v1

    .line 291
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 295
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellWidthPx:I

    .line 296
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v0, v1

    .line 300
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    .line 299
    sub-int/2addr v0, v1

    .line 300
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    .line 299
    sub-int/2addr v0, v1

    .line 301
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 303
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 304
    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 302
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    .line 311
    :goto_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    .line 312
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 313
    const v0, 0x7f0b0058

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderIconPreviewPadding:I

    .line 314
    return-void

    .line 307
    :cond_0
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 306
    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    goto :goto_0
.end method


# virtual methods
.method public addLauncherLayoutChangedListener(Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    return-void
.end method

.method public getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v1, v2

    .line 453
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 454
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v3, v4

    .line 455
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr v4, v5

    .line 452
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 458
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 459
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v2, v3

    .line 460
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v3, v4

    .line 461
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    sub-int/2addr v4, v5

    .line 462
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 461
    sub-int/2addr v4, v5

    .line 458
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getCellHeight(I)I
    .locals 1

    .prologue
    .line 636
    packed-switch p1, :pswitch_data_0

    .line 645
    const/4 v0, 0x0

    return v0

    .line 638
    :pswitch_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    return v0

    .line 640
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    return v0

    .line 642
    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    return v0

    .line 636
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
    .line 388
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    .line 392
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v2, v3}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 393
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 394
    return-object v0
.end method

.method public final getContainerPadding()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 654
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 655
    filled-new-array {v2, v2}, [I

    move-result-object v0

    return-object v0

    .line 659
    :cond_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandGutterRightNavBarPx:I

    .line 660
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    .line 659
    add-int/2addr v0, v1

    .line 660
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatLandGutterPx:I

    .line 659
    add-int/2addr v0, v1

    .line 660
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 659
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 661
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    return-object v1
.end method

.method getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/android/launcher3/DeviceProfile;
    .locals 8

    .prologue
    .line 223
    new-instance v0, Lcom/android/launcher3/DeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, p2, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    .line 224
    iget-boolean v7, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    move-object v1, p1

    move-object v3, p2

    move-object v4, p2

    .line 223
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    .line 227
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 228
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    .line 229
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v2

    .line 228
    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 232
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    iput v1, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    .line 236
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 237
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 238
    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 240
    return-object v0
.end method

.method getOverviewModeButtonBarHeight()I
    .locals 3

    .prologue
    .line 479
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeIconZoneRatio:F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 480
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMaxIconZoneHeightPx:I

    .line 481
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeMinIconZoneHeightPx:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 480
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 482
    return v0
.end method

.method public getSearchBarDimensForWidgetOpts()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 371
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v0

    .line 377
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 378
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v1, v2

    .line 377
    sub-int/2addr v0, v1

    .line 378
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    .line 377
    div-int/2addr v0, v1

    .line 379
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 377
    add-int/2addr v0, v1

    .line 383
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    .line 381
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
    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 399
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

    .line 409
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandGutterLeftNavBarPx:I

    add-int/2addr v0, v1

    .line 413
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatLandGutterPx:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v2, v2, 0x2

    .line 412
    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 443
    :goto_0
    return-object p1

    .line 415
    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandGutterRightNavBarPx:I

    .line 416
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatLandGutterPx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v2, v2, 0x2

    .line 415
    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 419
    :cond_2
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    add-int/2addr v0, v1

    .line 420
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_3

    .line 423
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v1

    .line 424
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentHeight()I

    move-result v2

    .line 426
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v3, v4

    .line 427
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v4, v5

    .line 426
    add-int/2addr v3, v4

    sub-int v3, v1, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 428
    int-to-float v3, v3

    .line 429
    int-to-float v1, v1

    const v4, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v4

    .line 428
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 430
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 431
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    mul-int/2addr v3, v4

    .line 430
    sub-int/2addr v2, v3

    .line 431
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    .line 430
    sub-int/2addr v2, v3

    .line 432
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    .line 430
    sub-int/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 433
    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    .line 434
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 433
    invoke-virtual {p1, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 437
    :cond_3
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 438
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->topWorkspacePadding:I

    .line 439
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    .line 437
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public isVerticalBarLayout()Z
    .locals 1

    .prologue
    .line 498
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

    .line 517
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    .line 520
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getSearchBarDimensForWidgetOpts()Landroid/graphics/Point;

    move-result-object v1

    .line 521
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v3

    .line 522
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 523
    iget v4, v1, Landroid/graphics/Point;->x:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 524
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 525
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 526
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    const v0, 0x7f0e0022

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView;

    .line 530
    invoke-virtual {p0, v5}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 531
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 532
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 531
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/launcher3/PagedView;->setPadding(IIII)V

    .line 533
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePageSpacing()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    .line 537
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getQsbContainer()Landroid/view/View;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 539
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 540
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    const v0, 0x7f0e0023

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    .line 545
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 550
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 551
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCurrentWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 552
    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 553
    if-eqz v2, :cond_3

    .line 556
    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 557
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 558
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 559
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 560
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 559
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 579
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    const v0, 0x7f0e0043

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_1

    .line 584
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 585
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 586
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_5

    .line 587
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandGutterLeftNavBarPx:I

    add-int/2addr v2, v4

    .line 588
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 587
    sub-int/2addr v2, v4

    .line 588
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandWorkspaceOffsetPx:I

    .line 587
    sub-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 593
    :cond_0
    :goto_1
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 600
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/ViewGroup;

    move-result-object v1

    .line 605
    if-eqz v1, :cond_2

    .line 606
    invoke-direct {p0, v1}, Lcom/android/launcher3/DeviceProfile;->getVisibleChildCount(Landroid/view/ViewGroup;)I

    move-result v0

    .line 607
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarItemWidthPx:I

    mul-int/2addr v2, v0

    .line 608
    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->overviewModeBarSpacerWidthPx:I

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 610
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 611
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 612
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getOverviewModeButtonBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 613
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    :cond_2
    if-eqz p2, :cond_7

    .line 617
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_7

    .line 618
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;->onLauncherLayoutChanged()V

    .line 617
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 561
    :cond_3
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_4

    .line 563
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 564
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 565
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 566
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    .line 567
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v7

    .line 568
    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    .line 566
    invoke-virtual {v2, v5, v6, v4, v7}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 572
    :cond_4
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 573
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 574
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 575
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    .line 576
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v7

    .line 577
    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    .line 575
    invoke-virtual {v2, v5, v6, v4, v7}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 589
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_0

    .line 590
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandGutterRightNavBarPx:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v2, v4

    .line 591
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorLandWorkspaceOffsetPx:I

    .line 590
    sub-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 596
    :cond_6
    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 597
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->pageIndicatorHeightPx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 598
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarHeightPx:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 621
    :cond_7
    return-void
.end method

.method public removeLauncherLayoutChangedListener(Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    return-void
.end method

.method shouldFadeAdjacentWorkspaceScreens()Z
    .locals 1

    .prologue
    .line 502
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

    .line 665
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    if-eq p0, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    if-eq p0, v0, :cond_1

    move v0, v1

    .line 666
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move v3, v1

    .line 667
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

    .line 668
    :goto_2
    if-nez v0, :cond_4

    if-nez v3, :cond_0

    move v1, v4

    :cond_0
    :goto_3
    return v1

    :cond_1
    move v0, v2

    .line 665
    goto :goto_0

    :cond_2
    move v3, v2

    .line 666
    goto :goto_1

    :cond_3
    move v4, v2

    .line 667
    goto :goto_2

    :cond_4
    move v1, v2

    .line 668
    goto :goto_3
.end method

.method public updateAppsViewNumCols()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsNumPredictiveCols:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsNumCols:I

    .line 363
    return-void
.end method

.method public updateInsets(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 359
    return-void
.end method
