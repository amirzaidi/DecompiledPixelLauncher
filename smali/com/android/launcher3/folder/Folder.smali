.class public Lcom/android/launcher3/folder/Folder;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/UninstallDropTarget$DropTargetSource;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;


# static fields
.field public static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field private mCurrentDragView:Landroid/view/View;

.field mCurrentScrollDir:I

.field private mDeferDropAfterUninstall:Z

.field mDeferredAction:Ljava/lang/Runnable;

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z

.field protected mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDragInProgress:Z

.field mEmptyCellRank:I

.field private final mExpandDuration:I

.field mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field mFolderIconPivotX:F

.field mFolderIconPivotY:F

.field public mFolderName:Lcom/android/launcher3/ExtendedEditText;

.field private mFooter:Landroid/view/View;

.field private mFooterHeight:I

.field public mInfo:Lcom/android/launcher3/FolderInfo;

.field private mIsEditingName:Z

.field private mIsExternalDrag:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field final mItemsInReadingOrder:Ljava/util/ArrayList;

.field mItemsInvalidated:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mMaterialExpandDuration:I

.field private final mMaterialExpandStagger:I

.field private final mOnExitAlarm:Lcom/android/launcher3/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private final mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

.field private mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

.field mPrevTargetRank:I

.field private mRearrangeOnClose:Z

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mScrollAreaOffset:I

.field mScrollHintDir:I

.field final mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

.field mState:I

.field private mSuppressFolderDeletion:Z

.field mTargetRank:I

.field private mUninstallSuccessful:Z


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/folder/Folder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/pageindicators/PageIndicatorDots;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/folder/Folder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    .line 1505
    new-instance v0, Lcom/android/launcher3/folder/Folder$3;

    invoke-direct {v0}, Lcom/android/launcher3/folder/Folder$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 130
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    .line 131
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    .line 132
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 163
    iput v2, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 165
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    .line 187
    iput v2, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 188
    iput v2, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    .line 776
    new-instance v0, Lcom/android/launcher3/folder/Folder$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$1;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 858
    new-instance v0, Lcom/android/launcher3/folder/Folder$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$2;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mExpandDuration:I

    .line 201
    const v1, 0x7f0d0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandDuration:I

    .line 202
    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandStagger:I

    .line 204
    sget-object v1, Lcom/android/launcher3/folder/Folder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 205
    const v1, 0x7f0c001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/folder/Folder;->sDefaultFolderName:Ljava/lang/String;

    .line 207
    :cond_0
    sget-object v1, Lcom/android/launcher3/folder/Folder;->sHintText:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 208
    const v1, 0x7f0c0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/folder/Folder;->sHintText:Ljava/lang/String;

    .line 210
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setFocusableInTouchMode(Z)V

    .line 215
    return-void
.end method

.method private animateClosed()V
    .locals 4

    .prologue
    const v1, 0x3f666666    # 0.9f

    .line 710
    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 711
    new-instance v1, Lcom/android/launcher3/folder/Folder$11;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$11;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 726
    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mExpandDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 727
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/folder/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 728
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 729
    return-void
.end method

