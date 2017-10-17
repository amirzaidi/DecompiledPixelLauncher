.class public Lcom/android/launcher3/CellLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;


# static fields
.field private static final BACKGROUND_STATE_ACTIVE:[I

.field private static final BACKGROUND_STATE_DEFAULT:[I

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field mCellHeight:I

.field mCellWidth:I

.field private final mChildScale:F

.field private final mContainerType:I

.field private mCountX:I

.field private mCountY:I

.field private mDirectionVector:[I

.field private final mDragCell:[I

.field mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field mDragOutlines:[Landroid/graphics/Rect;

.field private mDragging:Z

.field private mDropPending:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFixedCellHeight:I

.field private mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mFolderBackgrounds:Ljava/util/ArrayList;

.field mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIntersectingViews:Ljava/util/ArrayList;

.field private mIsDragOverlapping:Z

.field private mIsDragTarget:Z

.field private mItemPlacementDirty:Z

.field private mJailContent:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field private mOccupiedRect:Landroid/graphics/Rect;

.field mPreviousReorderDirection:[I

.field mReorderAnimators:Ljava/util/HashMap;

.field final mReorderPreviewAnimationMagnitude:F

.field mShakeAnimators:Ljava/util/HashMap;

.field private mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field private mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectStack:Ljava/util/Stack;

.field private mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field final mTmpPoint:[I

.field private final mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

.field private mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

.field private mUseTouchHelper:Z


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/CellLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mChildScale:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/CellLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/CellLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a2

    aput v1, v0, v2

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    .line 112
    new-array v0, v2, [I

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 92
    iput-boolean v8, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    .line 93
    iput-boolean v8, p0, Lcom/android/launcher3/CellLayout;->mJailContent:Z

    .line 97
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 98
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    .line 116
    iput v7, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 117
    iput v7, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 120
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 126
    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 130
    iput v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 138
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 141
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    .line 143
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 173
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 174
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    .line 177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 183
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    .line 1105
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 195
    sget-object v0, Lcom/android/launcher3/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setWillNotDraw(Z)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 203
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 207
    iput v7, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput v7, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 208
    iput v7, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iput v7, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 210
    iget-object v0, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 211
    iget-object v0, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 212
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v3, v5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 213
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v3, v5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v3, -0x64

    aput v3, v0, v1

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v3, -0x64

    aput v3, v0, v8

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iput v7, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellX:I

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iput v7, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellY:I

    .line 221
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-ne v0, v8, :cond_0

    iget-object v0, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatScale:F

    :goto_0
    iput v0, p0, Lcom/android/launcher3/CellLayout;->mChildScale:F

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 226
    const v0, 0x7f020005

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    iget v0, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const v2, 0x3df5c28f    # 0.12f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 233
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    aput v7, v2, v8

    aput v7, v0, v1

    move v0, v1

    .line 235
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a001c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    const v0, 0x7f0d000d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 246
    const v0, 0x7f0d000e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v5, v0

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    move v6, v1

    .line 250
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 252
    new-instance v0, Lcom/android/launcher3/InterruptibleInOutAnimator;

    int-to-long v2, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 253
    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/CellLayout$1;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/launcher3/CellLayout$1;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 277
    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/CellLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/CellLayout$2;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aput-object v0, v1, v6

    .line 250
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 288
    :cond_2
    new-instance v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 291
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 293
    new-instance v0, Lcom/android/launcher3/ClickShadowView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/ClickShadowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 11

    .prologue
    .line 1323
    iget-object v0, p4, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/util/CellAndSpan;

    .line 1324
    const/4 v10, 0x0

    .line 1325
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1326
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 1328
    iget v1, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v9, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    .line 1329
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v6, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 1328
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1331
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1333
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1334
    const/4 v0, 0x1

    .line 1336
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v2, 0x1

    invoke-virtual {v1, v9, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1337
    return v0

    :cond_0
    move v0, v10

    .line 1331
    goto :goto_0
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 12

    .prologue
    .line 1622
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1624
    :cond_0
    const/4 v10, 0x0

    .line 1625
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1627
    move-object/from16 v0, p5

    invoke-virtual {v0, p1, v11}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 1630
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1631
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1632
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_0

    .line 1635
    :cond_1
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 1636
    iget v7, v11, Landroid/graphics/Rect;->top:I

    .line 1637
    iget v8, v11, Landroid/graphics/Rect;->left:I

    .line 1640
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1641
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    .line 1642
    iget v2, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v2, v8

    iget v3, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v3, v7

    iget v4, v5, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v5, v5, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_1

    .line 1645
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 1647
    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1648
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1649
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v7, v6, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v8, v1, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    move-object v1, p0

    move-object v6, p3

    .line 1647
    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1652
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-ltz v1, :cond_3

    .line 1653
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v2, v1, v2

    .line 1654
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    .line 1655
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1656
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1657
    iget v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1658
    iget v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v5, v3

    iput v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_2

    :cond_3
    move v2, v10

    .line 1664
    :goto_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1665
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1666
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_4

    .line 1660
    :cond_4
    const/4 v1, 0x1

    move v2, v1

    goto :goto_3

    .line 1668
    :cond_5
    return v2
.end method

.method private animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 12

    .prologue
    .line 1920
    iget-object v10, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 1921
    invoke-virtual {v10}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 1923
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 1924
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v11, :cond_2

    .line 1925
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1926
    if-ne v1, p2, :cond_1

    .line 1924
    :cond_0
    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 1927
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/util/CellAndSpan;

    .line 1928
    if-eqz v8, :cond_0

    .line 1929
    iget v2, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    .line 1930
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1929
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 1931
    const/4 v0, 0x1

    invoke-virtual {v10, v8, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_1

    .line 1934
    :cond_2
    if-eqz p3, :cond_3

    .line 1935
    const/4 v0, 0x1

    invoke-virtual {v10, p1, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1937
    :cond_3
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1676
    aget v0, p3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    aget v1, p3, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v2, :cond_4

    .line 1679
    aget v0, p3, v2

    .line 1680
    aput v3, p3, v2

    .line 1682
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1684
    return v2

    .line 1686
    :cond_0
    aput v0, p3, v2

    .line 1687
    aget v0, p3, v3

    .line 1688
    aput v3, p3, v3

    .line 1690
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1692
    return v2

    .line 1695
    :cond_1
    aput v0, p3, v3

    .line 1698
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1699
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1700
    aget v0, p3, v2

    .line 1701
    aput v3, p3, v2

    .line 1702
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1704
    return v2

    .line 1707
    :cond_2
    aput v0, p3, v2

    .line 1708
    aget v0, p3, v3

    .line 1709
    aput v3, p3, v3

    .line 1710
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1712
    return v2

    .line 1715
    :cond_3
    aput v0, p3, v3

    .line 1716
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1717
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1765
    :goto_0
    return v3

    .line 1722
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1724
    return v2

    .line 1727
    :cond_5
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1728
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1729
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1731
    return v2

    .line 1734
    :cond_6
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1735
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1741
    aget v0, p3, v2

    .line 1742
    aget v1, p3, v3

    aput v1, p3, v2

    .line 1743
    aput v0, p3, v3

    .line 1744
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1746
    return v2

    .line 1750
    :cond_7
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1751
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1752
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1754
    return v2

    .line 1757
    :cond_8
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1758
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1761
    aget v0, p3, v2

    .line 1762
    aget v1, p3, v3

    aput v1, p3, v2

    .line 1763
    aput v0, p3, v3

    goto :goto_0
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V
    .locals 12

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 1944
    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v11, :cond_3

    .line 1945
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1946
    if-ne v2, p2, :cond_1

    .line 1944
    :cond_0
    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 1947
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1948
    if-nez p4, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1949
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move v4, v0

    .line 1951
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1952
    if-eqz v1, :cond_0

    xor-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    .line 1953
    new-instance v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1954
    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v6, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v8, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v9, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object v1, p0

    move/from16 v3, p4

    .line 1953
    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;-><init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V

    .line 1955
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V

    goto :goto_1

    .line 1948
    :cond_2
    const/4 v0, 0x0

    move v4, v0

    goto :goto_2

    .line 1958
    :cond_3
    return-void
.end method

.method private commitTempPlacement()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2120
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 2122
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v4

    .line 2123
    const/16 v0, -0x64

    .line 2125
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-ne v1, v11, :cond_5

    .line 2126
    const-wide/16 v4, -0x1

    .line 2127
    const/16 v0, -0x65

    move v10, v0

    .line 2130
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v14

    move v13, v12

    .line 2131
    :goto_1
    if-ge v13, v14, :cond_4

    .line 2132
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2133
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2134
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 2137
    if-eqz v1, :cond_1

    .line 2138
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v2, v3, :cond_0

    .line 2139
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-eq v2, v3, :cond_2

    :cond_0
    move v2, v11

    .line 2142
    :goto_2
    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v3, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 2143
    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v3, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 2144
    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v3, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2145
    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2147
    if-eqz v2, :cond_1

    .line 2148
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    int-to-long v2, v10

    .line 2149
    iget v6, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2148
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/ItemInfo;JJIIII)V

    .line 2131
    :cond_1
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_1

    .line 2139
    :cond_2
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v2, v3, :cond_0

    .line 2140
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v2, v3, :cond_3

    move v2, v11

    goto :goto_2

    :cond_3
    move v2, v12

    goto :goto_2

    .line 2153
    :cond_4
    return-void

    :cond_5
    move v10, v0

    goto :goto_0
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 2

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2114
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    goto :goto_0

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2117
    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    .line 1829
    div-float v0, p2, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 1831
    aput v4, p3, v4

    .line 1832
    aput v4, p3, v5

    .line 1833
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 1834
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 1836
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 1837
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    aput v0, p3, v5

    .line 1839
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V
    .locals 8

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 1884
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1885
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1886
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1888
    if-eqz p2, :cond_0

    .line 1889
    new-instance v1, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v1, v5, v6, v7, v0}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    move-object v0, v1

    .line 1893
    :goto_1
    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    .line 1884
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1891
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v1, v5, v6, v7, v0}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    move-object v0, v1

    goto :goto_1

    .line 1895
    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1898
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 1900
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 1901
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 1902
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1903
    if-ne v1, p2, :cond_1

    .line 1901
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1904
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1905
    iget-object v4, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1906
    if-eqz v1, :cond_0

    .line 1907
    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 1908
    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 1909
    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 1910
    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 1911
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_1

    .line 1914
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1915
    return-void
.end method

.method private findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 10

    .prologue
    .line 2165
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 2166
    const/4 v1, 0x2

    new-array v9, v1, [I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 2167
    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    .line 2169
    const/4 v1, 0x0

    aget v1, v8, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v8, v1

    if-ltz v1, :cond_0

    .line 2170
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 2171
    const/4 v1, 0x0

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    .line 2172
    const/4 v1, 0x1

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    .line 2173
    const/4 v1, 0x0

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    .line 2174
    const/4 v1, 0x1

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    .line 2175
    const/4 v1, 0x1

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2179
    :goto_0
    return-object p8

    .line 2177
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0
.end method

.method private findNearestArea(IIIIIIZ[I[I)[I
    .locals 22

    .prologue
    .line 1138
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->lazyInitTempRectStack()V

    .line 1143
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    add-int/lit8 v4, p5, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v12, v2

    .line 1144
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    add-int/lit8 v4, p6, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v13, v2

    .line 1147
    if-eqz p8, :cond_1

    .line 1148
    :goto_0
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1149
    new-instance v14, Landroid/graphics/Rect;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1150
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 1152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    move/from16 v16, v0

    .line 1153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    move/from16 v17, v0

    .line 1155
    if-lez p3, :cond_0

    if-gtz p4, :cond_2

    .line 1157
    :cond_0
    return-object p8

    .line 1147
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p8, v0

    goto :goto_0

    .line 1155
    :cond_2
    if-lez p5, :cond_0

    if-lez p6, :cond_0

    .line 1156
    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    .line 1160
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v17, v2

    if-ge v11, v2, :cond_19

    .line 1162
    const/4 v2, 0x0

    move v10, v2

    :goto_2
    add-int/lit8 v2, p3, -0x1

    sub-int v2, v16, v2

    if-ge v10, v2, :cond_18

    .line 1163
    const/4 v3, -0x1

    .line 1164
    const/4 v2, -0x1

    .line 1165
    if-eqz p7, :cond_20

    .line 1167
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move/from16 v0, p3

    if-ge v3, v0, :cond_5

    .line 1168
    const/4 v2, 0x0

    :goto_4
    move/from16 v0, p4

    if-ge v2, v0, :cond_4

    .line 1169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v4, v4, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v5, v10, v3

    aget-object v4, v4, v5

    add-int v5, v11, v2

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_3

    move-wide v2, v8

    .line 1162
    :goto_5
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v8, v2

    goto :goto_2

    .line 1168
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1167
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 1180
    :cond_5
    const/4 v2, 0x1

    .line 1181
    move/from16 v0, p3

    move/from16 v1, p5

    if-lt v0, v1, :cond_8

    const/4 v6, 0x1

    .line 1182
    :goto_6
    move/from16 v0, p4

    move/from16 v1, p6

    if-lt v0, v1, :cond_9

    const/4 v5, 0x1

    move v7, v2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1183
    :goto_7
    if-eqz v6, :cond_a

    move v2, v5

    :goto_8
    if-nez v2, :cond_12

    .line 1184
    if-eqz v7, :cond_c

    xor-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_c

    .line 1185
    const/4 v2, 0x0

    move/from16 v20, v2

    move v2, v6

    move/from16 v6, v20

    :goto_9
    if-ge v6, v4, :cond_b

    .line 1186
    add-int v18, v10, v3

    add-int/lit8 v19, v16, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    move-object/from16 v18, v0

    add-int v19, v10, v3

    aget-object v18, v18, v19

    add-int v19, v11, v6

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_7

    .line 1188
    :cond_6
    const/4 v2, 0x1

    .line 1185
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1181
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 1182
    :cond_9
    const/4 v5, 0x0

    move v7, v2

    move/from16 v3, p3

    move/from16 v4, p4

    goto :goto_7

    .line 1183
    :cond_a
    const/4 v2, 0x0

    goto :goto_8

    .line 1191
    :cond_b
    if-nez v2, :cond_1f

    .line 1192
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    move v4, v2

    move/from16 v20, v3

    move v3, v5

    move/from16 v5, v20

    .line 1205
    :goto_a
    move/from16 v0, p5

    if-lt v5, v0, :cond_10

    const/4 v2, 0x1

    :goto_b
    or-int/2addr v4, v2

    .line 1206
    move/from16 v0, p6

    if-lt v6, v0, :cond_11

    const/4 v2, 0x1

    :goto_c
    or-int/2addr v2, v3

    .line 1207
    xor-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v5

    move v5, v2

    move/from16 v20, v4

    move v4, v6

    move/from16 v6, v20

    goto :goto_7

    .line 1194
    :cond_c
    if-nez v5, :cond_1e

    .line 1195
    const/4 v2, 0x0

    move/from16 v20, v2

    move v2, v5

    move/from16 v5, v20

    :goto_d
    if-ge v5, v3, :cond_f

    .line 1196
    add-int v18, v11, v4

    add-int/lit8 v19, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    move-object/from16 v18, v0

    add-int v19, v10, v5

    aget-object v18, v18, v19

    add-int v19, v11, v4

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_e

    .line 1198
    :cond_d
    const/4 v2, 0x1

    .line 1195
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1201
    :cond_f
    if-nez v2, :cond_1d

    .line 1202
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v2

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto :goto_a

    .line 1205
    :cond_10
    const/4 v2, 0x0

    goto :goto_b

    .line 1206
    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 1211
    :cond_12
    move/from16 v0, p6

    if-lt v4, v0, :cond_13

    :cond_13
    move v5, v4

    move v4, v3

    .line 1213
    :goto_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v7}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1220
    add-int v3, v10, v4

    add-int v6, v11, v5

    invoke-virtual {v2, v10, v11, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1221
    const/4 v6, 0x0

    .line 1222
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_14
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1223
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1224
    const/4 v3, 0x1

    .line 1228
    :goto_f
    invoke-virtual {v15, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    const/4 v6, 0x0

    aget v6, v7, v6

    sub-int/2addr v6, v12

    int-to-double v0, v6

    move-wide/from16 v18, v0

    const/4 v6, 0x1

    aget v6, v7, v6

    sub-int/2addr v6, v13

    int-to-double v6, v6

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 1231
    cmpg-double v18, v6, v8

    if-gtz v18, :cond_15

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_16

    .line 1232
    :cond_15
    invoke-virtual {v2, v14}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    .line 1231
    if-eqz v3, :cond_1b

    .line 1234
    :cond_16
    const/4 v3, 0x0

    aput v10, p8, v3

    .line 1235
    const/4 v3, 0x1

    aput v11, p8, v3

    .line 1236
    if-eqz p9, :cond_17

    .line 1237
    const/4 v3, 0x0

    aput v4, p9, v3

    .line 1238
    const/4 v3, 0x1

    aput v5, p9, v3

    .line 1240
    :cond_17
    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide v2, v6

    goto/16 :goto_5

    .line 1160
    :cond_18
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_1

    .line 1246
    :cond_19
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v2, v8, v2

    if-nez v2, :cond_1a

    .line 1247
    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, p8, v3

    .line 1248
    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, p8, v3

    .line 1250
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    .line 1251
    return-object p8

    :cond_1b
    move-wide v2, v8

    goto/16 :goto_5

    :cond_1c
    move v3, v6

    goto :goto_f

    :cond_1d
    move v5, v3

    move v3, v2

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto/16 :goto_a

    :cond_1e
    move/from16 v20, v5

    move v5, v3

    move/from16 v3, v20

    move/from16 v21, v6

    move v6, v4

    move/from16 v4, v21

    goto/16 :goto_a

    :cond_1f
    move v6, v4

    move v4, v2

    move/from16 v20, v3

    move v3, v5

    move/from16 v5, v20

    goto/16 :goto_a

    :cond_20
    move v4, v2

    move v5, v3

    goto/16 :goto_e
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 14

    .prologue
    .line 1276
    if-eqz p8, :cond_1

    .line 1277
    :goto_0
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 1278
    const/high16 v3, -0x80000000

    .line 1280
    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 1281
    iget v9, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 1283
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v9, v2

    if-ge v7, v2, :cond_8

    .line 1285
    const/4 v2, 0x0

    move v6, v2

    move v2, v3

    :goto_2
    add-int/lit8 v3, p3, -0x1

    sub-int v3, v8, v3

    if-ge v6, v3, :cond_7

    .line 1287
    const/4 v3, 0x0

    move v5, v3

    :goto_3
    move/from16 v0, p3

    if-ge v5, v0, :cond_4

    .line 1288
    const/4 v3, 0x0

    :goto_4
    move/from16 v0, p4

    if-ge v3, v0, :cond_3

    .line 1289
    add-int v10, v6, v5

    aget-object v10, p6, v10

    add-int v11, v7, v3

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_2

    if-eqz p7, :cond_0

    aget-object v10, p7, v5

    aget-boolean v10, v10, v3

    if-eqz v10, :cond_2

    :cond_0
    move v3, v4

    .line 1285
    :goto_5
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto :goto_2

    .line 1276
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p8, v0

    goto :goto_0

    .line 1288
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1287
    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    .line 1295
    :cond_4
    sub-int v3, v6, p1

    int-to-double v10, v3

    sub-int v3, v7, p2

    int-to-double v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v5, v10

    .line 1296
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1297
    sub-int v10, v6, p1

    int-to-float v10, v10

    sub-int v11, v7, p2

    int-to-float v11, v11

    invoke-direct {p0, v10, v11, v3}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    .line 1300
    const/4 v10, 0x0

    aget v10, p5, v10

    const/4 v11, 0x0

    aget v11, v3, v11

    mul-int/2addr v10, v11

    .line 1301
    const/4 v11, 0x1

    aget v11, p5, v11

    const/4 v12, 0x1

    aget v3, v3, v12

    mul-int/2addr v3, v11

    .line 1300
    add-int/2addr v3, v10

    .line 1302
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-ltz v10, :cond_5

    .line 1303
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_6

    .line 1304
    if-le v3, v2, :cond_6

    .line 1307
    :cond_5
    const/4 v2, 0x0

    aput v6, p8, v2

    .line 1308
    const/4 v2, 0x1

    aput v7, p8, v2

    move v2, v3

    move v3, v5

    goto :goto_5

    :cond_6
    move v3, v4

    .line 1304
    goto :goto_5

    .line 1283
    :cond_7
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v2

    goto/16 :goto_1

    .line 1314
    :cond_8
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v4, v2

    if-nez v2, :cond_9

    .line 1315
    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, p8, v3

    .line 1316
    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, p8, v3

    .line 1318
    :cond_9
    return-object p8
.end method

.method private findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 13

    .prologue
    .line 1845
    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 1848
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 1852
    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1853
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v10

    .line 1858
    const/4 v2, 0x0

    aget v3, v10, v2

    const/4 v2, 0x1

    aget v4, v10, v2

    move-object v2, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 1861
    if-nez v2, :cond_3

    .line 1864
    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    if-eqz p9, :cond_1

    .line 1865
    :cond_0
    add-int/lit8 v7, p5, -0x1

    .line 1866
    const/4 v11, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    .line 1865
    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v2

    return-object v2

    .line 1867
    :cond_1
    move/from16 v0, p6

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 1868
    add-int/lit8 v8, p6, -0x1

    .line 1869
    const/4 v11, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    .line 1868
    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v2

    return-object v2

    .line 1871
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 1879
    :goto_0
    return-object p10

    .line 1873
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 1874
    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    .line 1875
    const/4 v2, 0x1

    aget v2, v10, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    .line 1876
    move/from16 v0, p5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    .line 1877
    move/from16 v0, p6

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    goto :goto_0
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 13

    .prologue
    .line 2192
    const/4 v1, 0x2

    new-array v6, v1, [I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 2194
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    .line 2195
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2196
    const/4 v1, 0x0

    aget v8, v6, v1

    const/4 v1, 0x1

    aget v9, v6, v1

    move-object v7, p0

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2197
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2199
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2200
    const/4 v1, 0x0

    aget v2, v6, v1

    const/4 v1, 0x1

    aget v3, v6, v1

    .line 2201
    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 2200
    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2203
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 2204
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 2206
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2207
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v2, p0

    .line 2206
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2209
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, p1

    div-int v1, v1, p3

    .line 2210
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v2, p2

    div-int v2, v2, p4

    .line 2212
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-eq v8, v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 2213
    :cond_0
    const/4 v1, 0x0

    .line 2215
    :cond_1
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-eq v9, v3, :cond_2

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    .line 2216
    :cond_2
    const/4 v2, 0x0

    .line 2219
    :cond_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 2221
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, p6, v2

    .line 2222
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, p6, v2

    .line 2226
    :goto_0
    return-void

    .line 2224
    :cond_4
    int-to-float v1, v1

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    goto :goto_0
.end method

.method private getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;
    .locals 2

    .prologue
    .line 447
    const v0, 0x7f0e0004

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 448
    instance-of v1, v0, Lcom/android/launcher3/util/ParcelableSparseArray;

    if-eqz v1, :cond_0

    .line 449
    check-cast v0, Lcom/android/launcher3/util/ParcelableSparseArray;

    .line 448
    :goto_0
    return-object v0

    .line 449
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/ParcelableSparseArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/ParcelableSparseArray;-><init>()V

    goto :goto_0
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 11

    .prologue
    .line 2231
    if-eqz p6, :cond_0

    .line 2232
    add-int v1, p1, p3

    add-int v2, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2234
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 2235
    new-instance v3, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v3, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2236
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2237
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    .line 2238
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    .line 2239
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2240
    move-object/from16 v0, p5

    if-ne v6, v0, :cond_2

    .line 2238
    :cond_1
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2241
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2242
    iget v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v8, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v9, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v10

    iget v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v1, v10

    invoke-virtual {v4, v7, v8, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2243
    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2244
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2245
    if-eqz p6, :cond_1

    .line 2246
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2250
    :cond_3
    return-void
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    :cond_0
    return-void
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1528
    new-instance v7, Lcom/android/launcher3/CellLayout$ViewCluster;

    invoke-direct {v7, p0, p1, p5}, Lcom/android/launcher3/CellLayout$ViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    .line 1529
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1536
    aget v0, p3, v4

    if-gez v0, :cond_0

    .line 1538
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    move v6, v2

    .line 1551
    :goto_0
    if-gtz v1, :cond_3

    .line 1552
    return v4

    .line 1539
    :cond_0
    aget v0, p3, v4

    if-lez v0, :cond_1

    .line 1540
    const/4 v0, 0x4

    .line 1541
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v1

    move v6, v0

    goto :goto_0

    .line 1542
    :cond_1
    aget v0, p3, v2

    if-gez v0, :cond_2

    .line 1543
    const/4 v0, 0x2

    .line 1544
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    move v6, v0

    goto :goto_0

    .line 1546
    :cond_2
    const/16 v0, 0x8

    .line 1547
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    move v6, v0

    goto :goto_0

    .line 1556
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1557
    iget-object v5, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1558
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v5, v0, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_1

    .line 1564
    :cond_4
    invoke-virtual {p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->save()V

    .line 1569
    invoke-virtual {v7, v6}, Lcom/android/launcher3/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    move v5, v1

    move v3, v4

    .line 1571
    :goto_2
    if-lez v5, :cond_7

    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_7

    .line 1572
    iget-object v0, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1576
    iget-object v1, v7, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eq v0, p4, :cond_5

    .line 1577
    invoke-virtual {v7, v0, v6}, Lcom/android/launcher3/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1578
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1579
    iget-boolean v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v1, :cond_6

    move v0, v2

    .line 1592
    :goto_4
    add-int/lit8 v1, v5, -0x1

    .line 1596
    invoke-virtual {v7, v6, v2}, Lcom/android/launcher3/CellLayout$ViewCluster;->shift(II)V

    move v5, v1

    move v3, v0

    goto :goto_2

    .line 1584
    :cond_6
    invoke-virtual {v7, v0}, Lcom/android/launcher3/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1585
    iget-object v1, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1588
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v0, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_3

    .line 1600
    :cond_7
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1604
    if-nez v3, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-gt v1, v3, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_8

    .line 1605
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-gt v0, v1, :cond_8

    move v1, v2

    .line 1612
    :goto_5
    iget-object v0, v7, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1613
    iget-object v4, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1614
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v4, v0, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_6

    .line 1608
    :cond_8
    invoke-virtual {p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->restore()V

    move v1, v4

    goto :goto_5

    .line 1617
    :cond_9
    return v1

    :cond_a
    move v0, v3

    goto :goto_4
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 12

    .prologue
    .line 1771
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1773
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1774
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1777
    if-eqz p6, :cond_2

    .line 1778
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 1779
    if-eqz v2, :cond_2

    .line 1780
    iput p1, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1781
    iput p2, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1784
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v5, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1785
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1786
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1787
    move-object/from16 v0, p6

    if-eq v2, v0, :cond_3

    .line 1788
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    .line 1789
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1790
    iget v8, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v9, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v10, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v11, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v10, v11

    iget v11, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v11

    invoke-virtual {v6, v8, v9, v10, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1791
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1792
    iget-boolean v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_4

    .line 1793
    const/4 v2, 0x0

    return v2

    .line 1795
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1799
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p7

    iput-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 1804
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1806
    const/4 v2, 0x1

    return v2

    .line 1810
    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1812
    const/4 v2, 0x1

    return v2

    .line 1816
    :cond_7
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1817
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/android/launcher3/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1818
    const/4 v2, 0x0

    return v2

    .line 1821
    :cond_9
    const/4 v2, 0x1

    return v2
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2

    .prologue
    .line 1115
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1118
    :cond_0
    return-void
.end method

.method private setUseTempCoords(Z)V
    .locals 3

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 2157
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2159
    iput-boolean p1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 2157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2161
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptsWidget()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 604
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public addFolderBackground(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 612
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 613
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 614
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-eq v1, v2, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 617
    :cond_0
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 618
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 622
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_5

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_5

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_5

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_5

    .line 625
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 626
    :cond_1
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 628
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 632
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 634
    if-eqz p5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 636
    :cond_3
    return v2

    :cond_4
    move v1, v3

    .line 614
    goto :goto_0

    .line 638
    :cond_5
    return v3
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 14

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 915
    invoke-virtual {v9, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 916
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/launcher3/ItemInfo;

    .line 920
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 921
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 922
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_0
    iget v11, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 926
    iget v12, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 927
    if-eqz p7, :cond_1

    .line 928
    if-eqz p6, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 929
    :goto_0
    iget v3, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v4, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v5, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 930
    iget v5, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v7, 0x1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 932
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 933
    if-eqz p6, :cond_3

    .line 934
    move/from16 v0, p2

    iput v0, v8, Lcom/android/launcher3/ItemInfo;->cellX:I

    move/from16 v0, p2

    iput v0, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 935
    move/from16 v0, p3

    iput v0, v8, Lcom/android/launcher3/ItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 940
    :goto_1
    invoke-virtual {v9, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 941
    const/4 v2, 0x0

    iput-boolean v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 942
    iget v6, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 943
    iget v8, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 945
    iput v11, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 946
    iput v12, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 949
    if-ne v11, v6, :cond_4

    if-ne v12, v8, :cond_4

    .line 950
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 951
    const/4 v2, 0x1

    return v2

    .line 928
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_0

    .line 937
    :cond_3
    move/from16 v0, p2

    iput v0, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 938
    move/from16 v0, p3

    iput v0, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    .line 954
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 955
    move/from16 v0, p4

    int-to-long v2, v0

    invoke-virtual {v13, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 956
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    new-instance v2, Lcom/android/launcher3/CellLayout$3;

    move-object v3, p0

    move-object v4, v10

    move v5, v11

    move v7, v12

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/CellLayout$3;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 967
    new-instance v2, Lcom/android/launcher3/CellLayout$4;

    invoke-direct {v2, p0, v10, p1}, Lcom/android/launcher3/CellLayout$4;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 985
    move/from16 v0, p5

    int-to-long v2, v0

    invoke-virtual {v13, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 986
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 987
    const/4 v2, 0x1

    return v2

    .line 989
    :cond_5
    const/4 v2, 0x0

    return v2

    .line 954
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->buildLayer()V

    .line 364
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 581
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 584
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v1

    .line 585
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 586
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 587
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    .line 746
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 747
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 3

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 731
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 733
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    const/4 v2, 0x0

    aput v0, p3, v2

    .line 734
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v0, p2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 735
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 2559
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 2560
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 2562
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v2

    .line 2563
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v3

    .line 2565
    mul-int v4, p3, v0

    .line 2566
    mul-int v5, p4, v1

    .line 2567
    mul-int/2addr v0, p1

    add-int/2addr v0, v2

    .line 2568
    mul-int/2addr v1, p2

    add-int/2addr v1, v3

    .line 2570
    add-int v2, v0, v4

    add-int v3, v1, v5

    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2571
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2608
    instance-of v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1079
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1080
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1081
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 1082
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 557
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iput v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellX:I

    .line 558
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iput v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellY:I

    .line 559
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 560
    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 13

    .prologue
    .line 2280
    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2281
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2284
    const/4 v2, 0x0

    aget v3, v7, v2

    const/4 v2, 0x1

    aget v4, v7, v2

    .line 2285
    new-instance v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    const/4 v11, 0x1

    move-object v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    .line 2284
    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v2

    .line 2287
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2288
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_0

    .line 2292
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2293
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2294
    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2296
    if-eqz p7, :cond_1

    .line 2297
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->commitTempPlacement()V

    .line 2298
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2299
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2304
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2306
    :cond_0
    iget-boolean v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return v2

    .line 2302
    :cond_1
    const/16 v3, 0x96

    const/4 v4, 0x1

    .line 2301
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    goto :goto_0
.end method

.method disableDragTarget()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    .line 411
    return-void
.end method

.method public disableJailContent()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mJailContent:Z

    .line 428
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 522
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    move v1, v2

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    .line 526
    iget-boolean v3, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->isClipping:Z

    if-eqz v3, :cond_0

    .line 527
    iget v3, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellX:I

    iget v4, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 528
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 529
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 530
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 524
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 534
    :cond_1
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x1

    return v0

    .line 332
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mJailContent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 444
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mJailContent:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    .line 434
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 435
    const v1, 0x7f0e0004

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method public enableAccessibleDrag(ZI)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    .line 300
    if-nez p1, :cond_1

    .line 301
    invoke-static {p0, v0}, Landroid/support/v4/view/f;->aft(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 302
    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p0, v1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 324
    :cond_0
    return-void

    .line 306
    :cond_1
    if-ne p2, v2, :cond_3

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    instance-of v0, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    xor-int/lit8 v0, v0, 0x1

    .line 306
    if-eqz v0, :cond_3

    .line 308
    new-instance v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 313
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/f;->aft(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 309
    :cond_3
    if-ne p2, v1, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    instance-of v0, v0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;

    xor-int/lit8 v0, v0, 0x1

    .line 309
    if-eqz v0, :cond_2

    .line 311
    new-instance v0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    goto :goto_1
.end method

.method public enableHardwareLayer(Z)V
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 360
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findCellForSpan([III)Z
    .locals 1

    .prologue
    .line 2499
    if-nez p1, :cond_0

    .line 2500
    const/4 v0, 0x2

    new-array p1, v0, [I

    .line 2502
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v0

    return v0
.end method

.method public findNearestArea(IIII[I)[I
    .locals 10

    .prologue
    .line 2478
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIII[I[I)[I
    .locals 10

    .prologue
    .line 1101
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2603
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2613
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCountX()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .prologue
    .line 2586
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 780
    aget v0, p3, v3

    aget v1, p3, v4

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 781
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getItemMoveDescription(II)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1069
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-ne v0, v3, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 1071
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1070
    const v2, 0x7f0c006c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1074
    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1073
    const v2, 0x7f0c006a

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-object v0
.end method

.method public getUnusedHorizontalSpace()I
    .locals 3

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasReorderSolution(Lcom/android/launcher3/ItemInfo;)Z
    .locals 14

    .prologue
    .line 2810
    const/4 v0, 0x2

    new-array v13, v0, [I

    .line 2812
    const/4 v0, 0x0

    move v11, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 2813
    const/4 v0, 0x0

    move v12, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    if-ge v12, v0, :cond_1

    .line 2814
    invoke-virtual {p0, v11, v12, v13}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 2815
    const/4 v0, 0x0

    aget v1, v13, v0

    const/4 v0, 0x1

    aget v2, v13, v0

    iget v3, p1, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 2816
    iget v4, p1, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iget v5, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 2817
    new-instance v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    .line 2816
    const/4 v8, 0x0

    .line 2817
    const/4 v9, 0x1

    move-object v0, p0

    .line 2815
    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_0

    .line 2818
    const/4 v0, 0x1

    return v0

    .line 2813
    :cond_0
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_1

    .line 2812
    :cond_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 2822
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isDropPending()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    return v0
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .prologue
    .line 2416
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 2254
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    .line 2255
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 2256
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 2255
    const/4 v6, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2257
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOccupied(II)Z
    .locals 2

    .prologue
    .line 2594
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 2595
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v0, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 2597
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRegionVacant(IIII)Z
    .locals 1

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v0

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 2574
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    .line 2575
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2576
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v1, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2577
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 2580
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    .line 2581
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2582
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v1, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2583
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 2511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2512
    return-void
.end method

.method onDragExit()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2521
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 2522
    iput-boolean v3, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v4, v1, v2

    aput v4, v0, v3

    .line 2527
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 2528
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 2529
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2530
    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2531
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 458
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    if-nez v0, :cond_0

    .line 459
    return-void

    .line 467
    :cond_0
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 471
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    move v1, v2

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    aget v4, v0, v1

    .line 474
    cmpl-float v0, v4, v6

    if-lez v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 476
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 477
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 472
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 498
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 499
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    .line 500
    iget v3, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellX:I

    iget v4, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 501
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 502
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v4, v4, v7

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 503
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 504
    iget-boolean v3, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->isClipping:Z

    if-nez v3, :cond_4

    .line 505
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 507
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 498
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellX:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellY:I

    if-ltz v0, :cond_6

    .line 511
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellX:I

    .line 512
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iget v1, v1, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellY:I

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 511
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 513
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 514
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v1, v1, v7

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 515
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->drawLeaveBehind(Landroid/graphics/Canvas;)V

    .line 516
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 518
    :cond_6
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2541
    if-eqz p1, :cond_0

    .line 2542
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2543
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 2544
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2545
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2547
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 337
    if-eqz v0, :cond_1

    .line 339
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 341
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 846
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 848
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 849
    if-nez v0, :cond_1

    .line 850
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 852
    :cond_1
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 853
    if-nez v0, :cond_2

    .line 854
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    sub-int v0, v2, v0

    .line 857
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v2

    .line 858
    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 860
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 861
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v5}, Lcom/android/launcher3/ClickShadowView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    .line 862
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v6}, Lcom/android/launcher3/ClickShadowView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 860
    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/android/launcher3/ClickShadowView;->layout(IIII)V

    .line 863
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v1, v2, v0, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layout(IIII)V

    .line 866
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 867
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 868
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    .line 869
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    .line 870
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    .line 871
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v5

    .line 867
    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 872
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 799
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 800
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 801
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 802
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 803
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, v4, v0

    .line 804
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v0, v6

    sub-int v0, v5, v0

    .line 805
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v6, :cond_2

    .line 806
    :cond_0
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-static {v1, v6}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v6

    .line 807
    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-static {v0, v7}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v7

    .line 808
    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    if-ne v6, v8, :cond_1

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    if-eq v7, v8, :cond_2

    .line 809
    :cond_1
    iput v6, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 810
    iput v7, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 811
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v9, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v10, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 817
    :cond_2
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v6, :cond_4

    .line 818
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 819
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 825
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 826
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v6}, Lcom/android/launcher3/ClickShadowView;->getExtraSize()I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 828
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v7}, Lcom/android/launcher3/ClickShadowView;->getExtraSize()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 825
    invoke-virtual {v2, v3, v6}, Lcom/android/launcher3/ClickShadowView;->measure(II)V

    .line 831
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 832
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 833
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 831
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measure(II)V

    .line 835
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v0

    .line 836
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v1

    .line 837
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v2, :cond_6

    .line 838
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    .line 842
    :goto_0
    return-void

    .line 820
    :cond_4
    if-eqz v2, :cond_5

    if-nez v3, :cond_3

    .line 821
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 351
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 351
    if-eqz v1, :cond_0

    .line 353
    const/4 v0, 0x1

    return v0

    .line 355
    :cond_0
    return v0
.end method

.method performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 13

    .prologue
    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    .line 2312
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v12

    .line 2314
    if-nez p9, :cond_0

    .line 2315
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 p9, v0

    .line 2321
    :cond_0
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_4

    .line 2322
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, -0x64

    if-eq v1, v2, :cond_5

    .line 2323
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2324
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 2326
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_3

    .line 2327
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v2, -0x64

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2328
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v2, -0x64

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 2338
    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    new-instance v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    const/4 v10, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    .line 2337
    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v10

    .line 2342
    new-instance v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 2341
    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v1

    .line 2344
    const/4 v2, 0x0

    .line 2348
    iget-boolean v3, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_6

    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v4

    if-lt v3, v4, :cond_6

    move-object v3, v10

    .line 2354
    :goto_1
    if-nez p10, :cond_8

    .line 2355
    if-eqz v3, :cond_7

    .line 2356
    const/4 v1, 0x0

    .line 2357
    const/4 v2, 0x0

    .line 2356
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    .line 2358
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    const/4 v2, 0x0

    aput v1, v12, v2

    .line 2359
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    const/4 v2, 0x1

    aput v1, v12, v2

    .line 2360
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    const/4 v2, 0x0

    aput v1, p9, v2

    .line 2361
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    const/4 v2, 0x1

    aput v1, p9, v2

    .line 2365
    :goto_2
    return-object v12

    .line 2321
    :cond_4
    const/4 v1, 0x4

    move/from16 v0, p10

    if-eq v0, v1, :cond_1

    .line 2331
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2332
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2333
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    goto/16 :goto_0

    .line 2350
    :cond_6
    iget-boolean v3, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_11

    move-object v3, v1

    .line 2351
    goto :goto_1

    .line 2363
    :cond_7
    const/4 v1, -0x1

    const/4 v2, 0x1

    aput v1, p9, v2

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, p9, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    aput v1, v12, v2

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v12, v2

    goto :goto_2

    .line 2368
    :cond_8
    const/4 v2, 0x1

    .line 2370
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2373
    if-eqz v3, :cond_10

    .line 2374
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    const/4 v4, 0x0

    aput v1, v12, v4

    .line 2375
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    const/4 v4, 0x1

    aput v1, v12, v4

    .line 2376
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    const/4 v4, 0x0

    aput v1, p9, v4

    .line 2377
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    const/4 v4, 0x1

    aput v1, p9, v4

    .line 2382
    const/4 v1, 0x1

    move/from16 v0, p10

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_d

    .line 2384
    :cond_9
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2386
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2387
    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2390
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_f

    .line 2391
    :cond_a
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->commitTempPlacement()V

    .line 2392
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2393
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    move v1, v2

    .line 2404
    :goto_4
    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_b

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    .line 2405
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2408
    :cond_c
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2409
    return-object v12

    .line 2382
    :cond_d
    const/4 v1, 0x3

    move/from16 v0, p10

    if-eq v0, v1, :cond_9

    move v1, v2

    goto :goto_4

    .line 2387
    :cond_e
    const/4 v1, 0x0

    goto :goto_3

    .line 2396
    :cond_f
    const/16 v1, 0x96

    const/4 v4, 0x1

    .line 2395
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1, v4}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    move v1, v2

    goto :goto_4

    .line 2400
    :cond_10
    const/4 v1, 0x0

    .line 2401
    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, p9, v3

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, p9, v3

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v12, v3

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v12, v3

    goto :goto_4

    :cond_11
    move-object v3, v2

    goto/16 :goto_1
.end method

.method public pointToCellExact(II[I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 697
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 699
    sub-int v0, p1, v0

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/2addr v0, v2

    aput v0, p3, v3

    .line 700
    sub-int v0, p2, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    div-int/2addr v0, v1

    aput v0, p3, v4

    .line 702
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 703
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 705
    aget v2, p3, v3

    if-gez v2, :cond_0

    aput v3, p3, v3

    .line 706
    :cond_0
    aget v2, p3, v3

    if-lt v2, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 707
    :cond_1
    aget v0, p3, v4

    if-gez v0, :cond_2

    aput v3, p3, v4

    .line 708
    :cond_2
    aget v0, p3, v4

    if-lt v0, v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    aput v0, p3, v4

    .line 709
    :cond_3
    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 759
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 760
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    aput v0, p5, v2

    .line 761
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v0, p2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v1, p4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p5, v1

    .line 762
    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 773
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 774
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 775
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    .line 776
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v3, p4

    add-int/2addr v3, v1

    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 777
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 644
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViews()V

    .line 645
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 651
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    .line 653
    :cond_0
    return-void
.end method

.method public removeFolderBackground(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 659
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 664
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewAt(I)V

    .line 665
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 671
    return-void
.end method

.method public removeViews(II)V
    .locals 2

    .prologue
    move v0, p1

    .line 675
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViews(II)V

    .line 679
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    .prologue
    move v0, p1

    .line 683
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    .line 687
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3

    .prologue
    .line 569
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 575
    const-string/jumbo v1, "CellLayout"

    const-string/jumbo v2, "Ignoring an error while restoring a view instance state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method revertTempState()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 2261
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2262
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2263
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    move v8, v5

    .line 2264
    :goto_0
    if-ge v8, v9, :cond_2

    .line 2265
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2266
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2267
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v3, :cond_1

    .line 2268
    :cond_0
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2269
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2270
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2264
    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 2274
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2276
    :cond_3
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 3

    .prologue
    .line 888
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 889
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    .line 890
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 892
    :cond_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 5

    .prologue
    .line 367
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 368
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    .line 369
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 370
    return-void
.end method

.method public setDropPending(Z)V
    .locals 0

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 389
    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    .prologue
    .line 793
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 794
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 795
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 6

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 546
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 549
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 548
    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->setup(Landroid/util/DisplayMetrics;Lcom/android/launcher3/DeviceProfile;Landroid/view/View;II)V

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iput p1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellX:I

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iput p2, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->delegateCellY:I

    .line 553
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 554
    return-void
.end method

.method public setGridSize(II)V
    .locals 5

    .prologue
    .line 373
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 374
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 375
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 376
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    .line 380
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    .line 385
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 2

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 419
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 420
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_1

    .line 421
    sget-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    .line 420
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 422
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 424
    :cond_0
    return-void

    .line 421
    :cond_1
    sget-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    goto :goto_0
.end method

.method setItemPlacementDirty(Z)V
    .locals 0

    .prologue
    .line 2413
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 2414
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 593
    return-void
.end method

.method public setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 399
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0}, Lcom/android/launcher3/ClickShadowView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/ClickShadowView;->alignWithIconView(Lcom/android/launcher3/BubbleTextView;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0}, Lcom/android/launcher3/ClickShadowView;->animateShadow()V

    goto :goto_0
.end method

.method public setShortcutAndWidgetAlpha(F)V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 901
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 896
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method visualizeDropLocation(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;IIIIZLcom/android/launcher3/DropTarget$DragObject;)V
    .locals 9

    .prologue
    .line 994
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 995
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 997
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/android/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 998
    :cond_0
    return-void

    .line 1001
    :cond_1
    iget-object v7, p2, Lcom/android/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    .line 1002
    if-ne p3, v1, :cond_2

    if-eq p4, v2, :cond_4

    .line 1003
    :cond_2
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v1

    .line 1004
    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    .line 1006
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v4, 0x0

    aput p3, v3, v4

    .line 1007
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v4, 0x1

    aput p4, v3, v4

    .line 1009
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1010
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1011
    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1012
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v6, v3, v4

    .line 1014
    if-eqz p7, :cond_5

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1015
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1016
    instance-of v1, p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v1, :cond_3

    .line 1017
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 1018
    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v2, v1}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    .line 1058
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mChildScale:F

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 1059
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Lcom/android/launcher3/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1060
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateIn()V

    .line 1062
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_4

    .line 1063
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {p0, p3, p4}, Lcom/android/launcher3/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 1066
    :cond_4
    return-void

    .line 1022
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1023
    invoke-virtual {p0, p3, p4, v3}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 1025
    const/4 v4, 0x0

    aget v4, v3, v4

    .line 1026
    const/4 v5, 0x1

    aget v3, v3, v5

    .line 1028
    if-eqz p1, :cond_6

    if-nez v1, :cond_6

    .line 1031
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1032
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    .line 1033
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    .line 1038
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v3, p6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 1040
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v3, p5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 1055
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v6, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1042
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 1045
    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v8, p5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v8, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    add-int/2addr v2, v4

    .line 1046
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v4

    .line 1047
    const/4 v5, 0x0

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    sub-int v4, v8, v4

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 1048
    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 1042
    goto :goto_1

    .line 1051
    :cond_7
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v1, p5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, v4, v1

    .line 1052
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v1, p6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    goto :goto_1
.end method
