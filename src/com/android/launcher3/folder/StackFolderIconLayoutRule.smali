.class public Lcom/android/launcher3/folder/StackFolderIconLayoutRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;


# instance fields
.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field private mMaxPerspectiveShift:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clipToBackground()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->scaleForItem(II)F

    move-result v0

    .line 55
    rsub-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, -0x1

    .line 56
    int-to-float v1, v1

    mul-float/2addr v1, v6

    div-float/2addr v1, v7

    .line 58
    sub-float v2, v6, v1

    iget v3, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mMaxPerspectiveShift:F

    mul-float/2addr v2, v3

    .line 59
    iget v3, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mBaselineIconSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 60
    sub-float v4, v6, v0

    iget v5, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mBaselineIconSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    .line 64
    iget v5, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mAvailableSpaceInPreview:I

    int-to-float v5, v5

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    sub-float v2, v5, v2

    .line 65
    iget v4, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mAvailableSpaceInPreview:I

    int-to-float v4, v4

    sub-float v3, v4, v3

    div-float/2addr v3, v7

    .line 66
    iget v4, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mBaselineIconScale:F

    mul-float/2addr v0, v4

    .line 67
    sub-float v1, v6, v1

    const/high16 v4, 0x42a00000    # 80.0f

    mul-float/2addr v1, v4

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v1, v4

    .line 69
    if-nez p3, :cond_0

    .line 70
    new-instance p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p3, v3, v2, v0, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    .line 75
    :goto_0
    return-object p3

    .line 72
    :cond_0
    invoke-virtual {p3, v3, v2, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    .line 73
    iput v1, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->overlayAlpha:F

    goto :goto_0
.end method

.method public getEnterIndex()I
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "hasEnterExitIndices not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExitIndex()I
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "hasEnterExitIndices not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIconSize()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mBaselineIconSize:I

    int-to-float v0, v0

    return v0
.end method

.method public hasEnterExitIndices()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public init(IFZ)V
    .locals 3

    .prologue
    .line 37
    iput p1, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mAvailableSpaceInPreview:I

    .line 40
    iget v0, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mAvailableSpaceInPreview:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 42
    const v1, 0x3f970a3e    # 1.1800001f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 44
    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mBaselineIconScale:F

    .line 46
    iget v0, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mBaselineIconScale:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mBaselineIconSize:I

    .line 47
    iget v0, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mBaselineIconSize:I

    int-to-float v0, v0

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;->mMaxPerspectiveShift:F

    .line 48
    return-void
.end method

.method public maxNumItems()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x3

    return v0
.end method

.method public scaleForItem(II)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 91
    rsub-int/lit8 v0, p1, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 92
    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 93
    sub-float v0, v2, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method
