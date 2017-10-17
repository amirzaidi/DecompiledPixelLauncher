.class public Lcom/android/launcher3/folder/FolderAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCALE_PROPERTY:Landroid/util/Property;


# instance fields
.field private mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field private mContext:Landroid/content/Context;

.field private final mDelay:I

.field private final mDuration:I

.field private mFolder:Lcom/android/launcher3/folder/Folder;

.field private mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private final mFolderInterpolator:Landroid/animation/TimeInterpolator;

.field private final mIsOpening:Z

.field private final mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

.field private final mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

.field private final mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/folder/FolderAnimationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/android/launcher3/folder/FolderAnimationManager$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "scale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderAnimationManager$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 77
    sput-object v0, Lcom/android/launcher3/folder/FolderAnimationManager;->SCALE_PROPERTY:Landroid/util/Property;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 92
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 93
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 96
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 99
    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    .line 100
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 102
    iput-boolean p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget v0, v0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandDuration:I

    iput v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    .line 108
    const v1, 0x7f070005

    .line 107
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    .line 110
    const v1, 0x7f070007

    .line 109
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    .line 112
    const v1, 0x7f070006

    .line 111
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    .line 113
    return-void
.end method

.method private addPreviewItemAnimators(Landroid/animation/AnimatorSet;FII)V
    .locals 24

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    move-result-object v14

    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v5, v4

    .line 247
    :goto_0
    if-eqz v5, :cond_3

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItems()Ljava/util/List;

    move-result-object v4

    move-object v10, v4

    .line 250
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 251
    if-eqz v5, :cond_4

    move v11, v12

    .line 255
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderAnimationManager;->getPreviewItemInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v15

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v16

    .line 258
    const/4 v4, 0x0

    move v13, v4

    :goto_3
    if-ge v13, v12, :cond_7

    .line 259
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/BubbleTextView;

    .line 260
    invoke-virtual {v6}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 263
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 264
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 267
    invoke-interface {v14, v13, v11}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->scaleForItem(II)F

    move-result v5

    .line 268
    invoke-interface {v14}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->getIconSize()F

    move-result v7

    mul-float/2addr v7, v5

    .line 269
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v7, v5

    .line 271
    div-float v9, v7, p2

    .line 273
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v5, :cond_5

    move v5, v9

    .line 274
    :goto_4
    invoke-virtual {v6, v5}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 275
    invoke-virtual {v6, v5}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-interface {v14, v13, v11, v5}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 281
    iget v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    invoke-virtual {v6}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    .line 284
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v7, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    int-to-float v5, v5

    sub-float v5, v7, v5

    move/from16 v0, p3

    int-to-float v7, v0

    add-float/2addr v5, v7

    div-float v5, v5, p2

    float-to-int v5, v5

    .line 285
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v7, v7, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    move/from16 v0, p4

    int-to-float v8, v0

    add-float/2addr v7, v8

    div-float v7, v7, p2

    float-to-int v8, v7

    .line 287
    iget v7, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    sub-int/2addr v5, v7

    int-to-float v7, v5

    .line 288
    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    sub-int v4, v8, v4

    int-to-float v8, v4

    .line 290
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v7, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v5

    .line 291
    invoke-virtual {v5, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 294
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v4, v8, v1}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v17

    .line 295
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 298
    sget-object v4, Lcom/android/launcher3/folder/FolderAnimationManager;->SCALE_PROPERTY:Landroid/util/Property;

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v6, v4, v9, v1}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v18

    .line 299
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v4

    sget v19, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    move/from16 v0, v19

    if-le v4, v0, :cond_1

    .line 305
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    .line 306
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 307
    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 308
    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 309
    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 311
    :cond_0
    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v20

    int-to-long v0, v4

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 312
    invoke-virtual/range {v17 .. v17}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v20

    int-to-long v0, v4

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 313
    invoke-virtual/range {v18 .. v18}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v20

    int-to-long v4, v4

    sub-long v4, v20, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 316
    :cond_1
    new-instance v4, Lcom/android/launcher3/folder/FolderAnimationManager$4;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/folder/FolderAnimationManager$4;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto/16 :goto_3

    .line 246
    :cond_2
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    .line 249
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v6, v6, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v4

    move-object v10, v4

    goto/16 :goto_1

    .line 253
    :cond_4
    sget v4, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    move v11, v4

    goto/16 :goto_2

    .line 273
    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 305
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    mul-int/lit8 v4, v4, 0x2

    goto/16 :goto_5

    .line 339
    :cond_7
    return-void
.end method

