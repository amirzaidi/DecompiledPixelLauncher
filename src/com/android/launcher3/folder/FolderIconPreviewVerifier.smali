.class public Lcom/android/launcher3/folder/FolderIconPreviewVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDisplayingUpperLeftQuadrant:Z

.field private mGridCountX:I

.field private final mGridSize:[I

.field private final mMaxGridCountX:I

.field private final mMaxGridCountY:I

.field private final mMaxItemsPerPage:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridSize:[I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mDisplayingUpperLeftQuadrant:Z

    .line 37
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountX:I

    .line 38
    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountY:I

    .line 39
    iget v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountX:I

    iget v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountY:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxItemsPerPage:I

    .line 40
    return-void
.end method


# virtual methods
.method public isItemInPreview(I)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v0

    return v0
.end method

.method public isItemInPreview(II)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-gtz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mDisplayingUpperLeftQuadrant:Z

    if-eqz v2, :cond_2

    .line 69
    :cond_0
    iget v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridCountX:I

    rem-int v2, p2, v2

    .line 70
    iget v3, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridCountX:I

    div-int v3, p2, v3

    .line 71
    if-ge v2, v4, :cond_1

    if-ge v3, v4, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 73
    :cond_2
    sget v2, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-ge p2, v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setFolderInfo(Lcom/android/launcher3/FolderInfo;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 44
    iget v3, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountX:I

    .line 45
    iget v4, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxGridCountY:I

    iget v5, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mMaxItemsPerPage:I

    iget-object v6, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridSize:[I

    move v2, v1

    .line 44
    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/folder/FolderPagedView;->calculateGridSize(IIIIII[I)V

    .line 46
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridSize:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mGridCountX:I

    .line 48
    sget-boolean v2, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_NEW_FOLDER_ANIMATION:Z

    if-eqz v2, :cond_0

    .line 49
    sget-boolean v2, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_LEGACY_FOLDER_ICON:Z

    xor-int/lit8 v2, v2, 0x1

    .line 48
    if-eqz v2, :cond_0

    .line 50
    sget v2, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    .line 48
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->mDisplayingUpperLeftQuadrant:Z

    .line 51
    return-void
.end method
