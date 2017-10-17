.class public Lcom/android/launcher3/BubbleTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;


# static fields
.field private static final BADGE_SCALE_PROPERTY:Landroid/util/Property;

.field private static final STATE_PRESSED:[I


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

.field private mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

.field private mBadgeScale:F

.field private final mCenterVertically:Z

.field private final mCustomShadowsEnabled:Z

.field private final mDeferShadowGenerationOnTouch:Z

.field private mDisableRelayout:Z

.field private mForceHideBadge:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

.field private mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

.field private final mIconSize:I

.field private mIgnorePressedStateChange:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutHorizontal:Z

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

.field private mPressedBackground:Landroid/graphics/Bitmap;

.field private mSlop:F

.field private mStayPressed:Z

.field private final mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field private mTempIconBounds:Landroid/graphics/Rect;

.field private mTempSpaceForBadgeOffset:Landroid/graphics/Point;

.field private mTextColor:I


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/BubbleTextView;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/BubbleTextView;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    .line 106
    new-instance v0, Lcom/android/launcher3/BubbleTextView$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "badgeScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 105
    sput-object v0, Lcom/android/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    .line 124
    iput-boolean v4, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 138
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 142
    sget-object v0, Lcom/android/launcher3/R$styleable;->BubbleTextView:[I

    .line 141
    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 143
    const/4 v0, 0x4

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    .line 144
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    .line 146
    const/4 v0, 0x3

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 145
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    .line 148
    invoke-virtual {v2, v7, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 149
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 150
    if-nez v3, :cond_1

    .line 151
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 161
    :cond_0
    :goto_0
    const/4 v1, 0x5

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    .line 163
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 165
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-virtual {p0, v8}, Lcom/android/launcher3/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 174
    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x33000000

    invoke-virtual {p0, v0, v5, v5, v1}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer(FFFI)V

    .line 179
    :goto_1
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 180
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 184
    return-void

    .line 152
    :cond_1
    if-ne v3, v6, :cond_2

    .line 153
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 154
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 155
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    goto :goto_0

    .line 156
    :cond_2
    if-ne v3, v7, :cond_0

    .line 157
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 158
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 159
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    goto :goto_0

    .line 176
    :cond_3
    iput-object v8, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private applyIconAndLabel(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)V
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    .line 223
    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->isDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 224
    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0c0043

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 231
    :cond_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private drawBadgeIfNecessary(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 453
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v6

    .line 454
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v7

    .line 455
    int-to-float v0, v6

    int-to-float v1, v7

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 456
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    .line 457
    iget-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    move-object v1, p1

    .line 456
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/badge/BadgeRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/badge/BadgeInfo;Landroid/graphics/Rect;FLandroid/graphics/Point;)V

    .line 458
    neg-int v0, v6

    int-to-float v0, v0

    neg-int v1, v7

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 460
    :cond_1
    return-void
.end method

.method private hasBadge()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 597
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 598
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 599
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 600
    return-void
.end method


# virtual methods
.method public applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 574
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    if-eqz v0, :cond_2

    move v1, v2

    .line 576
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    .line 577
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    if-eqz v0, :cond_3

    move v5, v2

    .line 578
    :goto_1
    if-eqz v5, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    move v4, v0

    .line 579
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    .line 580
    if-nez v1, :cond_0

    if-eqz v5, :cond_1

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/FastBitmapDrawable;->getIconPalette()Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconPalette:Lcom/android/launcher3/graphics/IconPalette;

    .line 583
    if-eqz p2, :cond_5

    xor-int v0, v1, v5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 584
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    new-array v1, v2, [F

    aput v4, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 591
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v1, v3

    .line 575
    goto :goto_0

    :cond_3
    move v5, v3

    .line 577
    goto :goto_1

    .line 578
    :cond_4
    const/4 v0, 0x0

    move v4, v0

    goto :goto_2

    .line 586
    :cond_5
    iput v4, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    .line 587
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    goto :goto_3
.end method

.method protected applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)V

    .line 204
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V

    .line 210
    return-void
.end method

.method public applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p1, Lcom/android/launcher3/model/PackageItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)V

    .line 215
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 219
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 188
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 193
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->applyPromiseState(Z)V

    .line 197
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V

    .line 198
    return-void
.end method

.method public applyPromiseState(Z)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 545
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    .line 546
    if-eqz v1, :cond_2

    .line 547
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getInstallProgress()I

    move-result v1

    move v2, v1

    .line 550
    :goto_0
    if-lez v2, :cond_3

    .line 551
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v4, v3

    .line 552
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-double v6, v2

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v10

    .line 551
    const v3, 0x7f0c0062

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 550
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v1, :cond_4

    .line 558
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 565
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 566
    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    .line 571
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 548
    goto :goto_0

    :cond_2
    const/16 v1, 0x64

    move v2, v1

    goto :goto_0

    .line 553
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v4, v3

    const v3, 0x7f0c0063

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 560
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v1

    .line 561
    iget-object v0, v0, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 560
    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/graphics/DrawableFactory;->newPendingIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    .line 562
    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 537
    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 539
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 540
    return-void
.end method

.method clearPressedBackground()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setPressed(Z)V

    .line 365
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 366
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 396
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-nez v0, :cond_0

    .line 397
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawBadgeIfNecessary(Landroid/graphics/Canvas;)V

    .line 399
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 403
    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v1

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v2

    .line 407
    iget-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v3, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    iput-boolean v6, p0, Lcom/android/launcher3/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 412
    :cond_1
    or-int v3, v1, v2

    if-nez v3, :cond_3

    .line 413
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 422
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCurrentTextColor()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    if-nez v0, :cond_4

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 424
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawBadgeIfNecessary(Landroid/graphics/Canvas;)V

    .line 426
    return-void

    .line 415
    :cond_3
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 416
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 430
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 431
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v1, v6

    const/high16 v2, 0x33000000

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 432
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 433
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 434
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    .line 434
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 438
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v6

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v6

    const/high16 v3, 0x66000000

    .line 437
    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 439
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 442
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawBadgeIfNecessary(Landroid/graphics/Canvas;)V

    .line 443
    return-void
.end method

.method public forceHideBadge(Z)V
    .locals 4

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    if-ne v0, p1, :cond_0

    .line 464
    return-void

    .line 466
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    .line 468
    if-eqz p1, :cond_2

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    .line 473
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasBadge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v0

    .line 481
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 482
    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    add-int/2addr v2, v1

    .line 483
    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    add-int/2addr v3, v0

    .line 484
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 485
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mSlop:F

    .line 493
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 270
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 271
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    if-eqz v1, :cond_0

    .line 272
    sget-object v1, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    invoke-static {v0, v1}, Lcom/android/launcher3/BubbleTextView;->mergeDrawableStates([I[I)[I

    .line 274
    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 510
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 511
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 512
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 370
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 375
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 377
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 386
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 389
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 391
    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 499
    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 500
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 499
    add-int/2addr v0, v1

    .line 501
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v1

    .line 503
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingBottom()I

    move-result v3

    .line 502
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/launcher3/BubbleTextView;->setPadding(IIII)V

    .line 505
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 506
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 306
    const/4 v0, 0x1

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 339
    :cond_1
    :goto_0
    return v0

    .line 314
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 328
    iput-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 623
    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 626
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_2

    .line 627
    check-cast p1, Lcom/android/launcher3/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    .line 641
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 643
    :cond_1
    return-void

    .line 628
    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 629
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V

    .line 630
    iget v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->rank:I

    sget v1, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-ge v0, v1, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 637
    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/model/PackageItemInfo;

    if-eqz v0, :cond_0

    .line 638
    check-cast p1, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V

    goto :goto_0
.end method

.method public refreshDrawableState()V
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    if-nez v0, :cond_0

    .line 264
    invoke-super {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 266
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    if-nez v0, :cond_0

    .line 613
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 615
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 243
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 245
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getBottom()I

    move-result v0

    if-eq v0, p4, :cond_1

    goto :goto_0
.end method

.method public setLongPressTimeout(I)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->setLongPressTimeout(I)V

    .line 238
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 290
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 291
    return-void
.end method

.method setStayPressed(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    .line 344
    if-nez p1, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->recycleShadowBitmap(Landroid/graphics/Bitmap;)V

    .line 346
    iput-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 354
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;

    if-eqz v1, :cond_1

    .line 356
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;

    .line 357
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 356
    invoke-interface {v0, p0, v1}, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;->setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 361
    return-void

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 255
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 256
    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->checkItemInfo(Lcom/android/launcher3/ItemInfo;)V

    .line 258
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 516
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 517
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 523
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 524
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 528
    if-eqz p1, :cond_0

    .line 529
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public verifyHighRes()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    invoke-virtual {v0}, Lcom/android/launcher3/IconCache$IconLoadRequest;->cancel()V

    .line 651
    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfoWithIcon;

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfoWithIcon;

    .line 655
    iget-boolean v1, v0, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 660
    :cond_1
    return-void
.end method
