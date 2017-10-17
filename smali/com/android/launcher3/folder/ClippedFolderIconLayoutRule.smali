.class public Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;


# instance fields
.field final ITEM_RADIUS_SCALE_FACTOR:F

.field final MAX_RADIUS_DILATION:F

.field final MAX_SCALE:F

.field final MIN_SCALE:F

.field private mAvailableSpace:F

.field private mBaselineIconScale:F

.field private mIconSize:F

.field private mIsRtl:Z

.field private mRadius:F

.field private mTmpPoint:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0x3ef5c28f    # 0.48f

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->MIN_SCALE:F

    .line 17
    const v0, 0x3f147ae1    # 0.58f

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->MAX_SCALE:F

    .line 18
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->MAX_RADIUS_DILATION:F

    .line 19
    const v0, 0x3faa3d71    # 1.33f

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->ITEM_RADIUS_SCALE_FACTOR:F

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    .line 10
    return-void
.end method

.method private getPosition(II[F)V
    .locals 12

    .prologue
    .line 67
    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 71
    iget-boolean v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    .line 74
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v4, v2

    .line 76
    :goto_1
    const-wide/16 v2, 0x0

    .line 77
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 78
    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 82
    :cond_0
    :goto_2
    int-to-double v6, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    .line 87
    const/4 v2, 0x4

    if-ne v5, v2, :cond_5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 88
    const/4 p1, 0x2

    .line 94
    :cond_1
    :goto_3
    iget v2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    add-int/lit8 v3, v5, -0x2

    int-to-float v3, v3

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v6

    .line 95
    const/high16 v6, 0x40000000    # 2.0f

    .line 94
    div-float/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v3, v6

    mul-float/2addr v2, v3

    .line 96
    int-to-double v6, p1

    int-to-double v8, v5

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    div-double v8, v10, v8

    mul-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    .line 98
    iget v3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(II)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 103
    iget v4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-float v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v4, v3

    const/4 v5, 0x0

    aput v4, p3, v5

    .line 104
    iget v4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    neg-float v2, v2

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    double-to-float v0, v0

    add-float/2addr v0, v4

    sub-float/2addr v0, v3

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 106
    return-void

    .line 71
    :cond_2
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    .line 74
    :cond_3
    const/4 v2, -0x1

    move v4, v2

    goto :goto_1

    .line 79
    :cond_4
    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 80
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    goto :goto_2

    .line 89
    :cond_5
    const/4 v2, 0x4

    if-ne v5, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 90
    const/4 p1, 0x3

    goto :goto_3
.end method


# virtual methods
.method public clipToBackground()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(II)F

    move-result v2

    .line 48
    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 49
    iget v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    move v1, v0

    .line 56
    :goto_0
    if-nez p3, :cond_1

    .line 57
    new-instance p3, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p3, v0, v1, v2, v4}, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;-><init>(FFFF)V

    .line 62
    :goto_1
    return-object p3

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 53
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p3, v0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->update(FFF)V

    .line 60
    iput v4, p3, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:F

    goto :goto_1
.end method

.method public getItemsToDisplay(Lcom/android/launcher3/folder/Folder;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 137
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_NEW_FOLDER_ANIMATION:Z

    if-eqz v0, :cond_0

    if-le v2, v5, :cond_0

    .line 141
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    .line 142
    add-int/lit8 v0, v0, -0x2

    .line 145
    :goto_0
    if-lez v0, :cond_0

    .line 146
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(IIZ)V
    .locals 3

    .prologue
    .line 31
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    .line 32
    int-to-float v0, p1

    const v1, 0x3faa3d71    # 1.33f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    .line 33
    int-to-float v0, p2

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    .line 34
    iput-boolean p3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    .line 35
    int-to-float v0, p1

    int-to-float v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    .line 36
    return-void
.end method

.method public maxNumItems()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x4

    return v0
.end method

.method public scaleForItem(II)F
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 113
    const v0, 0x3f147ae1    # 0.58f

    .line 120
    :goto_0
    iget v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    mul-float/2addr v0, v1

    return v0

    .line 114
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 115
    const v0, 0x3f07ae14    # 0.53f

    goto :goto_0

    .line 117
    :cond_1
    const v0, 0x3ef5c28f    # 0.48f

    goto :goto_0
.end method
