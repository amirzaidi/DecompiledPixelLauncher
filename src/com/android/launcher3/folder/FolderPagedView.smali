.class public Lcom/android/launcher3/folder/FolderPagedView;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"


# static fields
.field private static final sTmpArray:[I


# instance fields
.field private mAllocatedContentSize:I

.field private final mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private mFolder:Lcom/android/launcher3/folder/Folder;

.field private mGridCountX:I

.field private mGridCountY:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field public final mIsRtl:Z

.field private mKeyListener:Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

.field private final mMaxCountX:I

.field private final mMaxCountY:I

.field private final mMaxItemsPerPage:I

.field private mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

.field final mPendingAnimations:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 98
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 99
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountX:I

    .line 100
    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountY:I

    .line 102
    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountX:I

    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountY:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    .line 104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->setImportantForAccessibility(I)V

    .line 109
    new-instance v0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 110
    return-void
.end method

.method private arrangeChildren(Ljava/util/ArrayList;IZ)V
    .locals 18

    .prologue
    .line 324
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 325
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 327
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->removeAllViews()V

    .line 328
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 330
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setupContentDimensions(I)V

    .line 332
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 333
    const/4 v13, 0x0

    .line 335
    const/4 v4, 0x0

    .line 338
    new-instance v17, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 338
    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 340
    const/4 v3, 0x0

    .line 341
    const/4 v2, 0x0

    move v14, v2

    move v15, v3

    move v3, v4

    move-object v4, v13

    :goto_1
    move/from16 v0, p2

    if-ge v14, v0, :cond_9

    .line 342
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v14, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v11, v2

    .line 343
    :goto_2
    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    if-lt v3, v2, :cond_6

    .line 345
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 346
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 350
    :goto_3
    const/4 v3, 0x0

    move v12, v3

    move-object v13, v2

    .line 353
    :goto_4
    if-eqz v11, :cond_4

    .line 354
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 355
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v2, v12, v2

    .line 356
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int v4, v12, v3

    .line 357
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 358
    iget v5, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-ne v5, v2, :cond_2

    iget v5, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-eq v5, v4, :cond_8

    .line 359
    :cond_2
    :goto_5
    iput v2, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 360
    iput v4, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 361
    iput v15, v3, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 362
    if-eqz p3, :cond_3

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v6, 0x0

    iget v8, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 363
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 367
    :cond_3
    iget v2, v3, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 368
    iget v2, v3, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/ItemInfo;)I

    move-result v5

    const/4 v4, -0x1

    const/4 v7, 0x1

    move-object v2, v13

    move-object v3, v11

    move-object v6, v10

    .line 369
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 372
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(I)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v11, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_4

    move-object v2, v11

    .line 373
    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 377
    :cond_4
    add-int/lit8 v3, v15, 0x1

    .line 378
    add-int/lit8 v4, v12, 0x1

    .line 341
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v15, v3

    move v3, v4

    move-object v4, v13

    goto/16 :goto_1

    .line 342
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_6
    move v12, v3

    move-object v13, v4

    .line 343
    goto/16 :goto_4

    .line 348
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    goto/16 :goto_3

    .line 358
    :cond_8
    iget v5, v3, Lcom/android/launcher3/ItemInfo;->rank:I

    if-eq v5, v15, :cond_3

    goto :goto_5

    .line 382
    :cond_9
    const/4 v2, 0x0

    .line 383
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 384
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->removeView(Landroid/view/View;)V

    .line 385
    const/4 v2, 0x1

    goto :goto_6

    .line 387
    :cond_a
    if-eqz v2, :cond_b

    .line 388
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->setCurrentPage(I)V

    .line 391
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->setEnableOverscroll(Z)V

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_d

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Lcom/android/launcher3/pageindicators/PageIndicator;->setVisibility(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v2, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_f

    .line 397
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x5

    .line 396
    :goto_9
    invoke-virtual {v3, v2}, Lcom/android/launcher3/ExtendedEditText;->setGravity(I)V

    .line 398
    return-void

    .line 391
    :cond_c
    const/4 v2, 0x0

    goto :goto_7

    .line 394
    :cond_d
    const/16 v2, 0x8

    goto :goto_8

    .line 397
    :cond_e
    const/4 v2, 0x3

    goto :goto_9

    :cond_f
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public static calculateGridSize(IIIIII[I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    if-lt p0, p5, :cond_1

    move v0, v1

    move v4, p4

    move v6, p3

    .line 138
    :goto_0
    if-nez v0, :cond_6

    .line 141
    mul-int v0, v6, v4

    if-ge v0, p0, :cond_3

    .line 143
    if-le v6, v4, :cond_0

    if-ne v4, p4, :cond_2

    .line 144
    :cond_0
    if-ge v6, p3, :cond_2

    .line 145
    add-int/lit8 v3, v6, 0x1

    move v0, v4

    .line 149
    :goto_1
    if-nez v0, :cond_8

    add-int/lit8 v0, v0, 0x1

    move v5, v3

    move v3, v0

    .line 155
    :goto_2
    if-ne v5, v6, :cond_5

    if-ne v3, v4, :cond_5

    move v0, v1

    :goto_3
    move v4, v3

    move v6, v5

    goto :goto_0

    :cond_1
    move v0, v2

    move v4, p2

    move v6, p1

    .line 135
    goto :goto_0

    .line 146
    :cond_2
    if-ge v4, p4, :cond_9

    .line 147
    add-int/lit8 v0, v4, 0x1

    move v3, v6

    goto :goto_1

    .line 150
    :cond_3
    add-int/lit8 v0, v4, -0x1

    mul-int/2addr v0, v6

    if-lt v0, p0, :cond_4

    if-lt v4, v6, :cond_4

    .line 151
    add-int/lit8 v0, v4, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    move v5, v6

    .line 150
    goto :goto_2

    .line 152
    :cond_4
    add-int/lit8 v0, v6, -0x1

    mul-int/2addr v0, v4

    if-lt v0, p0, :cond_7

    .line 153
    add-int/lit8 v0, v6, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v4

    move v5, v0

    goto :goto_2

    :cond_5
    move v0, v2

    .line 155
    goto :goto_3

    .line 158
    :cond_6
    aput v6, p6, v2

    .line 159
    aput v4, p6, v1

    .line 160
    return-void

    :cond_7
    move v3, v4

    move v5, v6

    goto :goto_2

    :cond_8
    move v5, v3

    move v3, v0

    goto :goto_2

    :cond_9
    move v0, v4

    move v3, v6

    goto :goto_1
.end method

.method private createAndAddNewPage()Lcom/android/launcher3/CellLayout;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040016

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 274
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/CellLayout;->setCellDimensions(II)V

    .line 275
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    .line 276
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    .line 277
    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/folder/FolderPagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 280
    return-object v0
.end method


# virtual methods
.method public addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V
    .locals 6

    .prologue
    .line 232
    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v0, p3, v0

    .line 233
    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v1, p3, v1

    .line 235
    iput p3, p2, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 236
    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v2, v0, v2

    iput v2, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 237
    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int/2addr v0, v2

    iput v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 240
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 241
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/ItemInfo;)I

    move-result v3

    const/4 v2, -0x1

    const/4 v5, 0x1

    move-object v1, p1

    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 244
    return-void
.end method

.method public allocateRankForNewItem()I
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getItemCount()I

    move-result v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->allocateSpaceForRank(I)V

    .line 216
    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setCurrentPage(I)V

    .line 217
    return v0
.end method

.method public allocateSpaceForRank(I)V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 205
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 207
    return-void
.end method

.method public arrangeChildren(Ljava/util/ArrayList;I)V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 320
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 200
    return-object v2
.end method

.method public clearScrollHint()V
    .locals 2

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)V

    .line 524
    :cond_0
    return-void
.end method

.method public completePendingPageChanges()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 532
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 534
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method public createAndAddViewForRank(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 222
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderPagedView;->allocateSpaceForRank(I)V

    .line 223
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    .line 224
    return-object v0
.end method

.method public createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 249
    const v1, 0x7f040014

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 250
    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V

    .line 251
    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setHapticFeedbackEnabled(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 255
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mKeyListener:Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 257
    new-instance v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 258
    iget v2, p1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v4, p1, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    .line 257
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->draw(Landroid/graphics/Canvas;)V

    .line 181
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 182
    return-void
.end method

.method public findNearestArea(II)I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v6

    .line 425
    invoke-virtual {p0, v6}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 426
    sget-object v5, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    .line 427
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    sget-object v1, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    sget-object v2, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    aget v2, v2, v7

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    aput v0, v1, v7

    .line 430
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    add-int/lit8 v0, v0, -0x1

    .line 431
    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v1, v6

    sget-object v2, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    aget v2, v2, v3

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    sget-object v2, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    aget v2, v2, v7

    add-int/2addr v1, v2

    .line 430
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0c0049

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllocatedContentSize()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    return v0
.end method

.method protected getChildGap()I
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentCellLayout()Lcom/android/launcher3/CellLayout;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 401
    :cond_0
    return v0
.end method

.method public getFirstItem()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 440
    const/4 v0, 0x0

    return-object v0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 443
    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    if-lez v1, :cond_1

    .line 444
    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 446
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 412
    if-gez v0, :cond_0

    .line 414
    return v1

    .line 416
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 417
    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v0, v2

    .line 416
    add-int/2addr v0, v1

    return v0
.end method

.method public getLastItem()Landroid/view/View;
    .locals 4

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 452
    const/4 v0, 0x0

    return-object v0

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 456
    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    if-lez v2, :cond_1

    .line 457
    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v2, v1, v2

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 459
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPageAt(I)Lcom/android/launcher3/CellLayout;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public itemsPerPage()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    return v0
.end method

.method public iterateOverItems(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    move v1, v2

    .line 468
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 469
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    move v3, v2

    .line 470
    :goto_1
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    if-ge v3, v0, :cond_2

    move v4, v2

    .line 471
    :goto_2
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 472
    invoke-virtual {v5, v4, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    .line 473
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-interface {p1, v0, v6}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    return-object v6

    .line 471
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 470
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 468
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 479
    :cond_3
    return-object v7
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 1

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 499
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 502
    :cond_0
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 1

    .prologue
    .line 546
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 548
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 549
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 550
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxScrollX:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setScroll(II)V

    .line 306
    return-void
.end method

.method public rankOnCurrentPage(I)Z
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v0, p1, v0

    .line 541
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public realTimeReorder(II)V
    .locals 16

    .prologue
    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 581
    const/4 v7, 0x0

    .line 582
    const/high16 v10, 0x41f00000    # 30.0f

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v6

    .line 587
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, p2, v2

    .line 588
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v4, p2, v3

    .line 590
    if-eq v2, v6, :cond_0

    .line 591
    const-string/jumbo v2, "FolderPagedView"

    const-string/jumbo v3, "Cannot animate when the target cell is invisible"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v2, p1, v2

    .line 594
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v3, p1, v3

    .line 600
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 602
    return-void

    .line 603
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_4

    .line 605
    const/4 v5, 0x1

    .line 608
    if-ge v3, v6, :cond_3

    .line 611
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    mul-int v3, v6, v2

    .line 614
    const/4 v2, 0x0

    :goto_0
    move v12, v4

    move v13, v5

    move v4, v3

    move v3, v2

    .line 642
    :goto_1
    move/from16 v0, p1

    if-eq v0, v4, :cond_9

    .line 643
    add-int v5, p1, v13

    .line 644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, v5, v2

    .line 645
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v8, v5, v8

    .line 646
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v9, v8, v9

    .line 647
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int/2addr v8, v11

    .line 649
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v11

    .line 650
    invoke-virtual {v11, v9, v8}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    .line 651
    if-eqz v8, :cond_2

    .line 652
    if-eq v6, v2, :cond_6

    .line 653
    invoke-virtual {v11, v8}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 654
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v8, v2, v1}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    :cond_2
    :goto_2
    move/from16 p1, v5

    goto :goto_1

    .line 616
    :cond_3
    const/4 v3, -0x1

    const/16 p1, -0x1

    .line 617
    goto :goto_0

    .line 623
    :cond_4
    const/4 v5, -0x1

    .line 625
    if-le v3, v6, :cond_5

    .line 629
    add-int/lit8 v2, v6, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v2, v3

    add-int/lit8 v3, v2, -0x1

    .line 632
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    move v12, v4

    move v13, v5

    move v4, v3

    move v3, v2

    .line 638
    goto :goto_1

    .line 634
    :cond_5
    const/4 v3, -0x1

    const/16 p1, -0x1

    .line 635
    goto :goto_3

    .line 658
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 660
    new-instance v9, Lcom/android/launcher3/folder/FolderPagedView$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v9, v0, v8, v2, v1}, Lcom/android/launcher3/folder/FolderPagedView$1;-><init>(Lcom/android/launcher3/folder/FolderPagedView;Landroid/view/View;FI)V

    .line 670
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 671
    if-lez v13, :cond_7

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v2, v14

    if-eqz v2, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    :goto_5
    int-to-float v2, v2

    .line 670
    invoke-virtual {v11, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 672
    const-wide/16 v14, 0xe6

    .line 670
    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 673
    const-wide/16 v14, 0x0

    .line 670
    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 671
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_5

    .line 681
    :cond_9
    sub-int v2, v12, v3

    mul-int/2addr v2, v13

    if-gtz v2, :cond_a

    .line 683
    return-void

    .line 686
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    move v11, v3

    .line 687
    :goto_6
    if-eq v11, v12, :cond_c

    .line 688
    add-int v3, v11, v13

    .line 689
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v4, v3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 690
    if-eqz v3, :cond_b

    .line 691
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/ItemInfo;->rank:I

    sub-int/2addr v5, v13

    iput v5, v4, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 693
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v4, v11, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    div-int v5, v11, v5

    .line 694
    const/16 v6, 0xe6

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 693
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 695
    int-to-float v3, v7

    add-float/2addr v3, v10

    float-to-int v7, v3

    .line 696
    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v3, v10

    .line 687
    :goto_7
    add-int v4, v11, v13

    move v11, v4

    move v10, v3

    goto :goto_6

    .line 699
    :cond_c
    return-void

    :cond_d
    move v3, v10

    goto :goto_7
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 297
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method public setFixedSize(II)V
    .locals 4

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v2, p1, v0

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v3, p2, v0

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/CellLayout;->setFixedSize(II)V

    .line 291
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method public setFocusOnFirstChild()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 494
    :cond_0
    return-void
.end method

.method public setFolder(Lcom/android/launcher3/folder/Folder;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 114
    new-instance v0, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

    invoke-direct {v0, p1}, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mKeyListener:Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;

    .line 115
    const v0, 0x7f0e0082

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->initParentViews(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public setupContentDimensions(I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 166
    iput p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    .line 167
    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountX:I

    iget v4, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxCountY:I

    iget v5, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxItemsPerPage:I

    .line 168
    sget-object v6, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    move v0, p1

    .line 167
    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/folder/FolderPagedView;->calculateGridSize(IIIIII[I)V

    .line 169
    sget-object v0, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    .line 170
    sget-object v0, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    .line 173
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 173
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public showScrollHint(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 508
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 509
    const v0, -0x4270a3d7    # -0.07f

    .line 510
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 511
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 513
    if-eqz v3, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollX()I

    move-result v1

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 516
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->invalidate()V

    .line 518
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 508
    goto :goto_0

    .line 509
    :cond_2
    const v0, 0x3d8f5c29    # 0.07f

    goto :goto_1
.end method

.method public verifyVisibleHighResIcons(I)V
    .locals 5

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 559
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 560
    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 561
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 564
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 565
    if-eqz v3, :cond_0

    .line 566
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 559
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 570
    :cond_1
    return-void
.end method
