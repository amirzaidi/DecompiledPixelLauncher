.class public Lcom/android/launcher3/BubbleTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;


# static fields
.field private static final BADGE_SCALE_PROPERTY:Landroid/util/Property;

.field private static final STATE_PRESSED:[I

.field public static final TEXT_ALPHA_PROPERTY:Landroid/util/Property;


# instance fields
.field private mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

.field private mBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

.field private mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

.field private mBadgeScale:F

.field private final mCenterVertically:Z

.field private final mDeferShadowGenerationOnTouch:Z

.field private mDisableRelayout:Z

.field private mForceHideBadge:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

.field private final mIconSize:I

.field private mIgnorePressedStateChange:Z

.field private mIsIconVisible:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutHorizontal:Z

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private final mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

.field private mPressedBackground:Landroid/graphics/Bitmap;

.field private final mSlop:F

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

.method static synthetic -wrap0(Lcom/android/launcher3/BubbleTextView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getTextAlpha()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/launcher3/BubbleTextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    .line 97
    new-instance v0, Lcom/android/launcher3/BubbleTextView$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "badgeScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 96
    sput-object v0, Lcom/android/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    .line 111
    new-instance v0, Lcom/android/launcher3/BubbleTextView$2;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "textAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 110
    sput-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-boolean v5, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    .line 93
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    .line 128
    iput-boolean v4, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 142
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mSlop:F

    .line 147
    sget-object v0, Lcom/android/launcher3/R$styleable;->BubbleTextView:[I

    .line 146
    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 148
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    .line 150
    const/4 v0, 0x3

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 149
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    .line 152
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 153
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 154
    if-nez v3, :cond_1

    .line 155
    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v3, v3

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 156
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 166
    :cond_0
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    .line 168
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 170
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 173
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 178
    return-void

    .line 157
    :cond_1
    if-ne v3, v5, :cond_2

    .line 158
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 159
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 160
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    goto :goto_0

    .line 161
    :cond_2
    if-ne v3, v6, :cond_0

    .line 162
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 163
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 164
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    goto :goto_0
.end method

.method private applyIconAndLabel(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    .line 221
    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->isDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 222
    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0c0045

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getTextAlpha()I
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    return v0
.end method

.method private hasBadge()Z
    .locals 1

    .prologue
    .line 406
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

    .line 552
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 553
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 554
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 557
    :cond_0
    return-void
.end method

.method private setTextAlpha(I)V
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-static {v0, p1}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    return-void
.end method


# virtual methods
.method public applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 522
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    if-eqz v0, :cond_3

    move v1, v2

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    .line 525
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    if-eqz v0, :cond_4

    move v5, v2

    .line 526
    :goto_1
    if-eqz v5, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    move v4, v0

    .line 527
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    .line 528
    if-nez v1, :cond_0

    if-eqz v5, :cond_2

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconPalette;->getBadgePalette(Landroid/content/res/Resources;)Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    .line 530
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/FastBitmapDrawable;->getIconPalette()Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    .line 534
    :cond_1
    if-eqz p2, :cond_6

    xor-int v0, v1, v5

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 535
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    new-array v1, v2, [F

    aput v4, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 542
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v1, v3

    .line 523
    goto :goto_0

    :cond_4
    move v5, v3

    .line 525
    goto :goto_1

    .line 526
    :cond_5
    const/4 v0, 0x0

    move v4, v0

    goto :goto_2

    .line 537
    :cond_6
    iput v4, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    .line 538
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    goto :goto_3
.end method

.method protected applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 572
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)V

    .line 198
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 203
    instance-of v0, p1, Lcom/android/launcher3/PromiseAppInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 204
    check-cast v0, Lcom/android/launcher3/PromiseAppInfo;

    .line 205
    iget v0, v0, Lcom/android/launcher3/PromiseAppInfo;->level:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel(I)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 207
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V

    .line 208
    return-void
.end method

.method public applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p1, Lcom/android/launcher3/model/PackageItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)V

    .line 213
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 217
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 182
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 187
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->applyPromiseState(Z)V

    .line 191
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V

    .line 192
    return-void
.end method

.method public applyProgressLevel(I)Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 497
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfoWithIcon;

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfoWithIcon;

    .line 499
    if-lez p1, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    .line 501
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-double v4, p1

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 500
    const v3, 0x7f0c006b

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 499
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 508
    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 515
    :goto_1
    return-object v0

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const v3, 0x7f0c006c

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v1

    .line 511
    iget-object v0, v0, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 510
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/graphics/DrawableFactory;->newPendingIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    .line 512
    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 513
    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 518
    :cond_2
    return-object v9
.end method

.method public applyPromiseState(Z)V
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 484
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    .line 485
    if-eqz v1, :cond_2

    .line 486
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getInstallProgress()I

    move-result v0

    .line 489
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel(I)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    .line 494
    :cond_0
    return-void

    .line 487
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 476
    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 478
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 479
    return-void
.end method

.method clearPressedBackground()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setPressed(Z)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 336
    return-void
.end method

.method public createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 471
    :goto_0
    sget-object v2, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 470
    goto :goto_0
.end method

.method protected drawBadgeIfNecessary(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v7

    .line 384
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v8

    .line 385
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    iget-object v4, p0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    .line 387
    iget-object v6, p0, Lcom/android/launcher3/BubbleTextView;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    move-object v1, p1

    .line 386
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/badge/BadgeRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/graphics/IconPalette;Lcom/android/launcher3/badge/BadgeInfo;Landroid/graphics/Rect;FLandroid/graphics/Point;)V

    .line 388
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 390
    :cond_1
    return-void
.end method

.method protected drawWithoutBadge(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 367
    return-void
.end method

.method public forceHideBadge(Z)V
    .locals 4

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    if-ne v0, p1, :cond_0

    .line 394
    return-void

    .line 396
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    .line 398
    if-eqz p1, :cond_2

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 400
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasBadge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
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

.method public getBadgePalette()Lcom/android/launcher3/graphics/IconPalette;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v0

    .line 411
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 412
    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    add-int/2addr v2, v1

    .line 413
    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    add-int/2addr v3, v0

    .line 414
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 415
    return-void
.end method

.method public getIconSize()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 255
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 256
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    invoke-static {v0, v1}, Lcom/android/launcher3/BubbleTextView;->mergeDrawableStates([I[I)[I

    .line 259
    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawBadgeIfNecessary(Landroid/graphics/Canvas;)V

    .line 373
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 345
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 347
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 356
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 358
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 359
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 361
    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 421
    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 422
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 421
    add-int/2addr v0, v1

    .line 423
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 424
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v1

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingBottom()I

    move-result v3

    .line 424
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/launcher3/BubbleTextView;->setPadding(IIII)V

    .line 427
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 428
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 276
    const/4 v0, 0x1

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 309
    :cond_1
    :goto_0
    return v0

    .line 284
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 298
    iput-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 279
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

    .line 591
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 592
    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 596
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 598
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_2

    .line 599
    check-cast p1, Lcom/android/launcher3/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    .line 615
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 617
    :cond_1
    return-void

    .line 600
    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 601
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;)V

    .line 603
    new-instance v0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 604
    iget v1, p1, Lcom/android/launcher3/ItemInfoWithIcon;->rank:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 611
    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/model/PackageItemInfo;

    if-eqz v0, :cond_0

    .line 612
    check-cast p1, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V

    goto :goto_0
.end method

.method public refreshDrawableState()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    if-nez v0, :cond_0

    .line 249
    invoke-super {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 251
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    if-nez v0, :cond_0

    .line 582
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 584
    :cond_0
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 560
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 562
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 563
    if-nez p1, :cond_0

    .line 564
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 565
    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 567
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 568
    iput-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 569
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->setLongPressTimeout(I)V

    .line 236
    return-void
.end method

.method setStayPressed(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    .line 314
    if-nez p1, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->recycleShadowBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    iput-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 324
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;

    if-eqz v1, :cond_1

    .line 326
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;

    .line 327
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 326
    invoke-interface {v0, p0, v1}, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;->setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 331
    return-void

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 240
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 241
    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->checkItemInfo(Lcom/android/launcher3/ItemInfo;)V

    .line 243
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 432
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 433
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 439
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 440
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1

    .prologue
    .line 450
    if-eqz p1, :cond_0

    .line 451
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(I)V

    goto :goto_0
.end method

.method public shouldTextBeVisible()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 445
    :goto_0
    instance-of v3, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 446
    :goto_1
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_2
    return v0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 445
    goto :goto_1

    .line 446
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public verifyHighRes()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    invoke-virtual {v0}, Lcom/android/launcher3/IconCache$IconLoadRequest;->cancel()V

    .line 625
    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfoWithIcon;

    if-eqz v0, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfoWithIcon;

    .line 629
    iget-boolean v1, v0, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 634
    :cond_1
    return-void
.end method
