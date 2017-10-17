.class public Lcom/android/launcher3/folder/FolderIcon;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/FolderInfo$FolderListener;


# static fields
.field private static final BADGE_SCALE_PROPERTY:Landroid/util/Property;

.field public static final NUM_ITEMS_IN_PREVIEW:I

.field static sStaticValuesDirty:Z


# instance fields
.field mAnimating:Z

.field mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

.field private mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

.field private mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

.field private mBadgeScale:F

.field private mDrawingParams:Ljava/util/ArrayList;

.field mFolder:Lcom/android/launcher3/folder/Folder;

.field mFolderName:Lcom/android/launcher3/BubbleTextView;

.field private mInfo:Lcom/android/launcher3/FolderInfo;

.field private mIntrinsicIconSize:I

.field mLauncher:Lcom/android/launcher3/Launcher;

.field private mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

.field private mOpenAlarm:Lcom/android/launcher3/Alarm;

.field private mPrevTopPadding:I

.field private mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

.field private mReferenceDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field private mTempBounds:Landroid/graphics/Rect;

.field private mTempSpaceForBadgeOffset:Landroid/graphics/Point;

.field private mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

.field private mTotalWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/folder/FolderIcon;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/folder/FolderIcon;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/folder/FolderIcon;IILcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/FolderIcon;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/FolderIcon;->sStaticValuesDirty:Z

    .line 92
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_LEGACY_FOLDER_ICON:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x3

    .line 92
    :goto_0
    sput v0, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    .line 140
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "badgeScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 139
    sput-object v0, Lcom/android/launcher3/folder/FolderIcon;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    .line 86
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 115
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mIntrinsicIconSize:I

    .line 116
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTotalWidth:I

    .line 117
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPrevTopPadding:I

    .line 119
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 134
    new-instance v0, Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-direct {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    .line 137
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    .line 260
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 160
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mIntrinsicIconSize:I

    .line 116
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTotalWidth:I

    .line 117
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPrevTopPadding:I

    .line 119
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 134
    new-instance v0, Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-direct {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    .line 137
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    .line 260
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 155
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 156
    return-void
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 971
    if-nez p3, :cond_0

    .line 972
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    move v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    .line 978
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->start()V

    .line 979
    return-void

    .line 975
    :cond_0
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    move v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private computePreviewDrawingParams(II)V
    .locals 6

    .prologue
    .line 383
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mIntrinsicIconSize:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTotalWidth:I

    if-eq v0, p2, :cond_2

    .line 385
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 387
    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mIntrinsicIconSize:I

    .line 388
    iput p2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTotalWidth:I

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPrevTopPadding:I

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mTotalWidth:I

    .line 392
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v5

    move-object v3, p0

    .line 391
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->setup(Landroid/util/DisplayMetrics;Lcom/android/launcher3/DeviceProfile;Landroid/view/View;II)V

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iget v1, v1, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->previewSize:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mIntrinsicIconSize:I

    .line 394
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    .line 393
    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->init(IIZ)V

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updateItemDrawingParams(Z)V

    .line 398
    :cond_1
    return-void

    .line 384
    :cond_2
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPrevTopPadding:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPaddingTop()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->computePreviewDrawingParams(II)V

    .line 402
    return-void
.end method

.method private computePreviewItemDrawingParams(IILcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;
    .locals 1

    .prologue
    .line 475
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 476
    invoke-direct {p0, p3}, Lcom/android/launcher3/folder/FolderIcon;->getFinalIconParams(Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    return-object v0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    return-object v0
.end method

.method private copyToPreview(Lcom/android/launcher3/folder/PreviewImageView;)V
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/PreviewImageView;->copy(Landroid/view/View;)V

    .line 1166
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getPivotXForIconAnimation()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/PreviewImageView;->setPivotX(F)V

    .line 1168
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getPivotYForIconAnimation()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/PreviewImageView;->setPivotY(F)V

    .line 1169
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->bringToFront()V

    .line 1171
    :cond_0
    return-void
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 492
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 493
    iget v0, p2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v1, p2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 494
    iget v0, p2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v1, p2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 495
    iget-object v1, p2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 497
    if-eqz v1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 499
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mIntrinsicIconSize:I

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mIntrinsicIconSize:I

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 500
    instance-of v0, v1, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 501
    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    .line 502
    iget v2, p2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:F

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/FastBitmapDrawable;->drawWithBrightness(Landroid/graphics/Canvas;F)V

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 511
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 512
    return-void

    .line 504
    :cond_1
    iget v0, p2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 505
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 504
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 506
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 507
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public static fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 183
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    .line 185
    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/FolderIcon;->setClipToPadding(Z)V

    .line 186
    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iput-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    .line 187
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    iget-object v3, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 189
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 192
    invoke-virtual {v0, p3}, Lcom/android/launcher3/folder/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object p3, v0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    .line 195
    iput-object p1, v0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 196
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iput-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    .line 197
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v2, v1, v4

    const v2, 0x7f0c004c

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 198
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    .line 199
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 200
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 201
    invoke-virtual {v1, p3}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/FolderInfo;)V

    .line 202
    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    .line 203
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 205
    invoke-virtual {p3, v0}, Lcom/android/launcher3/FolderInfo;->addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 207
    iget-object v1, p1, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 208
    return-object v0
.end method

.method private getFinalIconParams(Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    .line 484
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 485
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->previewSize:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 487
    invoke-virtual {p1, v0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->update(FFF)V

    .line 488
    return-object p1
.end method

.method private getLocalCenterForIndex(II[I)F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->maxNumItems()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 458
    invoke-direct {p0, v0, p2, v1}, Lcom/android/launcher3/folder/FolderIcon;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 461
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-get0(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-get1(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v1, v1, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 464
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v1, v1, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 466
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v2, 0x0

    aput v0, p3, v2

    .line 467
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 165
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 166
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_LEGACY_FOLDER_ICON:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;-><init>()V

    .line 166
    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mSlop:F

    .line 170
    return-void

    .line 168
    :cond_0
    new-instance v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;-><init>()V

    goto :goto_0
.end method

.method private onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;)V
    .locals 17

    .prologue
    .line 310
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 311
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 316
    if-eqz p2, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    .line 318
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 319
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 321
    if-nez p3, :cond_4

    .line 322
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleX()F

    move-result v3

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleY()F

    move-result v7

    .line 328
    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 329
    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 332
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 333
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/Workspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 337
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 338
    add-int/lit8 v6, p5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v6, v3}, Lcom/android/launcher3/folder/FolderIcon;->getLocalCenterForIndex(II[I)F

    move-result v7

    .line 339
    const/4 v6, 0x0

    aget v6, v3, v6

    int-to-float v6, v6

    mul-float v6, v6, p4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v8, 0x0

    aput v6, v3, v8

    .line 340
    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    mul-float v6, v6, p4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v8, 0x1

    aput v6, v3, v8

    .line 342
    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    .line 343
    const/4 v8, 0x1

    aget v3, v3, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v3, v8

    .line 342
    invoke-virtual {v5, v6, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->maxNumItems()I

    move-result v3

    move/from16 v0, p5

    if-ge v0, v3, :cond_1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 347
    :goto_1
    mul-float v9, v7, p4

    .line 349
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 350
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v12, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v13, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v13, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 349
    const/16 v11, 0x190

    .line 351
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p2

    move v10, v9

    move-object/from16 v14, p6

    .line 348
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 352
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/Folder;->hideItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p5

    if-ge v0, v2, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 357
    :goto_2
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->hidden:Z

    .line 358
    :cond_0
    new-instance v3, Lcom/android/launcher3/folder/FolderIcon$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v2, v1}, Lcom/android/launcher3/folder/FolderIcon$3;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;Lcom/android/launcher3/ShortcutInfo;)V

    .line 364
    const-wide/16 v4, 0x190

    .line 358
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/launcher3/folder/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    :goto_3
    return-void

    .line 345
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 356
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 366
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_3

    :cond_4
    move-object/from16 v5, p3

    goto/16 :goto_0
.end method

.method private setFolder(Lcom/android/launcher3/folder/Folder;)V
    .locals 1

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updateItemDrawingParams(Z)V

    .line 224
    return-void
.end method

.method private updateBadgeScale(ZZ)V
    .locals 4

    .prologue
    .line 414
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 416
    :goto_0
    xor-int v1, p1, p2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    sget-object v1, Lcom/android/launcher3/folder/FolderIcon;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 422
    :goto_1
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :cond_1
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    goto :goto_1
.end method

.method private updateItemDrawingParams(Z)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 994
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-interface {v0, v1}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->getItemsToDisplay(Lcom/android/launcher3/folder/Folder;)Ljava/util/List;

    move-result-object v9

    .line 995
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 997
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1000
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1003
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v6, v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1007
    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1008
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 1009
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1011
    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_LEGACY_FOLDER_ICON:Z

    if-eqz v0, :cond_4

    .line 1012
    :cond_2
    invoke-direct {p0, v3, v6, v2}, Lcom/android/launcher3/folder/FolderIcon;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 1013
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1014
    iget-object v0, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    .line 1007
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1017
    :cond_4
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    .line 1018
    const/16 v7, 0x190

    move-object v1, p0

    move v5, v3

    .line 1017
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V

    .line 1020
    iget-object v1, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    if-eqz v1, :cond_5

    .line 1021
    iget-object v1, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->hasEqualFinalState(Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1025
    iget-object v1, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->cancel()V

    .line 1027
    :cond_5
    iput-object v0, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    .line 1028
    iget-object v0, v2, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->start()V

    goto :goto_3

    .line 1031
    :cond_6
    return-void
.end method

.method private willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 227
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 228
    if-eqz v1, :cond_0

    .line 229
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 231
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->isFull()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 228
    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    if-eq p1, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 228
    :cond_1
    return v0

    .line 230
    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/ItemInfo;)Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 241
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 1101
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 1102
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 1103
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 833
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 835
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-wrap0(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-nez v0, :cond_2

    return-void

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    return-void

    .line 848
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 849
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 850
    const/16 v6, 0x14

    move-object v0, p1

    move v2, v1

    .line 849
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    move v2, v0

    .line 859
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-get0(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-get1(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 862
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_6

    .line 863
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mDrawingParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 864
    iget-boolean v4, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->hidden:Z

    if-nez v4, :cond_4

    .line 865
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)V

    .line 862
    :cond_4
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 852
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 853
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->clipToBackground()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 854
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-static {v2, p1, v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-wrap3(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Landroid/graphics/Canvas;Landroid/graphics/Region$Op;)V

    move v2, v0

    goto :goto_0

    .line 868
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-get0(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-get1(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 870
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->clipToBackground()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 871
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v0, p1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-wrap2(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Landroid/graphics/Canvas;)V

    .line 873
    :cond_7
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 875
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->clipToBackground()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-wrap0(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 876
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 879
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 880
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetX()I

    move-result v0

    .line 881
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getOffsetY()I

    move-result v2

    .line 882
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iget v3, v3, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->previewSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v4}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->-get2(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 883
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    add-int v5, v0, v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v0, v2, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 886
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->getScaleProgress()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 887
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 888
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    .line 889
    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    move-object v1, p1

    .line 888
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/badge/BadgeRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/badge/BadgeInfo;Landroid/graphics/Rect;FLandroid/graphics/Point;)V

    .line 891
    :cond_b
    return-void

    :cond_c
    move v2, v0

    goto/16 :goto_0
.end method

.method public getFolder()Lcom/android/launcher3/folder/Folder;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method public getTextVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 990
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public growAndFadeOut()V
    .locals 7

    .prologue
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 1142
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1144
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 1145
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 1147
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/folder/PreviewImageView;->get(Landroid/content/Context;)Lcom/android/launcher3/folder/PreviewImageView;

    move-result-object v0

    .line 1152
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->copyToPreview(Lcom/android/launcher3/folder/PreviewImageView;)V

    .line 1153
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setVisibility(I)V

    .line 1155
    const/4 v1, 0x0

    invoke-static {v0, v1, v6, v6}, Lcom/android/launcher3/LauncherAnimUtils;->ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1156
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1157
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1158
    return-void
.end method

.method public onAdd(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    .line 1047
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/badge/FolderBadgeInfo;->addBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V

    .line 1048
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v1

    .line 1049
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateBadgeScale(ZZ)V

    .line 1050
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 1051
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 1052
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/ItemInfo;)V
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 248
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 251
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    .line 250
    if-eqz v0, :cond_3

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 258
    :cond_3
    return-void
.end method

.method public onDragExit()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->animateToRest()V

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 306
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 7

    .prologue
    .line 372
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v1

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->notifyDrop()V

    .line 379
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    .line 380
    return-void

    .line 376
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v1, v0

    goto :goto_0
.end method

.method public onItemsChanged(Z)V
    .locals 0

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updateItemDrawingParams(Z)V

    .line 1036
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 1037
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 1038
    return-void
.end method

.method public onRemove(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 3

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    .line 1057
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/badge/FolderBadgeInfo;->subtractBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V

    .line 1058
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v1

    .line 1059
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateBadgeScale(ZZ)V

    .line 1060
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 1061
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 1062
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/FolderIcon;->sStaticValuesDirty:Z

    .line 214
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x7f0c004c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1068
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 1074
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1077
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 1079
    const/4 v0, 0x1

    return v0

    .line 1082
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1096
    :cond_1
    :goto_0
    return v0

    .line 1084
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 1088
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 1091
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performCreateAnimation(Lcom/android/launcher3/ShortcutInfo;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 279
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreate(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mReferenceDrawable:Landroid/graphics/drawable/Drawable;

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 286
    const/16 v1, 0x15e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 289
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    move-object v0, p1

    .line 293
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    .line 294
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 294
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->computePreviewDrawingParams(II)V

    .line 299
    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/android/launcher3/folder/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public prepareAutoUpdate()V
    .locals 0

    .prologue
    .line 1042
    return-void
.end method

.method public prepareCreate(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    move-object v0, p1

    .line 268
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 269
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 269
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->computePreviewDrawingParams(II)V

    .line 271
    return-object v0
.end method

.method public removeListeners()V
    .locals 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderInfo;->removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 1107
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 1108
    return-void
.end method

.method public setBadgeInfo(Lcom/android/launcher3/badge/FolderBadgeInfo;)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateBadgeScale(ZZ)V

    .line 406
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    .line 407
    return-void
.end method

.method public setFolderBackground(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)V
    .locals 1

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    .line 828
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->setInvalidateDelegate(Landroid/view/View;)V

    .line 829
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2

    .prologue
    .line 982
    if-eqz p1, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 987
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public shrinkAndFadeIn(Z)V
    .locals 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1111
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1112
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 1115
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/folder/PreviewImageView;->get(Landroid/content/Context;)Lcom/android/launcher3/folder/PreviewImageView;

    move-result-object v1

    .line 1116
    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewImageView;->removeFromParent()V

    .line 1117
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->copyToPreview(Lcom/android/launcher3/folder/PreviewImageView;)V

    .line 1119
    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearFolderLeaveBehind()V

    .line 1123
    :cond_0
    invoke-static {v1, v3, v3, v3}, Lcom/android/launcher3/LauncherAnimUtils;->ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1124
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1125
    new-instance v3, Lcom/android/launcher3/folder/FolderIcon$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon$4;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/folder/PreviewImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1135
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1136
    if-nez p1, :cond_1

    .line 1137
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    .line 1139
    :cond_1
    return-void
.end method
