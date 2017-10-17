.class public Lcom/android/launcher3/popup/PopupContainerWithArrow;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private mArrow:Landroid/view/View;

.field private mDeferContainerRemoval:Z

.field private mInterceptTouchDown:Landroid/graphics/PointF;

.field protected mIsAboveIcon:Z

.field private mIsLeftAligned:Z

.field private final mIsRtl:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

.field protected mOpenCloseAnimator:Landroid/animation/Animator;

.field protected mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

.field private mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

.field public mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

.field private final mStartDragThreshold:I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/notification/NotificationItemView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/popup/PopupContainerWithArrow;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/popup/PopupContainerWithArrow;Lcom/android/launcher3/notification/NotificationItemView;)Lcom/android/launcher3/notification/NotificationItemView;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    .line 113
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x7f0b006e

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    .line 117
    new-instance v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    .line 119
    return-void
.end method

.method private addArrowView(IIII)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 482
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 483
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v0, :cond_1

    .line 484
    const/4 v0, 0x3

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 485
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 490
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_2

    .line 491
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 496
    :goto_1
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :goto_2
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v1

    :cond_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 517
    return-object v3

    .line 487
    :cond_1
    const/4 v0, 0x5

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 488
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 493
    :cond_2
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 502
    :cond_3
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    .line 503
    int-to-float v0, p3

    int-to-float v5, p4

    iget-boolean v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    xor-int/lit8 v6, v6, 0x1

    .line 502
    invoke-static {v0, v5, v6}, Lcom/android/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 504
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 508
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 507
    check-cast v0, Lcom/android/launcher3/popup/PopupItemView;

    .line 509
    iget-boolean v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    invoke-virtual {v0, v6}, Lcom/android/launcher3/popup/PopupItemView;->getArrowColor(Z)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0b007b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 512
    new-instance v6, Landroid/graphics/CornerPathEffect;

    int-to-float v0, v0

    invoke-direct {v6, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 513
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 514
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getElevation()F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 508
    goto :goto_3
.end method

.method private addDummyViews([Lcom/android/launcher3/popup/PopupPopulator$Item;Z)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 241
    const v0, 0x7f0b006c

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 244
    array-length v9, p1

    move v5, v4

    .line 245
    :goto_0
    if-ge v5, v9, :cond_8

    .line 246
    aget-object v10, p1, v5

    .line 248
    add-int/lit8 v0, v9, -0x1

    if-ge v5, v0, :cond_3

    add-int/lit8 v0, v5, 0x1

    aget-object v0, p1, v0

    move-object v2, v0

    .line 249
    :goto_1
    iget v0, v10, Lcom/android/launcher3/popup/PopupPopulator$Item;->layoutId:I

    invoke-virtual {v8, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 251
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->NOTIFICATION:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne v10, v0, :cond_5

    move-object v0, v1

    .line 252
    check-cast v0, Lcom/android/launcher3/notification/NotificationItemView;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 253
    if-eqz p2, :cond_4

    .line 254
    const v0, 0x7f0b008b

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 255
    :goto_2
    const v11, 0x7f0e004d

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationItemView;->getMainView()Lcom/android/launcher3/notification/NotificationMainView;

    move-result-object v0

    iget-object v11, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/notification/NotificationMainView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 261
    :cond_0
    :goto_3
    if-eqz v2, :cond_6

    .line 262
    iget-boolean v0, v10, Lcom/android/launcher3/popup/PopupPopulator$Item;->isShortcut:Z

    iget-boolean v2, v2, Lcom/android/launcher3/popup/PopupPopulator$Item;->isShortcut:Z

    xor-int/2addr v0, v2

    move v2, v0

    .line 264
    :goto_4
    iget-boolean v0, v10, Lcom/android/launcher3/popup/PopupPopulator$Item;->isShortcut:Z

    if-eqz v0, :cond_7

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-nez v0, :cond_1

    .line 267
    const v0, 0x7f04002b

    .line 266
    invoke-virtual {v8, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addView(Landroid/view/View;)V

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {v0, v1, v10}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;)V

    .line 271
    if-eqz v2, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 245
    :cond_2
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 248
    goto :goto_1

    :cond_4
    move v0, v4

    .line 254
    goto :goto_2

    .line 257
    :cond_5
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne v10, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_3

    :cond_6
    move v2, v4

    .line 261
    goto :goto_4

    .line 275
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addView(Landroid/view/View;)V

    .line 276
    if-eqz v2, :cond_2

    .line 277
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 281
    :cond_8
    return-void
.end method

.method private animateOpen()V
    .locals 20

    .prologue
    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setVisibility(I)V

    .line 298
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    .line 300
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v5

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 304
    const v3, 0x7f0d0016

    .line 303
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 306
    const v3, 0x7f0d0017

    .line 305
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v8, v2

    .line 307
    sub-long v10, v6, v8

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 309
    const v3, 0x7f0d0018

    .line 308
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v12, v2

    .line 310
    new-instance v14, Lcom/android/launcher3/LogAccelerateInterpolator;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-direct {v14, v2, v3}, Lcom/android/launcher3/LogAccelerateInterpolator;-><init>(II)V

    .line 313
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 314
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    .line 315
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v16

    .line 316
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/PopupItemView;->setVisibility(I)V

    .line 317
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/PopupItemView;->setAlpha(F)V

    .line 319
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/popup/PopupItemView;->createOpenAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v17

    .line 320
    new-instance v2, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Lcom/android/launcher3/popup/PopupItemView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 327
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v2, :cond_0

    sub-int v2, v5, v3

    add-int/lit8 v2, v2, -0x1

    .line 328
    :goto_1
    int-to-long v0, v2

    move-wide/from16 v18, v0

    mul-long v18, v18, v12

    invoke-virtual/range {v17 .. v19}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 329
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 332
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    aput v18, v17, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 333
    invoke-virtual {v2, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 335
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 336
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 327
    goto :goto_1

    .line 338
    :cond_1
    new-instance v2, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 352
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 353
    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 354
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 356
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 357
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 358
    return-void
.end method

.method private createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 651
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-object v0
.end method

.method private isAlignedWithStart()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private orientAboutIcon(Lcom/android/launcher3/BubbleTextView;I)V
    .locals 12

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v4

    .line 374
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, p2

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v6

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 378
    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    .line 381
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v1

    add-int v2, v0, v1

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 384
    add-int v0, v2, v4

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 385
    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v1

    iget v8, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v8

    .line 384
    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    .line 386
    :goto_0
    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v1

    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v8

    if-le v3, v1, :cond_8

    const/4 v1, 0x1

    .line 387
    :goto_1
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v0, :cond_9

    if-eqz v1, :cond_14

    :cond_0
    move v1, v3

    .line 390
    :goto_2
    if-ne v1, v2, :cond_a

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    .line 391
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v0, :cond_13

    .line 392
    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v0

    sub-int/2addr v0, v4

    sub-int v0, v1, v0

    .line 396
    :goto_4
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingLeft()I

    move-result v8

    sub-int/2addr v1, v8

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingRight()I

    move-result v8

    sub-int/2addr v1, v8

    .line 397
    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v8

    mul-float/2addr v1, v8

    float-to-int v8, v1

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 400
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->isAlignedWithStart()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 402
    const v9, 0x7f0b006f

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 404
    const v10, 0x7f0b0072

    .line 403
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 405
    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v10, v9

    sub-int v1, v9, v1

    .line 414
    :goto_5
    iget-boolean v9, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v9, :cond_c

    :goto_6
    add-int v9, v0, v1

    .line 417
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, v0, v5

    .line 419
    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getTop()I

    move-result v0

    iget v11, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v11

    if-le v1, v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 420
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v0, :cond_12

    .line 421
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v10

    .line 425
    :goto_8
    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v1, :cond_e

    .line 426
    iget v1, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v9

    .line 430
    :goto_9
    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v9

    .line 432
    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getTop()I

    move-result v0

    if-lt v9, v0, :cond_1

    add-int v0, v9, v5

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getBottom()I

    move-result v5

    if-le v0, v5, :cond_2

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 436
    add-int v0, v2, v8

    iget v1, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 437
    sub-int v1, v3, v8

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 438
    iget-boolean v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-nez v2, :cond_10

    .line 439
    add-int v2, v0, v4

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 441
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    .line 455
    :goto_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    move v1, v0

    .line 458
    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_3

    add-int v0, v1, v4

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 463
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 464
    invoke-static {v0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 465
    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setX(F)V

    .line 467
    :cond_5
    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 468
    int-to-float v0, v9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setY(F)V

    .line 470
    :cond_6
    return-void

    .line 384
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 386
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_9
    move v1, v2

    .line 387
    goto/16 :goto_2

    .line 390
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 409
    :cond_b
    const v9, 0x7f0b0071

    .line 408
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 411
    const v10, 0x7f0b0073

    .line 410
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 412
    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v10, v9

    sub-int v1, v9, v1

    goto/16 :goto_5

    .line 414
    :cond_c
    neg-int v1, v1

    goto/16 :goto_6

    .line 419
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 428
    :cond_e
    iget v1, v7, Landroid/graphics/Rect;->left:I

    sub-int v1, v9, v1

    goto/16 :goto_9

    .line 444
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move v0, v1

    goto :goto_a

    .line 447
    :cond_10
    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v2

    if-le v1, v2, :cond_11

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move v0, v1

    goto :goto_a

    .line 452
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    goto :goto_a

    :cond_12
    move v0, v1

    goto/16 :goto_8

    :cond_13
    move v0, v1

    goto/16 :goto_4

    :cond_14
    move v1, v2

    goto/16 :goto_2
.end method

.method public static showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->clearFocus()V

    .line 142
    return-object v3

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 145
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    return-object v3

    .line 149
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    .line 150
    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutIdsForItem(Lcom/android/launcher3/ItemInfo;)Ljava/util/List;

    move-result-object v3

    .line 151
    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationKeysForItem(Lcom/android/launcher3/ItemInfo;)Ljava/util/List;

    move-result-object v4

    .line 153
    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getEnabledSystemShortcutsForItem(Lcom/android/launcher3/ItemInfo;)Ljava/util/List;

    move-result-object v2

    .line 157
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    const v6, 0x7f040020

    const/4 v7, 0x0

    .line 157
    invoke-virtual {v0, v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 159
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setVisibility(I)V

    .line 160
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v0, p0, v3, v4, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShow(Lcom/android/launcher3/BubbleTextView;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 162
    return-object v0
.end method

.method private updateNotificationHeader()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 580
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v2

    .line 581
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/FastBitmapDrawable;->getIconPalette()Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v0

    .line 585
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v2}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/notification/NotificationItemView;->updateHeader(ILcom/android/launcher3/graphics/IconPalette;)V

    .line 587
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 584
    goto :goto_0
.end method


# virtual methods
.method protected animateClose()V
    .locals 23

    .prologue
    .line 757
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    if-nez v4, :cond_0

    .line 758
    return-void

    .line 760
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_1

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 763
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    .line 765
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v8

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v6

    .line 767
    const/4 v5, 0x0

    .line 768
    const/4 v4, 0x0

    move/from16 v22, v4

    move v4, v5

    move/from16 v5, v22

    :goto_0
    if-ge v5, v6, :cond_3

    .line 769
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/popup/PopupItemView;->isOpenOrOpening()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 770
    add-int/lit8 v4, v4, 0x1

    .line 768
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 773
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 774
    const v7, 0x7f0d0019

    .line 773
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v10, v5

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 776
    const v7, 0x7f0d0017

    .line 775
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v12, v5

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 778
    const v7, 0x7f0d001a

    .line 777
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v14, v5

    .line 779
    new-instance v9, Lcom/android/launcher3/LogAccelerateInterpolator;

    const/16 v5, 0x64

    const/4 v7, 0x0

    invoke-direct {v9, v5, v7}, Lcom/android/launcher3/LogAccelerateInterpolator;-><init>(II)V

    .line 781
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v5, :cond_4

    sub-int v5, v6, v4

    :goto_1
    move v7, v5

    .line 782
    :goto_2
    add-int v6, v5, v4

    if-ge v7, v6, :cond_6

    .line 783
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v16

    .line 785
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1, v10, v11}, Lcom/android/launcher3/popup/PopupItemView;->createCloseAnimation(ZZJ)Landroid/animation/Animator;

    move-result-object v17

    .line 786
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v6, :cond_5

    sub-int v6, v7, v5

    .line 788
    :goto_3
    int-to-long v0, v6

    move-wide/from16 v18, v0

    mul-long v18, v18, v14

    invoke-virtual/range {v17 .. v19}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 790
    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v19, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 792
    int-to-long v0, v6

    move-wide/from16 v20, v0

    mul-long v20, v20, v14

    add-long v20, v20, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 793
    sub-long v20, v10, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 794
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 795
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 796
    new-instance v6, Lcom/android/launcher3/popup/PopupContainerWithArrow$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$7;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Lcom/android/launcher3/popup/PopupItemView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 802
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 782
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 781
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 787
    :cond_5
    sub-int v6, v4, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 804
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 805
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 806
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 808
    new-instance v4, Lcom/android/launcher3/popup/PopupContainerWithArrow$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$8;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 819
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 820
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/BubbleTextView;->forceHideBadge(Z)V

    .line 822
    return-void
.end method

.method protected closeComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 828
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 830
    iput-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 832
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    .line 833
    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 834
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    .line 835
    const-wide/16 v4, -0x65

    .line 834
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 836
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 837
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->forceHideBadge(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 839
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 840
    return-void

    :cond_1
    move v0, v1

    .line 834
    goto :goto_0
.end method

.method public createPreDragCondition()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 1

    .prologue
    .line 532
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-object v0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x5

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 744
    const/16 v0, 0x9

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 745
    return-void
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public getExtendedTouchView()Landroid/view/View;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 705
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getItemCount()I
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v0, :cond_0

    .line 286
    add-int/lit8 p1, p1, 0x1

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupItemView;

    return-object v0
.end method

.method public getLogContainerType()I
    .locals 1

    .prologue
    .line 856
    const/16 v0, 0x9

    return v0
.end method

.method protected handleClose(Z)V
    .locals 0

    .prologue
    .line 749
    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    goto :goto_0
.end method

.method protected isOfType(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 844
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 723
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    .line 724
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .locals 2

    .prologue
    .line 711
    if-nez p4, :cond_0

    .line 712
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    .line 713
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 714
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 716
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 560
    return v0

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v2, v1

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 564
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-double v4, v1

    .line 563
    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected onWidgetsBound()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->enableWidgetsIfExist(Lcom/android/launcher3/BubbleTextView;)V

    .line 648
    :cond_0
    return-void
.end method

.method public populateAndShow(Lcom/android/launcher3/BubbleTextView;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 168
    const v0, 0x7f0b0074

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 169
    const v0, 0x7f0b0075

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 171
    const v0, 0x7f0b0076

    .line 170
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 173
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    .line 176
    invoke-static/range {p2 .. p4}, Lcom/android/launcher3/popup/PopupPopulator;->getItemsToPopulate(Ljava/util/List;Ljava/util/List;Ljava/util/List;)[Lcom/android/launcher3/popup/PopupPopulator$Item;

    move-result-object v1

    .line 178
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addDummyViews([Lcom/android/launcher3/popup/PopupPopulator$Item;Z)V

    .line 180
    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->measure(II)V

    .line 181
    add-int v0, v2, v6

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->orientAboutIcon(Lcom/android/launcher3/BubbleTextView;I)V

    .line 183
    iget-boolean v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 184
    if-eqz v7, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeAllViews()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    .line 188
    invoke-static {v1}, Lcom/android/launcher3/popup/PopupPopulator;->reverseItems([Lcom/android/launcher3/popup/PopupPopulator$Item;)[Lcom/android/launcher3/popup/PopupPopulator$Item;

    move-result-object v1

    .line 189
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addDummyViews([Lcom/android/launcher3/popup/PopupPopulator$Item;Z)V

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->measure(II)V

    .line 192
    add-int v0, v2, v6

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->orientAboutIcon(Lcom/android/launcher3/BubbleTextView;I)V

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-nez v0, :cond_4

    .line 197
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 199
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-nez v0, :cond_5

    .line 200
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 202
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    .line 206
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v0, v7

    .line 207
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 208
    if-nez v7, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v8, v10

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    aput-object v0, v8, v10

    .line 209
    const v0, 0x7f0c007e

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    :goto_4
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->isAlignedWithStart()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    const v0, 0x7f0b0079

    .line 218
    :goto_5
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 221
    invoke-direct {p0, v0, v6, v4, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addArrowView(IIII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    div-int/lit8 v3, v4, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 223
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    .line 225
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateOpen()V

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->forceHideBadge(Z)V

    .line 231
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    .line 232
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 234
    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    move-object v3, p0

    move-object v4, p2

    move-object v6, p3

    move-object/from16 v8, p4

    .line 232
    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/popup/PopupPopulator;->createUpdateRunnable(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/notification/NotificationItemView;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 236
    return-void

    .line 178
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 189
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getDeepShortcutViews(Z)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_2

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getSystemShortcutViews(Z)Ljava/util/List;

    move-result-object v9

    goto/16 :goto_3

    .line 212
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v10, v11

    .line 214
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v10, v7

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    aput-object v0, v10, v7

    .line 213
    const v0, 0x7f0c007f

    .line 212
    invoke-virtual {v8, v0, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 220
    :cond_7
    const v0, 0x7f0b007a

    goto/16 :goto_5

    :cond_8
    move v0, v2

    .line 223
    goto/16 :goto_6
.end method

.method public reduceNotificationViewHeight(II)Landroid/animation/Animator;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 659
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 662
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_1

    move v0, p1

    .line 663
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    .line 664
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/notification/NotificationItemView;->animateHeightRemoval(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 666
    new-instance v3, Lcom/android/launcher3/anim/PropertyResetListener;

    sget-object v1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    move v1, v2

    .line 667
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 668
    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v4

    .line 669
    iget-boolean v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-ne v4, v5, :cond_2

    .line 667
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 662
    :cond_1
    neg-int v0, p1

    goto :goto_0

    .line 673
    :cond_2
    sget-object v5, Lcom/android/launcher3/popup/PopupContainerWithArrow;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    .line 674
    invoke-virtual {v4}, Lcom/android/launcher3/popup/PopupItemView;->getTranslationY()F

    move-result v7

    int-to-float v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v2

    .line 673
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 674
    int-to-long v6, p2

    .line 673
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 675
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 676
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 678
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/popup/PopupContainerWithArrow$6;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$6;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;I)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 690
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public trimNotifications(Ljava/util/Map;)V
    .locals 12

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 590
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-nez v0, :cond_0

    .line 591
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 594
    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/badge/BadgeInfo;

    .line 595
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 596
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 597
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 598
    const v2, 0x7f0d001b

    .line 597
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 599
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b006c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 601
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationItemView;->getHeightMinusFooter()I

    move-result v0

    add-int/2addr v0, v3

    .line 600
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->reduceNotificationViewHeight(II)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 602
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v0

    .line 604
    :goto_0
    if-eqz v0, :cond_2

    .line 605
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v9, v4, v10

    aput v8, v4, v11

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 606
    new-instance v5, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/view/View;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 613
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    sget-object v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [F

    aput v8, v4, v10

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 616
    int-to-long v4, v2

    .line 615
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 617
    new-instance v3, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;

    invoke-direct {v3, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 628
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 629
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 630
    const v3, 0x7f0d0017

    .line 629
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    .line 631
    invoke-direct {p0, v8}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 632
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 633
    invoke-direct {p0, v9}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 634
    int-to-double v6, v2

    long-to-double v4, v4

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v8

    sub-double v4, v6, v4

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 635
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v10

    aput-object v3, v2, v11

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 636
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 637
    return-void

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    goto :goto_0

    .line 639
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 640
    invoke-virtual {v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    .line 639
    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationKeyData;->extractKeysOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/notification/NotificationItemView;->trimNotifications(Ljava/util/List;)V

    .line 641
    return-void
.end method

.method public updateNotificationHeader(Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 572
    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    .line 573
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    .line 576
    :cond_0
    return-void
.end method
