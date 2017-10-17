.class public Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;
.super Lcom/google/android/apps/nexuslauncher/qsb/f;
.source "SourceFile"


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private final E:Z

.field private final mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->sTempRect:Landroid/graphics/Rect;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/qsb/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/c;->p(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->E:Z

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->useVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const v0, 0x7f040021

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->E:Z

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/TransformingTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    goto :goto_0

    .line 49
    :cond_1
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    goto :goto_0
.end method


# virtual methods
.method public G(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->E:Z

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->G(Landroid/content/SharedPreferences;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TransformingTouchDelegate;->setDelegateView(Landroid/view/View;)V

    .line 62
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->onAttachedToWindow()V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 133
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/nexuslauncher/qsb/f;->onLayout(ZIIII)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 139
    sub-int/2addr v0, v1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->P:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 143
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->P:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->P:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 142
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/launcher3/util/TransformingTouchDelegate;->setBounds(IIII)V

    .line 145
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 98
    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 100
    sub-int/2addr v1, v0

    .line 103
    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b009b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->P:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    iget-object v3, v3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 114
    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->R:Z

    if-eqz v2, :cond_0

    .line 115
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 117
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 120
    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->S:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 128
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/f;->onMeasure(II)V

    .line 129
    return-void

    .line 106
    :cond_3
    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v4, v1, v4

    .line 107
    iget-object v1, v3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v4, v1}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v1

    iget-object v5, v3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v1, v5

    .line 108
    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-super {p0, v0, v0, v0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->setPadding(IIII)V

    .line 77
    return-void
.end method

.method protected u(Z)I
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/TransformingTouchDelegate;->extendTouchBounds(F)V

    .line 70
    :cond_0
    if-eqz p1, :cond_2

    const v0, 0x7f040028

    :goto_1
    return v0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 70
    :cond_2
    const v0, 0x7f040029

    goto :goto_1
.end method

.method protected v(Landroid/graphics/Rect;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->useVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_1
    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method protected w(Landroid/content/SharedPreferences;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SuperGContainerView;->E:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->w(Landroid/content/SharedPreferences;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
