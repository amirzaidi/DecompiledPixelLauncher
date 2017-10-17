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

.field private final mEndRect:Landroid/graphics/Rect;

.field private mGravity:I

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

.field private final mStartRect:Landroid/graphics/Rect;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/notification/NotificationItemView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/launcher3/popup/PopupContainerWithArrow;)I
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
    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartRect:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    .line 130
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    const v1, 0x7f0b0078

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    .line 134
    new-instance v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    .line 136
    return-void
.end method

.method private addArrowView(IIII)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 557
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 558
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v0, :cond_1

    .line 559
    const/4 v0, 0x3

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 560
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 565
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_2

    .line 566
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 571
    :goto_1
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 572
    iget v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 591
    :goto_2
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v1

    :cond_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 592
    return-object v3

    .line 562
    :cond_1
    const/4 v0, 0x5

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 563
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 568
    :cond_2
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 577
    :cond_3
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    .line 578
    int-to-float v0, p3

    int-to-float v5, p4

    iget-boolean v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    xor-int/lit8 v6, v6, 0x1

    .line 577
    invoke-static {v0, v5, v6}, Lcom/android/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 579
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 583
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 582
    check-cast v0, Lcom/android/launcher3/popup/PopupItemView;

    .line 584
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    const v6, 0x7f010027

    invoke-static {v0, v6}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 586
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0b0085

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 587
    new-instance v6, Landroid/graphics/CornerPathEffect;

    int-to-float v0, v0

    invoke-direct {v6, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 588
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getElevation()F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 583
    goto :goto_3
.end method

.method private addDummyViews([Lcom/android/launcher3/popup/PopupPopulator$Item;I)V
    .locals 12

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 260
    const/4 v3, 0x3

    .line 261
    array-length v9, p1

    .line 262
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v9, :cond_f

    .line 263
    aget-object v10, p1, v6

    .line 265
    if-lez v6, :cond_7

    add-int/lit8 v0, v6, -0x1

    aget-object v0, p1, v0

    move-object v2, v0

    .line 267
    :goto_1
    add-int/lit8 v0, v9, -0x1

    if-ge v6, v0, :cond_8

    add-int/lit8 v0, v6, 0x1

    aget-object v0, p1, v0

    .line 268
    :goto_2
    iget v1, v10, Lcom/android/launcher3/popup/PopupPopulator$Item;->layoutId:I

    const/4 v4, 0x0

    invoke-virtual {v8, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 270
    if-eqz v2, :cond_9

    .line 271
    iget-boolean v4, v10, Lcom/android/launcher3/popup/PopupPopulator$Item;->isShortcut:Z

    iget-boolean v2, v2, Lcom/android/launcher3/popup/PopupPopulator$Item;->isShortcut:Z

    xor-int/2addr v2, v4

    move v5, v2

    .line 272
    :goto_3
    if-eqz v0, :cond_a

    .line 273
    iget-boolean v2, v10, Lcom/android/launcher3/popup/PopupPopulator$Item;->isShortcut:Z

    iget-boolean v0, v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->isShortcut:Z

    xor-int/2addr v0, v2

    move v2, v0

    .line 275
    :goto_4
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->NOTIFICATION:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne v10, v0, :cond_d

    move-object v0, v1

    .line 276
    check-cast v0, Lcom/android/launcher3/notification/NotificationItemView;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 277
    const/4 v0, 0x1

    if-le p2, v0, :cond_b

    const/4 v0, 0x1

    move v4, v0

    .line 278
    :goto_5
    if-eqz v4, :cond_c

    .line 279
    const v0, 0x7f0b0095

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 280
    :goto_6
    const v11, 0x7f0e0056

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 281
    if-eqz v4, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    const v4, 0x7f0e0043

    invoke-virtual {v0, v4}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_0
    const/4 v0, 0x3

    .line 286
    if-eqz v5, :cond_1

    .line 287
    const/4 v0, 0x2

    .line 288
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    const v11, 0x7f0e0051

    invoke-virtual {v4, v11}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_1
    if-eqz v2, :cond_2

    .line 291
    and-int/lit8 v0, v0, -0x3

    .line 292
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    const v11, 0x7f0e0057

    invoke-virtual {v4, v11}, Lcom/android/launcher3/notification/NotificationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    const v11, 0x7f010029

    invoke-static {v4, v11}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 295
    iget-object v11, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v11, v4, v0}, Lcom/android/launcher3/notification/NotificationItemView;->setBackgroundWithCorners(II)V

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationItemView;->getMainView()Lcom/android/launcher3/notification/NotificationMainView;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/notification/NotificationMainView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 302
    :cond_3
    :goto_7
    iget-boolean v0, v10, Lcom/android/launcher3/popup/PopupPopulator$Item;->isShortcut:Z

    if-eqz v0, :cond_e

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-nez v0, :cond_4

    .line 305
    const v0, 0x7f04002b

    const/4 v4, 0x0

    .line 304
    invoke-virtual {v8, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addView(Landroid/view/View;)V

    .line 307
    if-eqz v5, :cond_4

    .line 308
    and-int/lit8 v0, v3, -0x2

    move v3, v0

    .line 311
    :cond_4
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-eq v10, v0, :cond_5

    .line 312
    if-lez p2, :cond_5

    .line 313
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 315
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 316
    const v5, 0x7f0b0076

    .line 315
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 317
    instance-of v4, v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v4, :cond_5

    .line 318
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    int-to-float v0, v0

    div-float/2addr v4, v0

    move-object v0, v1

    .line 319
    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    move-object v0, v1

    .line 320
    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {v0, v1, v10}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->addShortcutView(Landroid/view/View;Lcom/android/launcher3/popup/PopupPopulator$Item;)V

    .line 324
    if-eqz v2, :cond_6

    .line 325
    and-int/lit8 v3, v3, -0x3

    .line 262
    :cond_6
    :goto_8
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    .line 265
    :cond_7
    const/4 v0, 0x0

    move-object v2, v0

    goto/16 :goto_1

    .line 267
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 270
    :cond_9
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_3

    .line 272
    :cond_a
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_4

    .line 277
    :cond_b
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_5

    .line 279
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 298
    :cond_d
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    if-ne v10, v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto/16 :goto_7

    .line 328
    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 331
    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f010027

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 332
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->setBackgroundWithCorners(II)V

    .line 333
    if-lez p2, :cond_10

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->hideShortcuts(ZI)V

    .line 336
    :cond_10
    return-void
.end method

.method private animateOpen()V
    .locals 13

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setVisibility(I)V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    .line 355
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 356
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 357
    const v0, 0x7f0d0017

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    .line 358
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 361
    const/4 v1, 0x0

    .line 362
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/popup/PopupItemView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v1, v7

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->computeAnimStartPoint(I)Landroid/graphics/Point;

    move-result-object v7

    .line 366
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getPaddingTop()I

    move-result v0

    .line 367
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/popup/PopupItemView;->getBackgroundRadius()F

    move-result v8

    .line 368
    iget-object v9, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartRect:Landroid/graphics/Rect;

    iget v10, v7, Landroid/graphics/Point;->x:I

    iget v11, v7, Landroid/graphics/Point;->y:I

    iget v12, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10, v11, v12, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 369
    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v1, v0

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v0, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    new-instance v0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    .line 371
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    .line 370
    invoke-direct {v0, v8, v8, v1, v7}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 371
    const/4 v1, 0x0

    .line 370
    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 372
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 375
    sget-object v1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v7, v9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    aput v8, v7, v9

    invoke-static {p0, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 376
    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 377
    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 381
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 382
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 383
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 384
    const v4, 0x7f0d0018

    .line 383
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 386
    new-instance v3, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 397
    iput-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 398
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 399
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 400
    return-void

    .line 366
    :cond_1
    iget v0, v7, Landroid/graphics/Point;->y:I

    goto/16 :goto_1
.end method

.method private computeAnimStartPoint(I)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    iget-boolean v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 430
    const v0, 0x7f0b0081

    .line 429
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 432
    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-nez v1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v1

    sub-int v0, v1, v0

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 438
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getPaddingTop()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v3, :cond_2

    :goto_1
    add-int v1, v2, p1

    .line 439
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    .line 431
    :cond_1
    const v0, 0x7f0b0082

    goto :goto_0

    :cond_2
    move p1, v1

    .line 438
    goto :goto_1
.end method

.method private createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 733
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private enforceContainedWithinScreen(II)V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTranslationX()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTranslationX()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 414
    :cond_0
    iget v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    .line 417
    :cond_1
    iget v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    invoke-static {v1}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setX(F)V

    .line 420
    :cond_2
    iget v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    invoke-static {v1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setY(F)V

    .line 423
    :cond_3
    return-void
.end method

.method public static getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-object v0
.end method

.method private isAlignedWithStart()Z
    .locals 1

    .prologue
    .line 548
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
    .line 455
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v5

    .line 456
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result v0

    add-int v6, v0, p2

    .line 458
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v7

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 460
    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v8

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v1

    add-int v3, v0, v1

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 466
    add-int v0, v3, v5

    iget v1, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 467
    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v1

    iget v2, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 466
    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    .line 468
    :goto_0
    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v1

    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    if-le v4, v1, :cond_2

    const/4 v1, 0x1

    .line 469
    :goto_1
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v0, :cond_3

    if-eqz v1, :cond_10

    :cond_0
    move v1, v4

    .line 472
    :goto_2
    if-ne v1, v3, :cond_4

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    .line 473
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v0, :cond_f

    .line 474
    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    sub-int v0, v1, v0

    .line 478
    :goto_4
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 479
    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v9, v1

    .line 480
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 482
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->isAlignedWithStart()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 484
    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 486
    const v10, 0x7f0b007c

    .line 485
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 487
    div-int/lit8 v10, v9, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v10, v2

    sub-int v1, v2, v1

    .line 496
    :goto_5
    iget-boolean v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v2, :cond_6

    :goto_6
    add-int v10, v0, v1

    .line 499
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 500
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 502
    :goto_7
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v2, v1, v6

    .line 503
    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getTop()I

    move-result v1

    iget v11, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v11

    if-le v2, v1, :cond_8

    const/4 v1, 0x1

    :goto_8
    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 504
    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v1, :cond_e

    .line 505
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 509
    :goto_9
    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v1, :cond_9

    .line 510
    iget v1, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v10

    .line 514
    :goto_a
    iget v2, v8, Landroid/graphics/Rect;->top:I

    sub-int v2, v0, v2

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    .line 517
    add-int v0, v2, v6

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getBottom()I

    move-result v6

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v10

    if-le v0, v6, :cond_d

    .line 519
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    .line 521
    add-int v0, v3, v9

    iget v1, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 522
    sub-int v1, v4, v9

    iget v3, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    .line 523
    iget-boolean v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-nez v3, :cond_b

    .line 524
    add-int v3, v0, v5

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 526
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    .line 540
    :goto_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 543
    :goto_c
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setX(F)V

    .line 544
    int-to-float v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setY(F)V

    .line 545
    return-void

    .line 466
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 468
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 469
    goto/16 :goto_2

    .line 472
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 491
    :cond_5
    const v2, 0x7f0b007b

    .line 490
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 493
    const v10, 0x7f0b007d

    .line 492
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 494
    div-int/lit8 v10, v9, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v10, v2

    sub-int v1, v2, v1

    goto/16 :goto_5

    .line 496
    :cond_6
    neg-int v1, v1

    goto/16 :goto_6

    .line 501
    :cond_7
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v0

    goto/16 :goto_7

    .line 503
    :cond_8
    const/4 v1, 0x0

    goto :goto_8

    .line 512
    :cond_9
    iget v1, v8, Landroid/graphics/Rect;->left:I

    sub-int v1, v10, v1

    goto :goto_a

    .line 529
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move v0, v1

    goto :goto_b

    .line 532
    :cond_b
    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v3

    if-le v1, v3, :cond_c

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move v0, v1

    goto :goto_b

    .line 537
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    goto :goto_b

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_e
    move v0, v2

    goto/16 :goto_9

    :cond_f
    move v0, v1

    goto/16 :goto_4

    :cond_10
    move v1, v3

    goto/16 :goto_2
.end method

.method public static showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 156
    invoke-static {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->clearFocus()V

    .line 159
    return-object v3

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 162
    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    return-object v3

    .line 166
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    .line 167
    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutIdsForItem(Lcom/android/launcher3/ItemInfo;)Ljava/util/List;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationKeysForItem(Lcom/android/launcher3/ItemInfo;)Ljava/util/List;

    move-result-object v4

    .line 170
    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getEnabledSystemShortcutsForItem(Lcom/android/launcher3/ItemInfo;)Ljava/util/List;

    move-result-object v2

    .line 174
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    const v6, 0x7f040024

    const/4 v7, 0x0

    .line 174
    invoke-virtual {v0, v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 176
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setVisibility(I)V

    .line 177
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {v0, p0, v3, v4, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShow(Lcom/android/launcher3/BubbleTextView;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 179
    return-object v0
.end method

.method private updateNotificationHeader()V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 668
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getBadgePalette()Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v1

    .line 671
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/notification/NotificationItemView;->updateHeader(ILcom/android/launcher3/graphics/IconPalette;)V

    .line 673
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustItemHeights(III)Landroid/animation/Animator;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 746
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 749
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_3

    sub-int v0, p1, p2

    .line 751
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    .line 753
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v1}, Lcom/android/launcher3/notification/NotificationItemView;->getHeightMinusFooter()I

    move-result v1

    if-ne p1, v1, :cond_4

    move v1, v2

    .line 754
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v4, :cond_5

    move v4, v1

    .line 755
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v6, p1, v4}, Lcom/android/launcher3/notification/NotificationItemView;->animateHeightRemoval(IZ)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 758
    new-instance v6, Lcom/android/launcher3/anim/PropertyResetListener;

    sget-object v4, Lcom/android/launcher3/popup/PopupContainerWithArrow;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    move v4, v3

    move v5, v3

    .line 760
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 761
    invoke-virtual {p0, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v7

    .line 762
    if-eqz v5, :cond_1

    .line 764
    invoke-virtual {v7}, Lcom/android/launcher3/popup/PopupItemView;->getTranslationY()F

    move-result v8

    int-to-float v9, p2

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/android/launcher3/popup/PopupItemView;->setTranslationY(F)V

    .line 766
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-ne v7, v8, :cond_6

    iget-boolean v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v8, :cond_2

    if-eqz v1, :cond_6

    .line 760
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 750
    :cond_3
    neg-int v0, p1

    goto :goto_0

    :cond_4
    move v1, v3

    .line 753
    goto :goto_1

    :cond_5
    move v4, v3

    .line 754
    goto :goto_2

    .line 770
    :cond_6
    sget-object v8, Lcom/android/launcher3/popup/PopupContainerWithArrow;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v2, [F

    .line 771
    invoke-virtual {v7}, Lcom/android/launcher3/popup/PopupItemView;->getTranslationY()F

    move-result v10

    int-to-float v11, v0

    add-float/2addr v10, v11

    aput v10, v9, v3

    .line 770
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 771
    int-to-long v10, p3

    .line 770
    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 772
    invoke-virtual {v8, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    iget-object v9, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 774
    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-ne v7, v8, :cond_2

    move v5, v2

    .line 775
    goto :goto_4

    .line 778
    :cond_7
    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v1, :cond_8

    .line 780
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 782
    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;I)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 795
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method protected animateClose()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 862
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 863
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 866
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 867
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    .line 868
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    .line 869
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    .line 870
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 872
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    .line 874
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 875
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 876
    const v2, 0x7f0d0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    .line 877
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move v0, v1

    move v2, v1

    .line 881
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 882
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/popup/PopupItemView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 884
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->computeAnimStartPoint(I)Landroid/graphics/Point;

    move-result-object v7

    .line 885
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getPaddingTop()I

    move-result v0

    .line 886
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/popup/PopupItemView;->getBackgroundRadius()F

    move-result v8

    .line 887
    iget-object v9, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartRect:Landroid/graphics/Rect;

    iget v10, v7, Landroid/graphics/Point;->x:I

    iget v11, v7, Landroid/graphics/Point;->y:I

    iget v12, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10, v11, v12, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 888
    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 889
    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v0

    invoke-virtual {v7, v1, v0, v9, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 891
    :cond_3
    new-instance v0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    .line 892
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    .line 891
    invoke-direct {v0, v8, v8, v2, v7}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0, v13}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 893
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 894
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 895
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 897
    sget-object v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->ALPHA:Landroid/util/Property;

    new-array v2, v13, [F

    const/4 v7, 0x0

    aput v7, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 898
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 899
    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 900
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 903
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 904
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 905
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 907
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$5;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 918
    iput-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 919
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 920
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->forceHideBadge(Z)V

    .line 921
    return-void

    .line 885
    :cond_4
    iget v0, v7, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method protected closeComplete()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 927
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 929
    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 931
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    .line 932
    iput-boolean v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 933
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 934
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->forceHideBadge(Z)V

    .line 935
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 936
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 937
    return-void
.end method

.method public createPreDragCondition()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 1

    .prologue
    .line 607
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-object v0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x5

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 849
    const/16 v0, 0x9

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 850
    return-void
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public getExtendedTouchView()Landroid/view/View;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 810
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getItemCount()I
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getItemViewAt(I)Lcom/android/launcher3/popup/PopupItemView;
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v0, :cond_0

    .line 341
    add-int/lit8 p1, p1, 0x1

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupItemView;

    return-object v0
.end method

.method public getLogContainerType()I
    .locals 1

    .prologue
    .line 953
    const/16 v0, 0x9

    return v0
.end method

.method protected handleClose(Z)V
    .locals 0

    .prologue
    .line 854
    if-eqz p1, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    .line 859
    :goto_0
    return-void

    .line 857
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    goto :goto_0
.end method

.method protected isOfType(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 941
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    .line 829
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .locals 2

    .prologue
    .line 816
    if-nez p4, :cond_0

    .line 817
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    .line 818
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 819
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 821
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 648
    return v0

    .line 651
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

    .line 652
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-double v4, v1

    .line 651
    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 404
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/AbstractFloatingView;->onLayout(ZIIII)V

    .line 405
    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->enforceContainedWithinScreen(II)V

    .line 407
    return-void
.end method

.method protected onWidgetsBound()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->enableWidgetsIfExist(Lcom/android/launcher3/BubbleTextView;)V

    .line 730
    :cond_0
    return-void
.end method

.method public populateAndShow(Lcom/android/launcher3/BubbleTextView;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 185
    const v0, 0x7f0b007e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 186
    const v0, 0x7f0b007f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 188
    const v0, 0x7f0b0080

    .line 187
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 190
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    .line 193
    invoke-static/range {p2 .. p4}, Lcom/android/launcher3/popup/PopupPopulator;->getItemsToPopulate(Ljava/util/List;Ljava/util/List;Ljava/util/List;)[Lcom/android/launcher3/popup/PopupPopulator$Item;

    move-result-object v0

    .line 195
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addDummyViews([Lcom/android/launcher3/popup/PopupPopulator$Item;I)V

    .line 197
    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->measure(II)V

    .line 198
    add-int v1, v2, v6

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->orientAboutIcon(Lcom/android/launcher3/BubbleTextView;I)V

    .line 200
    iget-boolean v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 201
    if-eqz v7, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeAllViews()V

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    .line 205
    invoke-static {v0}, Lcom/android/launcher3/popup/PopupPopulator;->reverseItems([Lcom/android/launcher3/popup/PopupPopulator$Item;)[Lcom/android/launcher3/popup/PopupPopulator$Item;

    move-result-object v0

    .line 206
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addDummyViews([Lcom/android/launcher3/popup/PopupPopulator$Item;I)V

    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->measure(II)V

    .line 209
    add-int v0, v2, v6

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->orientAboutIcon(Lcom/android/launcher3/BubbleTextView;I)V

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-nez v0, :cond_2

    .line 214
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-nez v0, :cond_3

    .line 217
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    .line 223
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v0, v7

    .line 224
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 225
    if-nez v7, :cond_4

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 227
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

    .line 226
    const v0, 0x7f0c0087

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->isAlignedWithStart()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    const v0, 0x7f0b0083

    .line 235
    :goto_3
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 238
    invoke-direct {p0, v0, v6, v4, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addArrowView(IIII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    div-int/lit8 v3, v4, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 240
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_4
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    .line 242
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->measure(II)V

    .line 243
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateOpen()V

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->forceHideBadge(Z)V

    .line 249
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    .line 250
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 252
    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    move-object v3, p0

    move-object v4, p2

    move-object v6, p3

    move-object/from16 v8, p4

    .line 250
    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/popup/PopupPopulator;->createUpdateRunnable(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/notification/NotificationItemView;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 254
    return-void

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getDeepShortcutViews(Z)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getSystemShortcutViews(Z)Ljava/util/List;

    move-result-object v9

    goto/16 :goto_1

    .line 229
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v10, v11

    .line 231
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

    .line 230
    const v0, 0x7f0c0088

    .line 229
    invoke-virtual {v8, v0, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 237
    :cond_5
    const v0, 0x7f0b0084

    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 240
    goto :goto_4
.end method

.method public reduceNotificationViewHeight(II)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->adjustItemHeights(III)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public trimNotifications(Ljava/util/Map;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 676
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-nez v0, :cond_0

    .line 677
    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 680
    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/badge/BadgeInfo;

    .line 681
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 684
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 686
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->getHiddenShortcutsHeight()I

    move-result v0

    .line 688
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f010027

    invoke-static {v3, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v3

    .line 690
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    .line 691
    const/4 v5, 0x3

    .line 690
    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->setBackgroundWithCorners(II)V

    .line 692
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    iget-boolean v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    invoke-virtual {v3, v4}, Lcom/android/launcher3/shortcuts/ShortcutsItemView;->showAllShortcuts(Z)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 694
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 695
    const v4, 0x7f0d0019

    .line 694
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 696
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v4}, Lcom/android/launcher3/notification/NotificationItemView;->getHeightMinusFooter()I

    move-result v4

    invoke-virtual {p0, v4, v0, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->adjustItemHeights(III)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 698
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    sget-object v4, Lcom/android/launcher3/popup/PopupContainerWithArrow;->ALPHA:Landroid/util/Property;

    new-array v5, v12, [F

    aput v6, v5, v1

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 699
    int-to-long v4, v3

    .line 698
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 700
    new-instance v4, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;

    invoke-direct {v4, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 710
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 711
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 712
    const v4, 0x7f0d0018

    .line 711
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v4, v0

    .line 713
    invoke-direct {p0, v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 714
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 715
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 716
    int-to-double v8, v3

    long-to-double v4, v4

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v10

    sub-double v4, v8, v4

    double-to-long v4, v4

    invoke-virtual {v6, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 717
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v1

    aput-object v6, v3, v12

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 718
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 719
    return-void

    .line 721
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 722
    invoke-virtual {v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    .line 721
    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationKeyData;->extractKeysOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/notification/NotificationItemView;->trimNotifications(Ljava/util/List;)V

    .line 723
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public updateNotificationHeader(Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 660
    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    .line 661
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    .line 664
    :cond_0
    return-void
.end method
