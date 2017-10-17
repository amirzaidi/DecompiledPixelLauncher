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

.field private final mDirectionVector:[I

.field private final mDragCell:[I

.field final mDragOutlineAlphas:[F

.field private final mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field final mDragOutlines:[Landroid/graphics/Rect;

.field private mDragging:Z

.field private mDropPending:Z

.field private final mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFixedCellHeight:I

.field private mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private final mFolderBackgrounds:Ljava/util/ArrayList;

.field final mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private final mIntersectingViews:Ljava/util/ArrayList;

.field private mIsDragOverlapping:Z

.field private mIsDragTarget:Z

.field private mItemPlacementDirty:Z

.field private mJailContent:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final mOccupiedRect:Landroid/graphics/Rect;

.field final mPreviousReorderDirection:[I

.field final mReorderAnimators:Landroid/util/ArrayMap;

.field final mReorderPreviewAnimationMagnitude:F

.field final mShakeAnimators:Landroid/util/ArrayMap;

.field private final mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field private final mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectStack:Ljava/util/Stack;

.field private mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field final mTmpPoint:[I

.field private final mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

.field private mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

.field private mUseTouchHelper:Z


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/CellLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/CellLayout;)I
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

    const/4 v8, 0x1

    const/4 v2, 0x2

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
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

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
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    .line 138
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 141
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    .line 143
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mChildScale:F

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

    .line 1100
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

    move-result-object v0

    .line 207
    iput v7, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput v7, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 208
    iput v7, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iput v7, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 210
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 211
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 212
    new-instance v2, Lcom/android/launcher3/util/GridOccupancy;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v2, v3, v5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 213
    new-instance v2, Lcom/android/launcher3/util/GridOccupancy;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v2, v3, v5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 215
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v3, -0x64

    aput v3, v2, v1

    .line 216
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v3, -0x64

    aput v3, v2, v8

    .line 218
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v7, v2, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    .line 219
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v7, v2, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 224
    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 225
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 226
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const v3, 0x3df5c28f    # 0.12f

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 231
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40200000    # 2.5f

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    aput v7, v3, v8

    aput v7, v0, v1

    move v0, v1

    .line 233
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v3, v0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const v3, 0x7f01002c

    invoke-static {p1, v3}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    const v0, 0x7f0d000d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 244
    const v0, 0x7f0d000e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v5, v0

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    move v6, v1

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 250
    new-instance v0, Lcom/android/launcher3/InterruptibleInOutAnimator;

    int-to-long v2, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 251
    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/CellLayout$1;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/launcher3/CellLayout$1;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 275
    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/CellLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/CellLayout$2;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aput-object v0, v1, v6

    .line 248
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 286
    :cond_1
    new-instance v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 289
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    new-instance v1, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 291
    new-instance v0, Lcom/android/launcher3/ClickShadowView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/ClickShadowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 294
    return-void
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 11

    .prologue
    .line 1318
    iget-object v0, p4, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/util/CellAndSpan;

    .line 1319
    const/4 v10, 0x0

    .line 1320
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1321
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 1323
    iget v1, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v9, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    .line 1324
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v6, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 1323
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1326
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1328
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1329
    const/4 v0, 0x1

    .line 1331
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v2, 0x1

    invoke-virtual {v1, v9, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1332
    return v0

    :cond_0
    move v0, v10

    .line 1326
    goto :goto_0
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 12

    .prologue
    .line 1617
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1619
    :cond_0
    const/4 v10, 0x0

    .line 1620
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1622
    move-object/from16 v0, p5

    invoke-virtual {v0, p1, v11}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 1625
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1626
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1627
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_0

    .line 1630
    :cond_1
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 1631
    iget v7, v11, Landroid/graphics/Rect;->top:I

    .line 1632
    iget v8, v11, Landroid/graphics/Rect;->left:I

    .line 1635
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1636
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    .line 1637
    iget v2, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v2, v8

    iget v3, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v3, v7

    iget v4, v5, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v5, v5, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_1

    .line 1640
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 1642
    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1643
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1644
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v7, v6, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v8, v1, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    move-object v1, p0

    move-object v6, p3

    .line 1642
    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1647
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-ltz v1, :cond_3

    .line 1648
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v2, v1, v2

    .line 1649
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    .line 1650
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1651
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1652
    iget v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1653
    iget v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v5, v3

    iput v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_2

    :cond_3
    move v2, v10

    .line 1659
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

    .line 1660
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1661
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_4

    .line 1655
    :cond_4
    const/4 v1, 0x1

    move v2, v1

    goto :goto_3

    .line 1663
    :cond_5
    return v2
.end method

.method private animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 12

    .prologue
    .line 1915
    iget-object v10, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 1916
    invoke-virtual {v10}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 1918
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 1919
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v11, :cond_2

    .line 1920
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1921
    if-ne v1, p2, :cond_1

    .line 1919
    :cond_0
    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 1922
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/util/CellAndSpan;

    .line 1923
    if-eqz v8, :cond_0

    .line 1924
    iget v2, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    .line 1925
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1924
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 1926
    const/4 v0, 0x1

    invoke-virtual {v10, v8, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_1

    .line 1929
    :cond_2
    if-eqz p3, :cond_3

    .line 1930
    const/4 v0, 0x1

    invoke-virtual {v10, p1, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1932
    :cond_3
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1671
    aget v0, p3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    aget v1, p3, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v2, :cond_4

    .line 1674
    aget v0, p3, v2

    .line 1675
    aput v3, p3, v2

    .line 1677
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1679
    return v2

    .line 1681
    :cond_0
    aput v0, p3, v2

    .line 1682
    aget v0, p3, v3

    .line 1683
    aput v3, p3, v3

    .line 1685
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1687
    return v2

    .line 1690
    :cond_1
    aput v0, p3, v3

    .line 1693
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1694
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1695
    aget v0, p3, v2

    .line 1696
    aput v3, p3, v2

    .line 1697
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1699
    return v2

    .line 1702
    :cond_2
    aput v0, p3, v2

    .line 1703
    aget v0, p3, v3

    .line 1704
    aput v3, p3, v3

    .line 1705
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1707
    return v2

    .line 1710
    :cond_3
    aput v0, p3, v3

    .line 1711
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1712
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1760
    :goto_0
    return v3

    .line 1717
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1719
    return v2

    .line 1722
    :cond_5
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1723
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1724
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1726
    return v2

    .line 1729
    :cond_6
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1730
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1736
    aget v0, p3, v2

    .line 1737
    aget v1, p3, v3

    aput v1, p3, v2

    .line 1738
    aput v0, p3, v3

    .line 1739
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1741
    return v2

    .line 1745
    :cond_7
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1746
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1747
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1749
    return v2

    .line 1752
    :cond_8
    aget v0, p3, v3

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 1753
    aget v0, p3, v2

    mul-int/lit8 v0, v0, -0x1

    aput v0, p3, v2

    .line 1756
    aget v0, p3, v2

    .line 1757
    aget v1, p3, v3

    aput v1, p3, v2

    .line 1758
    aput v0, p3, v3

    goto :goto_0
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V
    .locals 12

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 1939
    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v11, :cond_3

    .line 1940
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1941
    if-ne v2, p2, :cond_1

    .line 1939
    :cond_0
    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 1942
    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1943
    if-nez p4, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1944
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move v4, v0

    .line 1946
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1947
    if-eqz v1, :cond_0

    xor-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    .line 1948
    new-instance v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1949
    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v6, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v8, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v9, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object v1, p0

    move/from16 v3, p4

    .line 1948
    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;-><init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V

    .line 1950
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V

    goto :goto_1

    .line 1943
    :cond_2
    const/4 v0, 0x0

    move v4, v0

    goto :goto_2

    .line 1953
    :cond_3
    return-void
.end method

.method private commitTempPlacement()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2115
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 2117
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v4

    .line 2118
    const/16 v0, -0x64

    .line 2120
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-ne v1, v11, :cond_5

    .line 2121
    const-wide/16 v4, -0x1

    .line 2122
    const/16 v0, -0x65

    move v10, v0

    .line 2125
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v14

    move v13, v12

    .line 2126
    :goto_1
    if-ge v13, v14, :cond_4

    .line 2127
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2128
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2129
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 2132
    if-eqz v1, :cond_1

    .line 2133
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v2, v3, :cond_0

    .line 2134
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-eq v2, v3, :cond_2

    :cond_0
    move v2, v11

    .line 2137
    :goto_2
    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v3, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 2138
    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v3, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 2139
    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v3, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2140
    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2142
    if-eqz v2, :cond_1

    .line 2143
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    int-to-long v2, v10

    .line 2144
    iget v6, v1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2143
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/ItemInfo;JJIIII)V

    .line 2126
    :cond_1
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_1

    .line 2134
    :cond_2
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v2, v3, :cond_0

    .line 2135
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v2, v3, :cond_3

    move v2, v11

    goto :goto_2

    :cond_3
    move v2, v12

    goto :goto_2

    .line 2148
    :cond_4
    return-void

    :cond_5
    move v10, v0

    goto :goto_0
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 2

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

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

    .line 2109
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->completeAnimationImmediately()V

    goto :goto_0

    .line 2111
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2112
    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    .line 1824
    div-float v0, p2, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 1826
    aput v4, p3, v4

    .line 1827
    aput v4, p3, v5

    .line 1828
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 1829
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 1831
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 1832
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    aput v0, p3, v5

    .line 1834
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V
    .locals 8

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 1879
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1880
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1881
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1883
    if-eqz p2, :cond_0

    .line 1884
    new-instance v1, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v1, v5, v6, v7, v0}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    move-object v0, v1

    .line 1888
    :goto_1
    invoke-virtual {p1, v4, v0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    .line 1879
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1886
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v1, v5, v6, v7, v0}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    move-object v0, v1

    goto :goto_1

    .line 1890
    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1893
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 1895
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 1896
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 1897
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1898
    if-ne v1, p2, :cond_1

    .line 1896
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1899
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1900
    iget-object v4, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1901
    if-eqz v1, :cond_0

    .line 1902
    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 1903
    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 1904
    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 1905
    iget v4, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 1906
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_1

    .line 1909
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1910
    return-void
.end method

.method private findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 10

    .prologue
    .line 2160
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 2161
    const/4 v1, 0x2

    new-array v9, v1, [I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    .line 2162
    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    .line 2164
    const/4 v1, 0x0

    aget v1, v8, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v8, v1

    if-ltz v1, :cond_0

    .line 2165
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 2166
    const/4 v1, 0x0

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    .line 2167
    const/4 v1, 0x1

    aget v1, v8, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    .line 2168
    const/4 v1, 0x0

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    .line 2169
    const/4 v1, 0x1

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    .line 2170
    const/4 v1, 0x1

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2174
    :goto_0
    return-object p8

    .line 2172
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0
.end method

.method private findNearestArea(IIIIIIZ[I[I)[I
    .locals 22

    .prologue
    .line 1133
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->lazyInitTempRectStack()V

    .line 1138
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

    .line 1139
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

    .line 1142
    if-eqz p8, :cond_1

    .line 1143
    :goto_0
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1144
    new-instance v14, Landroid/graphics/Rect;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1145
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    move/from16 v16, v0

    .line 1148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    move/from16 v17, v0

    .line 1150
    if-lez p3, :cond_0

    if-gtz p4, :cond_2

    .line 1152
    :cond_0
    return-object p8

    .line 1142
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p8, v0

    goto :goto_0

    .line 1150
    :cond_2
    if-lez p5, :cond_0

    if-lez p6, :cond_0

    .line 1151
    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    .line 1155
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v17, v2

    if-ge v11, v2, :cond_19

    .line 1157
    const/4 v2, 0x0

    move v10, v2

    :goto_2
    add-int/lit8 v2, p3, -0x1

    sub-int v2, v16, v2

    if-ge v10, v2, :cond_18

    .line 1158
    const/4 v3, -0x1

    .line 1159
    const/4 v2, -0x1

    .line 1160
    if-eqz p7, :cond_20

    .line 1162
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move/from16 v0, p3

    if-ge v3, v0, :cond_5

    .line 1163
    const/4 v2, 0x0

    :goto_4
    move/from16 v0, p4

    if-ge v2, v0, :cond_4

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v4, v4, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v5, v10, v3

    aget-object v4, v4, v5

    add-int v5, v11, v2

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_3

    move-wide v2, v8

    .line 1157
    :goto_5
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v8, v2

    goto :goto_2

    .line 1163
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1162
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 1175
    :cond_5
    const/4 v2, 0x1

    .line 1176
    move/from16 v0, p3

    move/from16 v1, p5

    if-lt v0, v1, :cond_8

    const/4 v6, 0x1

    .line 1177
    :goto_6
    move/from16 v0, p4

    move/from16 v1, p6

    if-lt v0, v1, :cond_9

    const/4 v5, 0x1

    move v7, v2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1178
    :goto_7
    if-eqz v6, :cond_a

    move v2, v5

    :goto_8
    if-nez v2, :cond_12

    .line 1179
    if-eqz v7, :cond_c

    xor-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_c

    .line 1180
    const/4 v2, 0x0

    move/from16 v20, v2

    move v2, v6

    move/from16 v6, v20

    :goto_9
    if-ge v6, v4, :cond_b

    .line 1181
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

    .line 1183
    :cond_6
    const/4 v2, 0x1

    .line 1180
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1176
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 1177
    :cond_9
    const/4 v5, 0x0

    move v7, v2

    move/from16 v3, p3

    move/from16 v4, p4

    goto :goto_7

    .line 1178
    :cond_a
    const/4 v2, 0x0

    goto :goto_8

    .line 1186
    :cond_b
    if-nez v2, :cond_1f

    .line 1187
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    move v4, v2

    move/from16 v20, v3

    move v3, v5

    move/from16 v5, v20

    .line 1200
    :goto_a
    move/from16 v0, p5

    if-lt v5, v0, :cond_10

    const/4 v2, 0x1

    :goto_b
    or-int/2addr v4, v2

    .line 1201
    move/from16 v0, p6

    if-lt v6, v0, :cond_11

    const/4 v2, 0x1

    :goto_c
    or-int/2addr v2, v3

    .line 1202
    xor-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v5

    move v5, v2

    move/from16 v20, v4

    move v4, v6

    move/from16 v6, v20

    goto :goto_7

    .line 1189
    :cond_c
    if-nez v5, :cond_1e

    .line 1190
    const/4 v2, 0x0

    move/from16 v20, v2

    move v2, v5

    move/from16 v5, v20

    :goto_d
    if-ge v5, v3, :cond_f

    .line 1191
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

    .line 1193
    :cond_d
    const/4 v2, 0x1

    .line 1190
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1196
    :cond_f
    if-nez v2, :cond_1d

    .line 1197
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v2

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto :goto_a

    .line 1200
    :cond_10
    const/4 v2, 0x0

    goto :goto_b

    .line 1201
    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 1206
    :cond_12
    move/from16 v0, p6

    if-lt v4, v0, :cond_13

    :cond_13
    move v5, v4

    move v4, v3

    .line 1208
    :goto_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1209
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v7}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1215
    add-int v3, v10, v4

    add-int v6, v11, v5

    invoke-virtual {v2, v10, v11, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1216
    const/4 v6, 0x0

    .line 1217
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_14
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1218
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1219
    const/4 v3, 0x1

    .line 1223
    :goto_f
    invoke-virtual {v15, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
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

    .line 1226
    cmpg-double v18, v6, v8

    if-gtz v18, :cond_15

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_16

    .line 1227
    :cond_15
    invoke-virtual {v2, v14}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    .line 1226
    if-eqz v3, :cond_1b

    .line 1229
    :cond_16
    const/4 v3, 0x0

    aput v10, p8, v3

    .line 1230
    const/4 v3, 0x1

    aput v11, p8, v3

    .line 1231
    if-eqz p9, :cond_17

    .line 1232
    const/4 v3, 0x0

    aput v4, p9, v3

    .line 1233
    const/4 v3, 0x1

    aput v5, p9, v3

    .line 1235
    :cond_17
    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide v2, v6

    goto/16 :goto_5

    .line 1155
    :cond_18
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_1

    .line 1241
    :cond_19
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v2, v8, v2

    if-nez v2, :cond_1a

    .line 1242
    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, p8, v3

    .line 1243
    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, p8, v3

    .line 1245
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    .line 1246
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
    .line 1271
    if-eqz p8, :cond_1

    .line 1272
    :goto_0
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 1273
    const/high16 v3, -0x80000000

    .line 1275
    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 1276
    iget v9, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 1278
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    add-int/lit8 v2, p4, -0x1

    sub-int v2, v9, v2

    if-ge v7, v2, :cond_8

    .line 1280
    const/4 v2, 0x0

    move v6, v2

    move v2, v3

    :goto_2
    add-int/lit8 v3, p3, -0x1

    sub-int v3, v8, v3

    if-ge v6, v3, :cond_7

    .line 1282
    const/4 v3, 0x0

    move v5, v3

    :goto_3
    move/from16 v0, p3

    if-ge v5, v0, :cond_4

    .line 1283
    const/4 v3, 0x0

    :goto_4
    move/from16 v0, p4

    if-ge v3, v0, :cond_3

    .line 1284
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

    .line 1280
    :goto_5
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto :goto_2

    .line 1271
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p8, v0

    goto :goto_0

    .line 1283
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1282
    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    .line 1290
    :cond_4
    sub-int v3, v6, p1

    int-to-double v10, v3

    sub-int v3, v7, p2

    int-to-double v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v5, v10

    .line 1291
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1292
    sub-int v10, v6, p1

    int-to-float v10, v10

    sub-int v11, v7, p2

    int-to-float v11, v11

    invoke-direct {p0, v10, v11, v3}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    .line 1295
    const/4 v10, 0x0

    aget v10, p5, v10

    const/4 v11, 0x0

    aget v11, v3, v11

    mul-int/2addr v10, v11

    .line 1296
    const/4 v11, 0x1

    aget v11, p5, v11

    const/4 v12, 0x1

    aget v3, v3, v12

    mul-int/2addr v3, v11

    .line 1295
    add-int/2addr v3, v10

    .line 1297
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-ltz v10, :cond_5

    .line 1298
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_6

    .line 1299
    if-le v3, v2, :cond_6

    .line 1302
    :cond_5
    const/4 v2, 0x0

    aput v6, p8, v2

    .line 1303
    const/4 v2, 0x1

    aput v7, p8, v2

    move v2, v3

    move v3, v5

    goto :goto_5

    :cond_6
    move v3, v4

    .line 1299
    goto :goto_5

    .line 1278
    :cond_7
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v2

    goto/16 :goto_1

    .line 1309
    :cond_8
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v4, v2

    if-nez v2, :cond_9

    .line 1310
    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, p8, v3

    .line 1311
    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, p8, v3

    .line 1313
    :cond_9
    return-object p8
.end method

.method private findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 13

    .prologue
    .line 1840
    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 1843
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 1847
    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1848
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v10

    .line 1853
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

    .line 1856
    if-nez v2, :cond_3

    .line 1859
    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    if-eqz p9, :cond_1

    .line 1860
    :cond_0
    add-int/lit8 v7, p5, -0x1

    .line 1861
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

    .line 1860
    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v2

    return-object v2

    .line 1862
    :cond_1
    move/from16 v0, p6

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 1863
    add-int/lit8 v8, p6, -0x1

    .line 1864
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

    .line 1863
    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v2

    return-object v2

    .line 1866
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 1874
    :goto_0
    return-object p10

    .line 1868
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 1869
    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    .line 1870
    const/4 v2, 0x1

    aget v2, v10, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    .line 1871
    move/from16 v0, p5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    .line 1872
    move/from16 v0, p6

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    goto :goto_0
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 13

    .prologue
    .line 2187
    const/4 v1, 0x2

    new-array v6, v1, [I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 2189
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    .line 2190
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2191
    const/4 v1, 0x0

    aget v8, v6, v1

    const/4 v1, 0x1

    aget v9, v6, v1

    move-object v7, p0

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2192
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2194
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2195
    const/4 v1, 0x0

    aget v2, v6, v1

    const/4 v1, 0x1

    aget v3, v6, v1

    .line 2196
    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 2195
    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2198
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 2199
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 2201
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2202
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v2, p0

    .line 2201
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2204
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, p1

    div-int v1, v1, p3

    .line 2205
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v2, p2

    div-int v2, v2, p4

    .line 2207
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-eq v8, v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 2208
    :cond_0
    const/4 v1, 0x0

    .line 2210
    :cond_1
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-eq v9, v3, :cond_2

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    .line 2211
    :cond_2
    const/4 v2, 0x0

    .line 2214
    :cond_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 2216
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, p6, v2

    .line 2217
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, p6, v2

    .line 2221
    :goto_0
    return-void

    .line 2219
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
    .line 445
    const v0, 0x7f0e0004

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 446
    instance-of v1, v0, Lcom/android/launcher3/util/ParcelableSparseArray;

    if-eqz v1, :cond_0

    .line 447
    check-cast v0, Lcom/android/launcher3/util/ParcelableSparseArray;

    .line 446
    :goto_0
    return-object v0

    .line 447
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/ParcelableSparseArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/ParcelableSparseArray;-><init>()V

    goto :goto_0
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 11

    .prologue
    .line 2226
    if-eqz p6, :cond_0

    .line 2227
    add-int v1, p1, p3

    add-int v2, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2229
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 2230
    new-instance v3, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v3, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2231
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2232
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    .line 2233
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    .line 2234
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2235
    move-object/from16 v0, p5

    if-ne v6, v0, :cond_2

    .line 2233
    :cond_1
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2236
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2237
    iget v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v8, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v9, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v10

    iget v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v1, v10

    invoke-virtual {v4, v7, v8, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2238
    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2239
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2240
    if-eqz p6, :cond_1

    .line 2241
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2245
    :cond_3
    return-void
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1107
    :cond_0
    return-void
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1523
    new-instance v7, Lcom/android/launcher3/CellLayout$ViewCluster;

    invoke-direct {v7, p0, p1, p5}, Lcom/android/launcher3/CellLayout$ViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    .line 1524
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1531
    aget v0, p3, v4

    if-gez v0, :cond_0

    .line 1533
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    move v6, v2

    .line 1546
    :goto_0
    if-gtz v1, :cond_3

    .line 1547
    return v4

    .line 1534
    :cond_0
    aget v0, p3, v4

    if-lez v0, :cond_1

    .line 1535
    const/4 v0, 0x4

    .line 1536
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v1

    move v6, v0

    goto :goto_0

    .line 1537
    :cond_1
    aget v0, p3, v2

    if-gez v0, :cond_2

    .line 1538
    const/4 v0, 0x2

    .line 1539
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    move v6, v0

    goto :goto_0

    .line 1541
    :cond_2
    const/16 v0, 0x8

    .line 1542
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    move v6, v0

    goto :goto_0

    .line 1551
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

    .line 1552
    iget-object v5, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1553
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v5, v0, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_1

    .line 1559
    :cond_4
    invoke-virtual {p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->save()V

    .line 1564
    invoke-virtual {v7, v6}, Lcom/android/launcher3/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    move v5, v1

    move v3, v4

    .line 1566
    :goto_2
    if-lez v5, :cond_7

    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_7

    .line 1567
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

    .line 1571
    iget-object v1, v7, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eq v0, p4, :cond_5

    .line 1572
    invoke-virtual {v7, v0, v6}, Lcom/android/launcher3/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1573
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1574
    iget-boolean v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v1, :cond_6

    move v0, v2

    .line 1587
    :goto_4
    add-int/lit8 v1, v5, -0x1

    .line 1591
    invoke-virtual {v7, v6, v2}, Lcom/android/launcher3/CellLayout$ViewCluster;->shift(II)V

    move v5, v1

    move v3, v0

    goto :goto_2

    .line 1579
    :cond_6
    invoke-virtual {v7, v0}, Lcom/android/launcher3/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1580
    iget-object v1, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1583
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v0, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_3

    .line 1595
    :cond_7
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1599
    if-nez v3, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-gt v1, v3, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_8

    .line 1600
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-gt v0, v1, :cond_8

    move v1, v2

    .line 1607
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

    .line 1608
    iget-object v4, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1609
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v4, v0, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_6

    .line 1603
    :cond_8
    invoke-virtual {p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->restore()V

    move v1, v4

    goto :goto_5

    .line 1612
    :cond_9
    return v1

    :cond_a
    move v0, v3

    goto :goto_4
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 12

    .prologue
    .line 1766
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1768
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1769
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1772
    if-eqz p6, :cond_2

    .line 1773
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 1774
    if-eqz v2, :cond_2

    .line 1775
    iput p1, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1776
    iput p2, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1779
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v5, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1780
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1781
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

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

    .line 1782
    move-object/from16 v0, p6

    if-eq v2, v0, :cond_3

    .line 1783
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    .line 1784
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1785
    iget v8, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v9, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v10, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v11, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v10, v11

    iget v11, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v11

    invoke-virtual {v6, v8, v9, v10, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1786
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1787
    iget-boolean v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_4

    .line 1788
    const/4 v2, 0x0

    return v2

    .line 1790
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1794
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p7

    iput-object v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 1799
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1801
    const/4 v2, 0x1

    return v2

    .line 1805
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

    .line 1807
    const/4 v2, 0x1

    return v2

    .line 1811
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

    .line 1812
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/android/launcher3/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1813
    const/4 v2, 0x0

    return v2

    .line 1816
    :cond_9
    const/4 v2, 0x1

    return v2
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2

    .prologue
    .line 1110
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1113
    :cond_0
    return-void
.end method

.method private setUseTempCoords(Z)V
    .locals 3

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 2152
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2154
    iput-boolean p1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 2152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2156
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptsWidget()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 599
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public addFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    return-void
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 607
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 608
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 609
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 612
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 613
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 617
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_4

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_4

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_4

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_4

    .line 620
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 621
    :cond_1
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 623
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 627
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 629
    if-eqz p5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 631
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 633
    :cond_4
    return v2
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 14

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 910
    invoke-virtual {v9, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 912
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/launcher3/ItemInfo;

    .line 915
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 917
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    :cond_0
    iget v11, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 921
    iget v12, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 922
    if-eqz p7, :cond_1

    .line 923
    if-eqz p6, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 924
    :goto_0
    iget v3, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v4, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v5, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 925
    iget v5, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v7, 0x1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 927
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 928
    if-eqz p6, :cond_3

    .line 929
    move/from16 v0, p2

    iput v0, v8, Lcom/android/launcher3/ItemInfo;->cellX:I

    move/from16 v0, p2

    iput v0, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 930
    move/from16 v0, p3

    iput v0, v8, Lcom/android/launcher3/ItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 935
    :goto_1
    invoke-virtual {v9, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 936
    const/4 v2, 0x0

    iput-boolean v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 937
    iget v6, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 938
    iget v8, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 940
    iput v11, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 941
    iput v12, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 944
    if-ne v11, v6, :cond_4

    if-ne v12, v8, :cond_4

    .line 945
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 946
    const/4 v2, 0x1

    return v2

    .line 923
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_0

    .line 932
    :cond_3
    move/from16 v0, p2

    iput v0, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 933
    move/from16 v0, p3

    iput v0, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    .line 949
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 950
    move/from16 v0, p4

    int-to-long v2, v0

    invoke-virtual {v13, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 951
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    new-instance v2, Lcom/android/launcher3/CellLayout$3;

    move-object v3, p0

    move-object v4, v10

    move v5, v11

    move v7, v12

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/CellLayout$3;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 962
    new-instance v2, Lcom/android/launcher3/CellLayout$4;

    invoke-direct {v2, p0, v10, p1}, Lcom/android/launcher3/CellLayout$4;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 980
    move/from16 v0, p5

    int-to-long v2, v0

    invoke-virtual {v13, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 981
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 982
    const/4 v2, 0x1

    return v2

    .line 984
    :cond_5
    const/4 v2, 0x0

    return v2

    .line 949
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->buildLayer()V

    .line 362
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 576
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 579
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v1

    .line 580
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 581
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
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

    .line 741
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 742
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 3

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 726
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 728
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    const/4 v2, 0x0

    aput v0, p3, v2

    .line 729
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v0, p2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 730
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 2553
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 2554
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 2556
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v2

    .line 2557
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v3

    .line 2559
    mul-int v4, p3, v0

    .line 2560
    mul-int v5, p4, v1

    .line 2561
    mul-int/2addr v0, p1

    add-int/2addr v0, v2

    .line 2562
    mul-int/2addr v1, p2

    add-int/2addr v1, v3

    .line 2564
    add-int v2, v0, v4

    add-int v3, v1, v5

    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2565
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2602
    instance-of v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1074
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1075
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1076
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 1077
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    .line 553
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    .line 554
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 555
    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 13

    .prologue
    .line 2275
    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2276
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2279
    const/4 v2, 0x0

    aget v3, v7, v2

    const/4 v2, 0x1

    aget v4, v7, v2

    .line 2280
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

    .line 2279
    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v2

    .line 2282
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2283
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_0

    .line 2287
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2288
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2289
    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2291
    if-eqz p7, :cond_1

    .line 2292
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->commitTempPlacement()V

    .line 2293
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2294
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2299
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2301
    :cond_0
    iget-boolean v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return v2

    .line 2297
    :cond_1
    const/16 v3, 0x96

    const/4 v4, 0x1

    .line 2296
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    goto :goto_0
.end method

.method disableDragTarget()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    .line 409
    return-void
.end method

.method public disableJailContent()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mJailContent:Z

    .line 426
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 520
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    move v1, v2

    .line 522
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/PreviewBackground;

    .line 524
    iget-boolean v3, v0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-eqz v3, :cond_0

    .line 525
    iget v3, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    iget v4, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 526
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 527
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 528
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 522
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 532
    :cond_1
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mJailContent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 442
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mJailContent:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    .line 432
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 433
    const v1, 0x7f0e0004

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    :goto_0
    return-void

    .line 435
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

    .line 297
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    .line 298
    if-nez p1, :cond_1

    .line 299
    invoke-static {p0, v0}, Landroid/support/v4/view/f;->agu(Landroid/view/View;Landroid/support/v4/view/c;)V

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p0, v1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 322
    :cond_0
    return-void

    .line 304
    :cond_1
    if-ne p2, v2, :cond_3

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    instance-of v0, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    xor-int/lit8 v0, v0, 0x1

    .line 304
    if-eqz v0, :cond_3

    .line 306
    new-instance v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 311
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/f;->agu(Landroid/view/View;Landroid/support/v4/view/c;)V

    .line 312
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 307
    :cond_3
    if-ne p2, v1, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    instance-of v0, v0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;

    xor-int/lit8 v0, v0, 0x1

    .line 307
    if-eqz v0, :cond_2

    .line 309
    new-instance v0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;-><init>(Lcom/android/launcher3/CellLayout;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    goto :goto_1
.end method

.method public enableHardwareLayer(Z)V
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 358
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findCellForSpan([III)Z
    .locals 1

    .prologue
    .line 2493
    if-nez p1, :cond_0

    .line 2494
    const/4 v0, 0x2

    new-array p1, v0, [I

    .line 2496
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v0

    return v0
.end method

.method public findNearestArea(IIII[I)[I
    .locals 10

    .prologue
    .line 2472
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
    .line 1096
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
    .line 2597
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2607
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCountX()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 2584
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
    .line 2580
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

    .line 775
    aget v0, p3, v3

    aget v1, p3, v4

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 776
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

    .line 1064
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-ne v0, v3, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 1066
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1065
    const v2, 0x7f0c0075

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1068
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1069
    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1068
    const v2, 0x7f0c0073

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-object v0
.end method

.method public getUnusedHorizontalSpace()I
    .locals 3

    .prologue
    .line 875
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
    .line 2804
    const/4 v0, 0x2

    new-array v13, v0, [I

    .line 2806
    const/4 v0, 0x0

    move v11, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 2807
    const/4 v0, 0x0

    move v12, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    if-ge v12, v0, :cond_1

    .line 2808
    invoke-virtual {p0, v11, v12, v13}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 2809
    const/4 v0, 0x0

    aget v1, v13, v0

    const/4 v0, 0x1

    aget v2, v13, v0

    iget v3, p1, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 2810
    iget v4, p1, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iget v5, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 2811
    new-instance v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    .line 2810
    const/4 v8, 0x0

    .line 2811
    const/4 v9, 0x1

    move-object v0, p0

    .line 2809
    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_0

    .line 2812
    const/4 v0, 0x1

    return v0

    .line 2807
    :cond_0
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_1

    .line 2806
    :cond_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 2816
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isDropPending()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    return v0
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .prologue
    .line 2411
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

    .line 2249
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    .line 2250
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 2251
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 2250
    const/4 v6, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2252
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOccupied(II)Z
    .locals 2

    .prologue
    .line 2588
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v0, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 2591
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRegionVacant(IIII)Z
    .locals 1

    .prologue
    .line 2820
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v0

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 2568
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    .line 2569
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2570
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v1, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2571
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
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

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2577
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 2505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2506
    return-void
.end method

.method onDragExit()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2515
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 2516
    iput-boolean v3, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2520
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v4, v1, v2

    aput v4, v0, v3

    .line 2521
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 2522
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 2523
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2524
    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2525
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 456
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragTarget:Z

    if-nez v0, :cond_0

    .line 457
    return-void

    .line 465
    :cond_0
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    move v1, v2

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    aget v4, v0, v1

    .line 472
    cmpl-float v0, v4, v6

    if-lez v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 474
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 475
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 470
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 496
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 497
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/PreviewBackground;

    .line 498
    iget v3, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    iget v4, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 500
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v3, v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v4, v4, v7

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 501
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    .line 502
    iget-boolean v3, v0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-nez v3, :cond_4

    .line 503
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 505
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 496
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 508
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    if-ltz v0, :cond_6

    .line 509
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    .line 510
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, v1, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 509
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v1, v1, v7

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 513
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawLeaveBehind(Landroid/graphics/Canvas;)V

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 516
    :cond_6
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2535
    if-eqz p1, :cond_0

    .line 2536
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2537
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 2538
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2539
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2541
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mUseTouchHelper:Z

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 335
    if-eqz v0, :cond_1

    .line 337
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 339
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 841
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 844
    if-nez v0, :cond_1

    .line 845
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 847
    :cond_1
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 848
    if-nez v0, :cond_2

    .line 849
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    sub-int v0, v2, v0

    .line 852
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v2

    .line 853
    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 855
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 856
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v5}, Lcom/android/launcher3/ClickShadowView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    .line 857
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v6}, Lcom/android/launcher3/ClickShadowView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 855
    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/android/launcher3/ClickShadowView;->layout(IIII)V

    .line 858
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v1, v2, v0, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layout(IIII)V

    .line 861
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 862
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 863
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v1, v5

    .line 864
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v2, v5

    .line 865
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v0, v5

    .line 866
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    .line 862
    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 867
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 794
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 795
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 796
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 797
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 798
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, v4, v0

    .line 799
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v0, v6

    sub-int v0, v5, v0

    .line 800
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v6, :cond_2

    .line 801
    :cond_0
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-static {v1, v6}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v6

    .line 802
    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-static {v0, v7}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(II)I

    move-result v7

    .line 803
    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    if-ne v6, v8, :cond_1

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    if-eq v7, v8, :cond_2

    .line 804
    :cond_1
    iput v6, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 805
    iput v7, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 806
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v9, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v10, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 812
    :cond_2
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v6, :cond_4

    .line 813
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 814
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 820
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 821
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v6}, Lcom/android/launcher3/ClickShadowView;->getExtraSize()I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 823
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v7}, Lcom/android/launcher3/ClickShadowView;->getExtraSize()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 820
    invoke-virtual {v2, v3, v6}, Lcom/android/launcher3/ClickShadowView;->measure(II)V

    .line 826
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 827
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 828
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 826
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measure(II)V

    .line 830
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v0

    .line 831
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v1

    .line 832
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v2, :cond_6

    .line 833
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    .line 837
    :goto_0
    return-void

    .line 815
    :cond_4
    if-eqz v2, :cond_5

    if-nez v3, :cond_3

    .line 816
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 349
    if-eqz v1, :cond_0

    .line 351
    const/4 v0, 0x1

    return v0

    .line 353
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

    .line 2307
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v12

    .line 2309
    if-nez p9, :cond_0

    .line 2310
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 p9, v0

    .line 2316
    :cond_0
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_4

    .line 2317
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, -0x64

    if-eq v1, v2, :cond_5

    .line 2318
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2319
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 2321
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_3

    .line 2322
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v2, -0x64

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2323
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    const/16 v2, -0x64

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 2333
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

    .line 2332
    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v10

    .line 2337
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

    .line 2336
    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v1

    .line 2339
    const/4 v2, 0x0

    .line 2343
    iget-boolean v3, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_6

    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v4

    if-lt v3, v4, :cond_6

    move-object v3, v10

    .line 2349
    :goto_1
    if-nez p10, :cond_8

    .line 2350
    if-eqz v3, :cond_7

    .line 2351
    const/4 v1, 0x0

    .line 2352
    const/4 v2, 0x0

    .line 2351
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    .line 2353
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    const/4 v2, 0x0

    aput v1, v12, v2

    .line 2354
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    const/4 v2, 0x1

    aput v1, v12, v2

    .line 2355
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    const/4 v2, 0x0

    aput v1, p9, v2

    .line 2356
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    const/4 v2, 0x1

    aput v1, p9, v2

    .line 2360
    :goto_2
    return-object v12

    .line 2316
    :cond_4
    const/4 v1, 0x4

    move/from16 v0, p10

    if-eq v0, v1, :cond_1

    .line 2326
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2327
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2328
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    goto/16 :goto_0

    .line 2345
    :cond_6
    iget-boolean v3, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v3, :cond_11

    move-object v3, v1

    .line 2346
    goto :goto_1

    .line 2358
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

    .line 2363
    :cond_8
    const/4 v2, 0x1

    .line 2365
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2368
    if-eqz v3, :cond_10

    .line 2369
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    const/4 v4, 0x0

    aput v1, v12, v4

    .line 2370
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    const/4 v4, 0x1

    aput v1, v12, v4

    .line 2371
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    const/4 v4, 0x0

    aput v1, p9, v4

    .line 2372
    iget v1, v3, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    const/4 v4, 0x1

    aput v1, p9, v4

    .line 2377
    const/4 v1, 0x1

    move/from16 v0, p10

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_d

    .line 2379
    :cond_9
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2381
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2382
    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2385
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_f

    .line 2386
    :cond_a
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->commitTempPlacement()V

    .line 2387
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2388
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    move v1, v2

    .line 2399
    :goto_4
    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_b

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    .line 2400
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2403
    :cond_c
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2404
    return-object v12

    .line 2377
    :cond_d
    const/4 v1, 0x3

    move/from16 v0, p10

    if-eq v0, v1, :cond_9

    move v1, v2

    goto :goto_4

    .line 2382
    :cond_e
    const/4 v1, 0x0

    goto :goto_3

    .line 2391
    :cond_f
    const/16 v1, 0x96

    const/4 v4, 0x1

    .line 2390
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1, v4}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;II)V

    move v1, v2

    goto :goto_4

    .line 2395
    :cond_10
    const/4 v1, 0x0

    .line 2396
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

    .line 691
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 692
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 694
    sub-int v0, p1, v0

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/2addr v0, v2

    aput v0, p3, v3

    .line 695
    sub-int v0, p2, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    div-int/2addr v0, v1

    aput v0, p3, v4

    .line 697
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 698
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 700
    aget v2, p3, v3

    if-gez v2, :cond_0

    aput v3, p3, v3

    .line 701
    :cond_0
    aget v2, p3, v3

    if-lt v2, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    aput v0, p3, v3

    .line 702
    :cond_1
    aget v0, p3, v4

    if-gez v0, :cond_2

    aput v3, p3, v4

    .line 703
    :cond_2
    aget v0, p3, v4

    if-lt v0, v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    aput v0, p3, v4

    .line 704
    :cond_3
    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 3

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 754
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 755
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    aput v0, p5, v2

    .line 756
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v0, p2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v1, p4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p5, v1

    .line 757
    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 768
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 769
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 770
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    .line 771
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v3, p4

    add-int/2addr v3, v1

    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 772
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 639
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViews()V

    .line 640
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 646
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    .line 648
    :cond_0
    return-void
.end method

.method public removeFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 653
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 654
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 659
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewAt(I)V

    .line 660
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 665
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 666
    return-void
.end method

.method public removeViews(II)V
    .locals 2

    .prologue
    move v0, p1

    .line 670
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViews(II)V

    .line 674
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    .prologue
    move v0, p1

    .line 678
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    .line 682
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3

    .prologue
    .line 564
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 570
    const-string/jumbo v1, "CellLayout"

    const-string/jumbo v2, "Ignoring an error while restoring a view instance state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method revertTempState()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 2256
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2257
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2258
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    move v8, v5

    .line 2259
    :goto_0
    if-ge v8, v9, :cond_2

    .line 2260
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2261
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2262
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v3, :cond_1

    .line 2263
    :cond_0
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2264
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2265
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2259
    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 2269
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2271
    :cond_3
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 3

    .prologue
    .line 883
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 884
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    .line 885
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 887
    :cond_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 5

    .prologue
    .line 365
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 366
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 368
    return-void
.end method

.method public setDropPending(Z)V
    .locals 0

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 387
    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    .prologue
    .line 788
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 789
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 790
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 5

    .prologue
    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 544
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 543
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Lcom/android/launcher3/Launcher;Landroid/view/View;II)V

    .line 546
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput p1, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellX:I

    .line 547
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput p2, v0, Lcom/android/launcher3/folder/PreviewBackground;->delegateCellY:I

    .line 548
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 549
    return-void
.end method

.method public setGridSize(II)V
    .locals 5

    .prologue
    .line 371
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 372
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 373
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 374
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 377
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    .line 378
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    .line 383
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 2

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 417
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 418
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_1

    .line 419
    sget-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    .line 418
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 422
    :cond_0
    return-void

    .line 419
    :cond_1
    sget-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    goto :goto_0
.end method

.method setItemPlacementDirty(Z)V
    .locals 0

    .prologue
    .line 2408
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 2409
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 588
    return-void
.end method

.method public setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 397
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0}, Lcom/android/launcher3/ClickShadowView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 405
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/ClickShadowView;->alignWithIconView(Lcom/android/launcher3/BubbleTextView;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 402
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0}, Lcom/android/launcher3/ClickShadowView;->animateShadow()V

    goto :goto_0
.end method

.method public setShortcutAndWidgetAlpha(F)V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 896
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 891
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
    .line 989
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 990
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 992
    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/android/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 993
    :cond_0
    return-void

    .line 996
    :cond_1
    iget-object v7, p2, Lcom/android/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    .line 997
    if-ne p3, v1, :cond_2

    if-eq p4, v2, :cond_4

    .line 998
    :cond_2
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v1

    .line 999
    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    .line 1001
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v4, 0x0

    aput p3, v3, v4

    .line 1002
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v4, 0x1

    aput p4, v3, v4

    .line 1004
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1005
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1006
    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1007
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v6, v3, v4

    .line 1009
    if-eqz p7, :cond_5

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1010
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1011
    instance-of v1, p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v1, :cond_3

    .line 1012
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 1013
    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v2, v1}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    .line 1053
    :cond_3
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 1054
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Lcom/android/launcher3/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1055
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateIn()V

    .line 1057
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_4

    .line 1058
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {p0, p3, p4}, Lcom/android/launcher3/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 1061
    :cond_4
    return-void

    .line 1017
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1018
    invoke-virtual {p0, p3, p4, v3}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 1020
    const/4 v4, 0x0

    aget v4, v3, v4

    .line 1021
    const/4 v5, 0x1

    aget v3, v3, v5

    .line 1023
    if-eqz p1, :cond_6

    if-nez v1, :cond_6

    .line 1026
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1027
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    .line 1028
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    .line 1033
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v3, p6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 1035
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v3, p5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 1050
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v6, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1037
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 1040
    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v8, p5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v8, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    add-int/2addr v2, v4

    .line 1041
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v4

    .line 1042
    const/4 v5, 0x0

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    sub-int v4, v8, v4

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 1043
    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 1037
    goto :goto_1

    .line 1046
    :cond_7
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v1, p5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, v4, v1

    .line 1047
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v1, p6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    goto :goto_1
.end method
