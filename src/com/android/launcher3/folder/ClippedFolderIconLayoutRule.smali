.class public Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;


# instance fields
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
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    .line 4
    return-void
.end method

.method private getGridPosition(II[F)V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-direct {p0, v5, v3, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    .line 79
    aget v0, p3, v5

    .line 80
    aget v1, p3, v6

    .line 82
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    .line 83
    aget v2, p3, v5

    sub-float/2addr v2, v0

    .line 84
    aget v3, p3, v6

    sub-float/2addr v3, v1

    .line 86
    int-to-float v4, p2

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    aput v0, p3, v5

    .line 87
    int-to-float v0, p1

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    aput v0, p3, v6

    .line 88
    return-void
.end method

.method private getPosition(II[F)V
    .locals 12

    .prologue
    .line 92
    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 96
    iget-boolean v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    .line 99
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v4, v2

    .line 101
    :goto_1
    const-wide/16 v2, 0x0

    .line 102
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 103
    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 107
    :cond_0
    :goto_2
    int-to-double v6, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    .line 112
    const/4 v2, 0x4

    if-ne v5, v2, :cond_5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 113
    const/4 p1, 0x2

    .line 119
    :cond_1
    :goto_3
    iget v2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    add-int/lit8 v3, v5, -0x2

    int-to-float v3, v3

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v6

    .line 120
    const/high16 v6, 0x40000000    # 2.0f

    .line 119
    div-float/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v3, v6

    mul-float/2addr v2, v3

    .line 121
    int-to-double v6, p1

    int-to-double v8, v5

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    div-double v8, v10, v8

    mul-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    .line 123
    iget v3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(II)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 128
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

    .line 129
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

    .line 131
    return-void

    .line 96
    :cond_2
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    .line 99
    :cond_3
    const/4 v2, -0x1

    move v4, v2

    goto :goto_1

    .line 104
    :cond_4
    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 105
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    goto :goto_2

    .line 114
    :cond_5
    const/4 v2, 0x4

    if-ne v5, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 115
    const/4 p1, 0x3

    goto :goto_3
.end method


# virtual methods
.method public clipToBackground()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(II)F

    move-result v0

    .line 42
    invoke-virtual {p0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getExitIndex()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v4, v2, v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    aget v1, v1, v4

    .line 58
    iget-object v2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    aget v2, v2, v5

    .line 60
    if-nez p3, :cond_3

    .line 61
    new-instance p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p3, v1, v2, v0, v6}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    .line 66
    :goto_1
    return-object p3

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getEnterIndex()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v5, v2, v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x4

    if-lt p1, v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    iget v2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    div-float/2addr v2, v7

    iget v3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    aput v2, v3, v5

    aput v2, v1, v4

    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p3, v1, v2, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    .line 64
    iput v6, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->overlayAlpha:F

    goto :goto_1
.end method

.method public getEnterIndex()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, -0x3

    return v0
.end method

.method public getExitIndex()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, -0x2

    return v0
.end method

.method public getIconSize()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    return v0
.end method

.method public hasEnterExitIndices()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public init(IFZ)V
    .locals 2

    .prologue
    .line 27
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    .line 28
    int-to-float v0, p1

    const v1, 0x3faa3d71    # 1.33f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    .line 29
    iput p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    .line 30
    iput-boolean p3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    .line 31
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    .line 32
    return-void
.end method

.method public maxNumItems()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x4

    return v0
.end method

.method public scaleForItem(II)F
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 138
    const v0, 0x3f147ae1    # 0.58f

    .line 145
    :goto_0
    iget v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    mul-float/2addr v0, v1

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 140
    const v0, 0x3f07ae14    # 0.53f

    goto :goto_0

    .line 142
    :cond_1
    const v0, 0x3ef5c28f    # 0.48f

    goto :goto_0
.end method