.method private centerAboutIcon()V
    .locals 12

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1038
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 1040
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 1041
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f0e0042

    invoke-virtual {v1, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragLayer;

    .line 1042
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderWidth()I

    move-result v3

    .line 1043
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight()I

    move-result v4

    .line 1045
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    sget-object v6, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 1046
    sget-object v1, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 1047
    sget-object v5, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 1048
    div-int/lit8 v6, v3, 0x2

    sub-int v6, v1, v6

    .line 1049
    div-int/lit8 v1, v4, 0x2

    sub-int/2addr v5, v1

    .line 1052
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    sget-object v7, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Lcom/android/launcher3/Workspace;->getPageAreaRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 1053
    sget-object v1, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1054
    sget-object v7, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    .line 1053
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1055
    sget-object v7, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1056
    sget-object v8, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    .line 1055
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1058
    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/Workspace;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    .line 1060
    iget-boolean v9, v2, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz v9, :cond_1

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v9, v3

    mul-int/lit8 v8, v8, 0x4

    if-ge v9, v8, :cond_1

    .line 1064
    iget v1, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 1069
    :cond_0
    :goto_0
    sget-object v8, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 1071
    sget-object v2, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget-object v7, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    move v11, v2

    move v2, v1

    move v1, v11

    .line 1080
    :goto_1
    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v2

    add-int/2addr v6, v7

    .line 1081
    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v5, v1

    add-int/2addr v5, v7

    .line 1082
    int-to-float v7, v6

    invoke-virtual {p0, v7}, Lcom/android/launcher3/folder/Folder;->setPivotX(F)V

    .line 1083
    int-to-float v7, v5

    invoke-virtual {p0, v7}, Lcom/android/launcher3/folder/Folder;->setPivotY(F)V

    .line 1085
    iget-object v7, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderIcon;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    .line 1086
    int-to-float v6, v6

    mul-float/2addr v6, v10

    int-to-float v8, v3

    div-float/2addr v6, v8

    .line 1085
    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/launcher3/folder/Folder;->mFolderIconPivotX:F

    .line 1087
    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderIcon;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    .line 1088
    int-to-float v5, v5

    mul-float/2addr v5, v10

    int-to-float v7, v4

    div-float/2addr v5, v7

    .line 1087
    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/launcher3/folder/Folder;->mFolderIconPivotY:F

    .line 1090
    iput v3, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    .line 1091
    iput v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    .line 1092
    iput v2, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    .line 1093
    iput v1, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    .line 1094
    return-void

    .line 1065
    :cond_1
    sget-object v8, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lt v3, v8, :cond_0

    .line 1067
    sget-object v1, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget-object v8, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v8, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v8

    goto :goto_0

    .line 1075
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 1076
    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget v9, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1077
    iget v1, v8, Landroid/graphics/Rect;->top:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1
.end method

.method private clearDragInfo()V
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    .line 879
    return-void
.end method

.method private closeComplete(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 733
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer;

    .line 734
    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->clearFocus()V

    .line 739
    if-eqz p1, :cond_1

    .line 740
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->requestFocus()Z

    .line 743
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 745
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    .line 747
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 748
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 749
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    .line 754
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    .line 755
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    .line 756
    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 757
    return-void

    .line 750
    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_3

    .line 751
    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0
.end method

.method static fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 481
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_ICON_NORMALIZATION:Z

    if-eqz v0, :cond_0

    .line 482
    const v0, 0x7f04002f

    :goto_0
    const/4 v2, 0x0

    .line 480
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    return-object v0

    .line 482
    :cond_0
    const v0, 0x7f040030

    goto :goto_0
.end method

.method private getContentAreaHeight()I
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1105
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 1106
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1105
    sub-int v0, v1, v0

    .line 1106
    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    .line 1105
    sub-int/2addr v0, v1

    .line 1108
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredHeight()I

    move-result v1

    .line 1107
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1109
    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getContentAreaWidth()I
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getFolderHeight()I
    .locals 1

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result v0

    return v0
.end method

.method private getFolderHeight(I)I
    .locals 2

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getFolderWidth()I
    .locals 2

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;
    .locals 1

    .prologue
    .line 1539
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/folder/Folder;->getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method private getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I
    .locals 4

    .prologue
    .line 793
    invoke-virtual {p1, p2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 795
    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    .line 794
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/folder/FolderPagedView;->findNearestArea(II)I

    move-result v0

    return v0
.end method

.method private getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/Folder$16;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/folder/Folder$16;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private prepareReveal()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 499
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 500
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setAlpha(F)V

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 502
    return-void
.end method

.method private showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V
    .locals 4

    .prologue
    .line 841
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    if-eq v0, p1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->showScrollHint(I)V

    .line 843
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_2

    .line 848
    :cond_1
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    .line 849
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 850
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 851
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 853
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 854
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    .line 856
    :cond_2
    return-void
.end method

.method private updateItemLocationsInDatabaseBatch()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1011
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 1012
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1013
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1014
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1015
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 1016
    iput v1, v0, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 1017
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v6, v1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v0, v4, v6, v7, v2}, Lcom/android/launcher3/model/ModelWriter;->moveItemsInDatabase(Ljava/util/ArrayList;JI)V

    .line 1021
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 760
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 761
    iget v1, v1, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 762
    if-eqz v1, :cond_0

    .line 763
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 765
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isFull()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 762
    :cond_1
    return v0

    .line 764
    :cond_2
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 510
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 513
    invoke-virtual {v0, v13}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    .line 519
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 520
    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 521
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 529
    :cond_1
    iput-boolean v13, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 532
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPageImmediately(I)V

    .line 540
    :cond_2
    iput-boolean v11, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 543
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->prepareReveal()V

    .line 544
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->centerAboutIcon()V

    .line 546
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->growAndFadeOut()V

    .line 548
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 549
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderWidth()I

    move-result v0

    .line 550
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight()I

    move-result v3

    .line 552
    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPivotX()F

    move-result v5

    sub-float/2addr v4, v5

    const v5, -0x42666666    # -0.075f

    mul-float/2addr v4, v5

    .line 553
    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPivotY()F

    move-result v6

    sub-float/2addr v5, v6

    const v6, -0x42666666    # -0.075f

    mul-float/2addr v5, v6

    .line 554
    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/Folder;->setTranslationX(F)V

    .line 555
    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/Folder;->setTranslationY(F)V

    .line 556
    sget-object v6, Lcom/android/launcher3/folder/Folder;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v12, [F

    aput v4, v7, v11

    aput v10, v7, v13

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 557
    sget-object v6, Lcom/android/launcher3/folder/Folder;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v12, [F

    aput v5, v7, v11

    aput v10, v7, v13

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 559
    new-array v6, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v6, v11

    aput-object v5, v6, v13

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 560
    iget v5, p0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandDuration:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 561
    iget v5, p0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandStagger:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 562
    new-instance v5, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v6, 0x64

    invoke-direct {v5, v6, v11}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 564
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPivotX()F

    move-result v5

    sub-float/2addr v0, v5

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPivotX()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 565
    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPivotY()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPivotY()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    .line 566
    int-to-double v6, v0

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 568
    new-instance v3, Lcom/android/launcher3/util/CircleRevealOutlineProvider;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPivotX()F

    move-result v5

    float-to-int v5, v5

    .line 569
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPivotY()F

    move-result v6

    float-to-int v6, v6

    .line 568
    invoke-direct {v3, v5, v6, v10, v0}, Lcom/android/launcher3/util/CircleRevealOutlineProvider;-><init>(IIFF)V

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/CircleRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 570
    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandDuration:I

    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 571
    new-instance v3, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v5, 0x64

    invoke-direct {v3, v5, v11}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, v10}, Lcom/android/launcher3/folder/FolderPagedView;->setAlpha(F)V

    .line 574
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const-string/jumbo v5, "alpha"

    new-array v6, v12, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 575
    iget v5, p0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandDuration:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 576
    iget v5, p0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandStagger:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 577
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 579
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setAlpha(F)V

    .line 580
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v12, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 581
    iget v6, p0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 582
    iget v6, p0, Lcom/android/launcher3/folder/Folder;->mMaterialExpandStagger:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 583
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 585
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 586
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 587
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 588
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 590
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v12, v14}, Lcom/android/launcher3/folder/FolderPagedView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 591
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v12, v14}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 592
    new-instance v0, Lcom/android/launcher3/folder/Folder$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$8;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 600
    new-instance v3, Lcom/android/launcher3/folder/Folder$9;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/folder/Folder$9;-><init>(Lcom/android/launcher3/folder/Folder;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 619
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v0

    if-le v0, v13, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/FolderInfo;->hasOption(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 620
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result v0

    .line 621
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 620
    sub-int/2addr v0, v3

    .line 621
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 620
    sub-int/2addr v0, v3

    .line 623
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v3}, Lcom/android/launcher3/ExtendedEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v4}, Lcom/android/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 624
    int-to-float v0, v0

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 625
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v4, v4, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v4, :cond_3

    neg-float v0, v0

    :cond_3
    invoke-virtual {v3, v0}, Lcom/android/launcher3/ExtendedEditText;->setTranslationX(F)V

    .line 626
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->prepareEntryAnimation()V

    .line 630
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    xor-int/lit8 v0, v0, 0x1

    .line 631
    new-instance v3, Lcom/android/launcher3/folder/Folder$10;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/folder/Folder$10;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 652
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->stopAllAnimations()V

    .line 653
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 656
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    .line 660
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 664
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->sendAccessibilityEvent(I)V

    .line 665
    const/16 v0, 0x800

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->sendAccessibilityEvent(I)V

    .line 666
    return-void

    .line 649
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/ExtendedEditText;->setTranslationX(F)V

    goto :goto_0

    .line 574
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 580
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public beginExternalDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 669
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->allocateRankForNewItem()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    .line 670
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    .line 671
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 675
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 676
    return-void
.end method

.method bind(Lcom/android/launcher3/FolderInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 428
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    .line 429
    iget-object v0, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 430
    sget-object v1, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 432
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderPagedView;->bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 438
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 439
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 440
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 444
    if-nez v0, :cond_1

    .line 445
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-direct {v0, v3, v3}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    .line 446
    iput-boolean v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->centerAboutIcon()V

    .line 451
    iput-boolean v4, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderInfo;->addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 455
    sget-object v0, Lcom/android/launcher3/folder/Folder;->sDefaultFolderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    new-instance v1, Lcom/android/launcher3/folder/Folder$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$7;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public completeDragExit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 865
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 867
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    .line 874
    :goto_0
    return-void

    .line 868
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne v0, v1, :cond_1

    .line 869
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 872
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    goto :goto_0
.end method

.method public deferCompleteDropAfterUninstallActivity()V
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeferDropAfterUninstall:Z

    .line 984
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 1449
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    .line 1450
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    .line 1451
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 1452
    const/4 v0, 0x3

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 1453
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActiveTextView()Lcom/android/launcher3/ExtendedEditText;
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1442
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 1443
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1444
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1445
    return-void
.end method

.method public getInfo()Lcom/android/launcher3/FolderInfo;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    return-object v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 997
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 1415
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1417
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/Folder$17;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$17;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    .line 1425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLogContainerType()I
    .locals 1

    .prologue
    .line 1544
    const/4 v0, 0x3

    return v0
.end method

.method public getPivotXForIconAnimation()F
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIconPivotX:F

    return v0
.end method

.method public getPivotYForIconAnimation()F
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIconPivotY:F

    return v0
.end method

.method protected handleClose(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 685
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    .line 687
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIcon;->shrinkAndFadeIn(Z)V

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/dragndrop/DragLayer;

    if-nez v0, :cond_2

    return-void

    .line 696
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer;

    .line 698
    if-eqz p1, :cond_3

    .line 699
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->animateClosed()V

    .line 706
    :goto_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->sendAccessibilityEvent(I)V

    .line 707
    return-void

    .line 701
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    goto :goto_0
.end method

.method public hideItem(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 2

    .prologue
    .line 1357
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1358
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 1224
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->isFull()Z

    move-result v0

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 784
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isOfType(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 680
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public notifyDrop()V
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 1027
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 8

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->allocateRankForNewItem()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;

    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1369
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    .line 1370
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    iget v6, p1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    move-object v1, p1

    .line 1369
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1371
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->requestFocus()Z

    .line 405
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onAttachedToWindow()V

    .line 406
    return-void
.end method

.method public onBackKey()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    sget-object v1, Lcom/android/launcher3/folder/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const v0, 0x7f0c004b

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 362
    const/16 v1, 0x20

    .line 361
    invoke-static {p0, v1, v0}, Lcom/android/launcher3/Utilities;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->clearFocus()V

    .line 369
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v3, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 370
    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    .line 371
    return v4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 267
    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 335
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    .prologue
    .line 769
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    .line 770
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 773
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    .line 774
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 884
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 886
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 890
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 891
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 892
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    if-eq v0, v4, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    .line 894
    iput v4, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 896
    :cond_1
    return-void
.end method

.method public onDragObjectRemoved(Z)V
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeferDropAfterUninstall:Z

    .line 989
    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mUninstallSuccessful:Z

    .line 990
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDeferredAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 993
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    .prologue
    .line 789
    const/16 v0, 0xfa

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;I)V

    .line 790
    return-void
.end method

.method onDragOver(Lcom/android/launcher3/DropTarget$DragObject;I)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 799
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    return-void

    .line 802
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 803
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    .line 805
    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iget v4, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    if-eq v3, v4, :cond_1

    .line 806
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 807
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 808
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 809
    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iput v3, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    .line 811
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v3, :cond_1

    .line 812
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    .line 813
    iget v6, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 812
    const v6, 0x7f0c006b

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 817
    :cond_1
    aget v3, v0, v2

    .line 818
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v5

    .line 820
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    .line 821
    const v4, 0x3ee66666    # 0.45f

    .line 820
    mul-float/2addr v4, v0

    .line 822
    cmpg-float v0, v3, v4

    if-gez v0, :cond_3

    move v0, v1

    .line 823
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v4, v6, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    move v3, v1

    .line 825
    :goto_1
    if-lez v5, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v4, v4, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v4, :cond_5

    move v4, v3

    :goto_2
    if-eqz v4, :cond_6

    .line 826
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    .line 837
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v0, v2

    .line 822
    goto :goto_0

    :cond_4
    move v3, v2

    .line 823
    goto :goto_1

    :cond_5
    move v4, v0

    .line 825
    goto :goto_2

    .line 827
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v5, v2, :cond_8

    .line 828
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v2, v2, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v2, :cond_7

    .line 827
    :goto_4
    if-eqz v0, :cond_8

    .line 829
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_3

    :cond_7
    move v0, v3

    .line 828
    goto :goto_4

    .line 831
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 832
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    if-eq v0, v7, :cond_2

    .line 833
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    .line 834
    iput v7, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    goto :goto_3
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 311
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 316
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_5

    .line 317
    iput-boolean v5, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 321
    :try_start_0
    new-instance v1, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    :try_start_1
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 323
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    if-eqz v2, :cond_4

    throw v2

    :catch_2
    move-exception v1

    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_3

    :cond_3
    if-eq v2, v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v0

    .line 325
    :cond_5
    iput-boolean v5, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 327
    return-void

    .line 323
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 11

    .prologue
    .line 1262
    const/4 v0, 0x0

    .line 1266
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/folder/Folder;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d

    .line 1267
    new-instance v0, Lcom/android/launcher3/folder/Folder$15;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$15;-><init>(Lcom/android/launcher3/folder/Folder;)V

    move-object v8, v0

    .line 1279
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    .line 1284
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, v1}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 1286
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1287
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 1293
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_4

    .line 1295
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v1

    .line 1300
    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_5

    .line 1301
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v2, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;

    move-result-object v9

    .line 1304
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    .line 1305
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    iget v6, v1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 1304
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1308
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_1

    .line 1309
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch()V

    .line 1311
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    move-object v0, v9

    .line 1317
    :goto_2
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1320
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getScaleX()F

    move-result v2

    .line 1321
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getScaleY()F

    move-result v3

    .line 1322
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 1323
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 1324
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    iget-object v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 1325
    const/4 v6, 0x0

    .line 1324
    invoke-virtual {v4, v5, v0, v8, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 1326
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 1327
    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 1332
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1333
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 1336
    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1337
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1338
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_4
    if-eqz v4, :cond_a

    throw v4

    :cond_3
    move-object v8, v0

    .line 1266
    goto/16 :goto_0

    .line 1298
    :cond_4
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v1, v0

    goto :goto_1

    .line 1313
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1314
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V

    goto :goto_2

    .line 1329
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1330
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1338
    :catch_0
    move-exception v4

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_5
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    if-eqz v2, :cond_7

    :try_start_4
    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    :goto_7
    if-eqz v1, :cond_9

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_7

    :cond_8
    if-eq v1, v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    throw v0

    .line 1341
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 1343
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    .line 1345
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/launcher3/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 1348
    :cond_b
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_c

    .line 1349
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    .line 1351
    :cond_c
    return-void

    .line 1338
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v1, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v4

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :cond_d
    move-object v8, v0

    goto/16 :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 912
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeferDropAfterUninstall:Z

    if-eqz v0, :cond_0

    .line 913
    const-string/jumbo v0, "Launcher.Folder"

    const-string/jumbo v1, "Deferred handling drop because waiting for uninstall."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v0, Lcom/android/launcher3/folder/Folder$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/Folder$12;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDeferredAction:Ljava/lang/Runnable;

    .line 920
    return-void

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    move v0, v4

    .line 925
    :goto_0
    if-eqz p4, :cond_8

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mUninstallSuccessful:Z

    move v3, v0

    .line 927
    :goto_1
    if-eqz v3, :cond_9

    .line 928
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    if-eq p1, p0, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    .line 946
    :cond_1
    if-eq p1, p0, :cond_3

    .line 947
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 948
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 949
    if-nez v3, :cond_2

    .line 950
    iput-boolean v4, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    .line 952
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 953
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 957
    :cond_3
    iput-boolean v5, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 958
    iput-boolean v5, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 959
    iput-boolean v5, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 960
    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 964
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch()V

    .line 968
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 970
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    .line 971
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    .line 970
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/launcher3/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 974
    :cond_4
    if-nez p3, :cond_5

    .line 976
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 977
    const/16 v1, 0x1f4

    .line 976
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 979
    :cond_5
    return-void

    :cond_6
    move v0, v5

    .line 923
    goto :goto_0

    :cond_7
    move v3, v4

    .line 925
    goto :goto_1

    :cond_8
    move v3, v5

    goto :goto_1

    .line 933
    :cond_9
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 934
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_b

    .line 935
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 936
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v6

    .line 937
    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->rank:I

    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 938
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 939
    iput-boolean v4, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 941
    :try_start_0
    new-instance v1, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 942
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 943
    if-eqz v1, :cond_a

    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_1

    throw v0

    .line 935
    :cond_b
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 943
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_5
    if-eqz v1, :cond_c

    :try_start_4
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_c
    :goto_6
    if-eqz v2, :cond_e

    throw v2

    :catch_2
    move-exception v1

    if-nez v2, :cond_d

    move-object v2, v1

    goto :goto_6

    :cond_d
    if-eq v2, v1, :cond_c

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_e
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    .line 377
    const/4 v0, 0x1

    return v0

    .line 379
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 219
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onFinishInflate()V

    .line 220
    const v0, 0x7f0e0067

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/FolderPagedView;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    .line 223
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    .line 224
    const v0, 0x7f0e006a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ExtendedEditText;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    new-instance v1, Lcom/android/launcher3/folder/Folder$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$4;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/ExtendedEditText;->setSelectAllOnFocus(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/ExtendedEditText;->getInputType()I

    move-result v1

    .line 251
    const v2, -0x8001

    .line 250
    and-int/2addr v1, v2

    .line 252
    const v2, -0x80001

    .line 250
    and-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setInputType(I)V

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/ExtendedEditText;->forceDisableSuggestions(Z)V

    .line 256
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    .line 260
    const/4 v0, 0x0

    .line 261
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    .line 263
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    if-ne p1, v0, :cond_0

    .line 1432
    if-eqz p2, :cond_1

    .line 1433
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->startEditingFolderName()V

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    goto :goto_0
.end method

.method public onItemsChanged(Z)V
    .locals 0

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 1404
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 275
    :cond_0
    new-instance v0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 1129
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaWidth()I

    move-result v0

    .line 1130
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v1

    .line 1132
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1133
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1135
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setFixedSize(II)V

    .line 1136
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/folder/FolderPagedView;->measure(II)V

    .line 1138
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1139
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    .line 1140
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 1139
    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 1141
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    .line 1142
    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 1143
    iget-object v7, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v7

    add-int/2addr v3, v7

    .line 1144
    iget-object v7, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 1141
    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1146
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    .line 1147
    iget v4, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1146
    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1149
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1150
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result v1

    .line 1151
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/Folder;->setMeasuredDimension(II)V

    .line 1152
    return-void
.end method

.method public onRemove(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1374
    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1375
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1376
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 1377
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne v0, v2, :cond_1

    .line 1378
    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    .line 1382
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 1383
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    if-eqz v0, :cond_2

    .line 1384
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 1389
    :cond_0
    :goto_1
    return-void

    .line 1380
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    goto :goto_0

    .line 1386
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1412
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 906
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, v1}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 908
    :cond_0
    return-void
.end method

.method public prepareAutoUpdate()V
    .locals 1

    .prologue
    .line 1408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 1409
    return-void
.end method

.method public rearrangeChildren()V
    .locals 1

    .prologue
    .line 1158
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren(I)V

    .line 1159
    return-void
.end method

.method public rearrangeChildren(I)V
    .locals 3

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 1168
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;I)V

    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1170
    return-void
.end method

.method replaceFolderWithFinalItem()V
    .locals 3

    .prologue
    .line 1178
    new-instance v0, Lcom/android/launcher3/folder/Folder$13;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$13;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 1214
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    .line 1215
    if-eqz v1, :cond_0

    .line 1216
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1220
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    .line 1221
    return-void

    .line 1218
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setDragController(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 393
    return-void
.end method

.method public setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 397
    return-void
.end method

.method public showItem(Lcom/android/launcher3/ShortcutInfo;)V
    .locals 2

    .prologue
    .line 1361
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1362
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 280
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 281
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    const/4 v0, 0x0

    return v0

    .line 286
    :cond_0
    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    .line 287
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 290
    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v1, Lcom/android/launcher3/folder/Folder$5;

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 291
    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher3/folder/Folder$5;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 306
    :cond_2
    return v3
.end method

.method public startEditingFolderName()V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/android/launcher3/folder/Folder$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$6;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 1002
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 1007
    const/4 v0, 0x1

    return v0
.end method

.method public updateTextViewFocus()V
    .locals 4

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    .line 1231
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    .line 1232
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1233
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ExtendedEditText;->setNextFocusDownId(I)V

    .line 1234
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ExtendedEditText;->setNextFocusRightId(I)V

    .line 1235
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ExtendedEditText;->setNextFocusLeftId(I)V

    .line 1236
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ExtendedEditText;->setNextFocusUpId(I)V

    .line 1239
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ExtendedEditText;->setNextFocusForwardId(I)V

    .line 1242
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusDownId(I)V

    .line 1243
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusRightId(I)V

    .line 1244
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusLeftId(I)V

    .line 1245
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setNextFocusUpId(I)V

    .line 1247
    new-instance v0, Lcom/android/launcher3/folder/Folder$14;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/Folder$14;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1259
    :cond_0
    return-void
.end method
