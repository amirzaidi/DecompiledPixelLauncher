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

.field mBackground:Lcom/android/launcher3/folder/PreviewBackground;

.field private mBackgroundIsVisible:Z

.field private mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

.field private mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

.field private mBadgeScale:F

.field mFolder:Lcom/android/launcher3/folder/Folder;

.field mFolderName:Lcom/android/launcher3/BubbleTextView;

.field private mInfo:Lcom/android/launcher3/FolderInfo;

.field mLauncher:Lcom/android/launcher3/Launcher;

.field private mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

.field private mOpenAlarm:Lcom/android/launcher3/Alarm;

.field private mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

.field mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

.field mPreviewVerifier:Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field private mTempBounds:Landroid/graphics/Rect;

.field private mTempSpaceForBadgeOffset:Landroid/graphics/Point;

.field private mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/folder/FolderIcon;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/PreviewItemManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/folder/FolderIcon;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/FolderIcon;->sStaticValuesDirty:Z

    .line 84
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_LEGACY_FOLDER_ICON:Z

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x3

    .line 84
    :goto_0
    sput v0, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    .line 122
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "badgeScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 121
    sput-object v0, Lcom/android/launcher3/folder/FolderIcon;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    .line 78
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 107
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 116
    new-instance v0, Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-direct {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    .line 119
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    .line 250
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 142
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 107
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 116
    new-instance v0, Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-direct {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    .line 119
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    .line 250
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 137
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->init()V

    .line 138
    return-void
.end method

.method private copyToPreview(Lcom/android/launcher3/folder/PreviewImageView;)V
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/PreviewImageView;->copy(Landroid/view/View;)V

    .line 682
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getPivotXForIconAnimation()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/PreviewImageView;->setPivotX(F)V

    .line 684
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getPivotYForIconAnimation()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/PreviewImageView;->setPivotY(F)V

    .line 685
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->bringToFront()V

    .line 687
    :cond_0
    return-void
.end method

.method public static fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 166
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    .line 169
    invoke-virtual {v0, v4}, Lcom/android/launcher3/folder/FolderIcon;->setClipToPadding(Z)V

    .line 170
    const v1, 0x7f0e0047

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iput-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    .line 171
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    iget-object v3, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 173
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 176
    invoke-virtual {v0, p3}, Lcom/android/launcher3/folder/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iput-object p3, v0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    .line 179
    iput-object p1, v0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 180
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iput-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    .line 181
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v2, v1, v4

    const v2, 0x7f0c004e

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    .line 183
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 184
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/Folder;->setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V

    .line 185
    invoke-virtual {v1, p3}, Lcom/android/launcher3/folder/Folder;->bind(Lcom/android/launcher3/FolderInfo;)V

    .line 186
    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    .line 187
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 189
    invoke-virtual {p3, v0}, Lcom/android/launcher3/FolderInfo;->addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 191
    iget-object v1, p1, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 192
    return-object v0
.end method

.method private getLocalCenterForIndex(II[I)F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 419
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v1}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->maxNumItems()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 418
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 421
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 422
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->getIntrinsicIconSize()F

    move-result v0

    .line 425
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 426
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 428
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aput v1, p3, v2

    .line 429
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 430
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 147
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 148
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_LEGACY_FOLDER_ICON:Z

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/StackFolderIconLayoutRule;-><init>()V

    .line 148
    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mSlop:F

    .line 152
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/PreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 153
    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;-><init>()V

    goto :goto_0
.end method

.method private onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;)V
    .locals 20

    .prologue
    .line 288
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 289
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 294
    if-eqz p2, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    .line 296
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 297
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 299
    if-nez p3, :cond_9

    .line 300
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v8

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleX()F

    move-result v5

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getScaleY()F

    move-result v9

    .line 306
    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 307
    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 308
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v7}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 310
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/FolderIcon;->setScaleX(F)V

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/folder/FolderIcon;->setScaleY(F)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/Workspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 315
    :goto_0
    const/4 v5, 0x0

    .line 316
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v8}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->maxNumItems()I

    move-result v8

    move/from16 v0, p5

    if-lt v0, v8, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v8}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->hasEnterExitIndices()Z

    move-result v8

    .line 316
    if-eqz v8, :cond_8

    .line 318
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v9

    .line 319
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 320
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v10

    .line 322
    invoke-interface {v9, v10}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 323
    const/4 v5, 0x0

    move v8, v5

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ge v8, v5, :cond_4

    .line 324
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move/from16 p5, v8

    .line 323
    :cond_0
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_1

    :cond_1
    move/from16 v19, v5

    .line 337
    :goto_2
    if-nez v19, :cond_2

    .line 338
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 341
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 342
    add-int/lit8 v8, p5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v8, v5}, Lcom/android/launcher3/folder/FolderIcon;->getLocalCenterForIndex(II[I)F

    move-result v9

    .line 343
    const/4 v8, 0x0

    aget v8, v5, v8

    int-to-float v8, v8

    mul-float v8, v8, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v10, 0x0

    aput v8, v5, v10

    .line 344
    const/4 v8, 0x1

    aget v8, v5, v8

    int-to-float v8, v8

    mul-float v8, v8, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v10, 0x1

    aput v8, v5, v10

    .line 346
    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v8, v10

    .line 347
    const/4 v10, 0x1

    aget v5, v5, v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v5, v10

    .line 346
    invoke-virtual {v7, v8, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v5}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->maxNumItems()I

    move-result v5

    move/from16 v0, p5

    if-ge v0, v5, :cond_6

    const/high16 v8, 0x3f000000    # 0.5f

    .line 351
    :goto_3
    mul-float v11, v9, p4

    .line 353
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 354
    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v14, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v15, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 353
    const/16 v13, 0x190

    .line 355
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v5, p2

    move v12, v11

    move-object/from16 v16, p6

    .line 352
    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/Folder;->hideItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 359
    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v5, 0x1

    move/from16 v0, p5

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    .line 361
    :cond_3
    new-instance v4, Lcom/android/launcher3/folder/FolderIcon$3;

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher3/folder/FolderIcon$3;-><init>(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/ShortcutInfo;)V

    .line 367
    const-wide/16 v6, 0x190

    .line 361
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/launcher3/folder/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    :goto_4
    return-void

    .line 330
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    move-object/from16 v0, p1

    invoke-virtual {v5, v9, v10, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->onDrop(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/ShortcutInfo;)V

    .line 331
    const/4 v5, 0x1

    move/from16 v19, v5

    goto/16 :goto_2

    .line 333
    :cond_5
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/folder/FolderIcon;->removeItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    move/from16 v19, v5

    goto/16 :goto_2

    .line 349
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 369
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_4

    :cond_8
    move/from16 v19, v5

    goto/16 :goto_2

    :cond_9
    move-object/from16 v7, p3

    goto/16 :goto_0
.end method

.method private setFolder(Lcom/android/launcher3/folder/Folder;)V
    .locals 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 207
    new-instance v0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->updateItemDrawingParams(Z)V

    .line 209
    return-void
.end method

.method private updateBadgeScale(ZZ)V
    .locals 3

    .prologue
    .line 399
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 401
    :goto_0
    xor-int v1, p1, p2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->createBadgeScaleAnimator([F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 407
    :goto_1
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :cond_1
    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    goto :goto_1
.end method

.method private willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 213
    if-eqz v1, :cond_0

    .line 214
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 216
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->isFull()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 213
    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    if-eq p1, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 213
    :cond_1
    return v0

    .line 215
    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/ItemInfo;)Z
    .locals 1

    .prologue
    .line 220
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
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 225
    return-void
.end method

.method public addItem(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 229
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 612
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 613
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 614
    return-void
.end method

.method public clearLeaveBehindIfExists()V
    .locals 4

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 647
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v0, v0, Lcom/android/launcher3/FolderInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 649
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearFolderLeaveBehind()V

    .line 651
    :cond_0
    return-void
.end method

.method public varargs createBadgeScaleAnimator([F)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/android/launcher3/folder/FolderIcon;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 445
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 447
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    .line 451
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-nez v0, :cond_2

    return-void

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mAnimating:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    return-void

    .line 460
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 461
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 462
    const/16 v6, 0x14

    move-object v0, p1

    move v2, v1

    .line 461
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 471
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v3, v3, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 472
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    .line 473
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v3, v3, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 475
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->clipToBackground()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 476
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/PreviewBackground;->clipCanvasHardware(Landroid/graphics/Canvas;)V

    .line 478
    :cond_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 480
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->clipToBackground()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 481
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 484
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 485
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v0

    .line 486
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v2

    .line 487
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v3, v3, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v4, v4, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 488
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    add-int v5, v0, v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v0, v2, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 491
    iget v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeScale:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewBackground;->getScaleProgress()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 492
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 493
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconPalette;->getFolderBadgePalette(Landroid/content/res/Resources;)Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v2

    .line 494
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempBounds:Landroid/graphics/Rect;

    .line 495
    iget-object v6, p0, Lcom/android/launcher3/folder/FolderIcon;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    move-object v1, p1

    .line 494
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/badge/BadgeRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/graphics/IconPalette;Lcom/android/launcher3/badge/BadgeInfo;Landroid/graphics/Rect;FLandroid/graphics/Point;)V

    .line 497
    :cond_9
    return-void

    .line 464
    :cond_a
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 465
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    invoke-interface {v2}, Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;->clipToBackground()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 466
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/folder/PreviewBackground;->clipCanvasSoftware(Landroid/graphics/Canvas;Landroid/graphics/Region$Op;)V

    goto/16 :goto_0
.end method

.method public drawLeaveBehindIfExists()V
    .locals 6

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 656
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 657
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 659
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 661
    :cond_0
    return-void
.end method

.method public getFolder()Lcom/android/launcher3/folder/Folder;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method public getLayoutRule()Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/FolderIcon$PreviewLayoutRule;

    return-object v0
.end method

.method public getPreviewItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewItemsOnPage(I)Ljava/util/List;
    .locals 6

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/android/launcher3/FolderInfo;)V

    .line 524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 525
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v3

    .line 526
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 527
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sget v5, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-ne v0, v5, :cond_2

    .line 536
    :cond_1
    return-object v2

    .line 527
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getTextVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 508
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public growAndFadeOut()V
    .locals 4

    .prologue
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 664
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->drawLeaveBehindIfExists()V

    .line 667
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/folder/PreviewImageView;->get(Landroid/content/Context;)Lcom/android/launcher3/folder/PreviewImageView;

    move-result-object v0

    .line 668
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->copyToPreview(Lcom/android/launcher3/folder/PreviewImageView;)V

    .line 669
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setVisibility(I)V

    .line 671
    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 672
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 673
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 674
    return-void
.end method

.method public hasBadge()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdd(Lcom/android/launcher3/ShortcutInfo;I)V
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/badge/FolderBadgeInfo;->addBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V

    .line 559
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v1

    .line 560
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateBadgeScale(ZZ)V

    .line 561
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 562
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 563
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/ItemInfo;)V
    .locals 4

    .prologue
    .line 236
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

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 238
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 240
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 243
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-nez v0, :cond_2

    .line 244
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    .line 243
    if-nez v0, :cond_2

    .line 245
    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 242
    if-eqz v0, :cond_3

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 248
    :cond_3
    return-void
.end method

.method public onDragExit()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 284
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 7

    .prologue
    .line 375
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v1

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->notifyDrop()V

    .line 382
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

    .line 383
    return-void

    .line 379
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v1, v0

    goto :goto_0
.end method

.method public onFolderClose(I)V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->onFolderClose(I)V

    .line 691
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updateItemDrawingParams(Z)V

    .line 547
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 548
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 549
    return-void
.end method

.method public onRemove(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    .line 568
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/badge/FolderBadgeInfo;->subtractBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V

    .line 569
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v1

    .line 570
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateBadgeScale(ZZ)V

    .line 571
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 572
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->requestLayout()V

    .line 573
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/FolderIcon;->sStaticValuesDirty:Z

    .line 198
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v2, 0x7f0c004e

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 579
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 588
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 590
    const/4 v0, 0x1

    return v0

    .line 593
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 607
    :cond_1
    :goto_0
    return v0

    .line 595
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 599
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 602
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/FolderIcon;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 593
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
    .line 264
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    .line 272
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public performDestroyAnimation(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    .line 279
    return-void
.end method

.method public prepareAutoUpdate()V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method public prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 233
    return-void
.end method

.method public removeListeners()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderInfo;->removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 618
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 619
    return-void
.end method

.method public setBackgroundVisible(Z)V
    .locals 0

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackgroundIsVisible:Z

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 441
    return-void
.end method

.method public setBadgeInfo(Lcom/android/launcher3/badge/FolderBadgeInfo;)V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/badge/FolderBadgeInfo;->hasBadge()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updateBadgeScale(ZZ)V

    .line 387
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBadgeInfo:Lcom/android/launcher3/badge/FolderBadgeInfo;

    .line 388
    return-void
.end method

.method public setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 1

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 435
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/PreviewBackground;->setInvalidateDelegate(Landroid/view/View;)V

    .line 436
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2

    .prologue
    .line 500
    if-eqz p1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public shrinkAndFadeIn(Z)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 623
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/folder/PreviewImageView;->get(Landroid/content/Context;)Lcom/android/launcher3/folder/PreviewImageView;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewImageView;->removeFromParent()V

    .line 625
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->copyToPreview(Lcom/android/launcher3/folder/PreviewImageView;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->clearLeaveBehindIfExists()V

    .line 629
    invoke-static {v0, v1, v1, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 630
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 631
    new-instance v2, Lcom/android/launcher3/folder/FolderIcon$4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/folder/FolderIcon$4;-><init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/PreviewImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 639
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 640
    if-nez p1, :cond_0

    .line 641
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 643
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