.method private getAnimator(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 370
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_0

    .line 371
    new-array v0, v3, [I

    aput p3, v0, v1

    aput p4, v0, v2

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    .line 372
    :cond_0
    new-array v0, v3, [I

    aput p4, v0, v1

    aput p3, v0, v2

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 364
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_0

    .line 365
    new-array v0, v3, [F

    aput p3, v0, v1

    aput p4, v0, v2

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 366
    :cond_0
    new-array v0, v3, [F

    aput p4, v0, v1

    aput p3, v0, v2

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreviewItemInterpolator()Landroid/animation/TimeInterpolator;
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    sget v1, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-le v0, v1, :cond_1

    .line 356
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    .line 356
    :goto_0
    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method private play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 7

    .prologue
    .line 342
    invoke-virtual {p2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v4

    iget v6, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 343
    return-void
.end method

.method private play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 347
    int-to-long v0, p5

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 348
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 349
    return-void
.end method


# virtual methods
.method public getAnimator()Landroid/animation/AnimatorSet;
    .locals 19

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    move-result-object v3

    .line 122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItems()Ljava/util/List;

    move-result-object v4

    .line 125
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 126
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v6

    .line 127
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 126
    invoke-virtual {v6, v7, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v12

    .line 128
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v13

    .line 129
    mul-int/lit8 v6, v13, 0x2

    int-to-float v6, v6

    mul-float v14, v6, v12

    .line 132
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->scaleForItem(II)F

    move-result v6

    .line 133
    invoke-interface {v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->getIconSize()F

    move-result v3

    mul-float/2addr v6, v3

    .line 134
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v6, v3

    mul-float v9, v3, v12

    .line 137
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v3, :cond_1

    move v3, v9

    .line 138
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/Folder;->setPivotX(F)V

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/Folder;->setPivotY(F)V

    .line 146
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v6, v3

    float-to-int v3, v3

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 148
    iget v4, v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    sub-float/2addr v4, v14

    int-to-float v3, v3

    sub-float v3, v4, v3

    float-to-int v3, v3

    move v10, v3

    .line 151
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v4, v3

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingTop()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v7, v3

    .line 156
    iget v3, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v6

    add-int/2addr v3, v6

    sub-int/2addr v3, v4

    sub-int/2addr v3, v10

    .line 158
    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v7

    .line 159
    iget v6, v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    sub-int/2addr v3, v6

    int-to-float v15, v3

    .line 160
    iget v3, v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    sub-int v3, v5, v3

    int-to-float v0, v3

    move/from16 v16, v0

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    const v5, 0x1010433

    invoke-static {v3, v5}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v11

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/PreviewBackground;->getBackgroundAlpha()I

    move-result v3

    invoke-static {v11, v3}, Landroid/support/v4/b/a;->asb(II)I

    move-result v8

    .line 166
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v3, :cond_2

    move v3, v8

    :goto_2
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 169
    add-int v3, v4, v10

    .line 170
    new-instance v6, Landroid/graphics/Rect;

    .line 171
    int-to-float v4, v3

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 172
    int-to-float v5, v7

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 173
    int-to-float v3, v3

    add-float/2addr v3, v14

    div-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 174
    int-to-float v7, v7

    add-float/2addr v7, v14

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 170
    invoke-direct {v6, v4, v5, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 175
    new-instance v7, Landroid/graphics/Rect;

    iget v3, v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    iget v2, v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v7, v4, v5, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    div-float v2, v14, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 177
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v5, v2

    .line 180
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v14

    .line 183
    new-instance v3, Lcom/android/launcher3/anim/PropertyResetListener;

    .line 184
    sget-object v2, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x1010038

    invoke-static/range {v17 .. v18}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 183
    move-object/from16 v0, v17

    invoke-direct {v3, v2, v0}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 188
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 190
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    goto :goto_3

    .line 137
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_2
    move v3, v11

    .line 166
    goto/16 :goto_2

    .line 195
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v3, v15, v1}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v3, v1, v15}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v3, Lcom/android/launcher3/folder/FolderAnimationManager;->SCALE_PROPERTY:Landroid/util/Property;

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v9, v15}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    const-string/jumbo v3, "color"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v8, v11}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/Animator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 200
    new-instance v2, Lcom/android/launcher3/folder/FolderAnimationManager$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/folder/FolderAnimationManager$2;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 210
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    div-int/lit8 v8, v2, 0x2

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/Folder;->getElevation()F

    move-result v4

    neg-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v5

    .line 212
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v2, :cond_4

    move v2, v8

    :goto_4
    int-to-long v6, v2

    move-object/from16 v3, p0

    move-object v4, v14

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 214
    new-instance v2, Lcom/android/launcher3/folder/FolderAnimationManager$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/folder/FolderAnimationManager$3;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;)V

    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_5

    .line 212
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 232
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v2

    sub-int v2, v13, v2

    .line 233
    div-float v3, v9, v12

    .line 236
    add-int v4, v10, v2

    .line 233
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3, v4, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->addPreviewItemAnimators(Landroid/animation/AnimatorSet;FII)V

    .line 237
    return-object v14

    :cond_6
    move v10, v3

    goto/16 :goto_1
.end method
