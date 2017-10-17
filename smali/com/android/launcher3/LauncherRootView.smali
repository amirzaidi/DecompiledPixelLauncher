.class public Lcom/android/launcher3/LauncherRootView;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "SourceFile"


# instance fields
.field private mAlignedView:Landroid/view/View;

.field private mDrawSideInsetBar:Z

.field private mLeftInsetBarWidth:I

.field private final mOpaquePaint:Landroid/graphics/Paint;

.field private mRightInsetBarWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    .line 30
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mDrawSideInsetBar:Z

    if-eqz v0, :cond_1

    .line 80
    iget v0, p0, Lcom/android/launcher3/LauncherRootView;->mRightInsetBarWidth:I

    if-lez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getWidth()I

    move-result v0

    .line 82
    iget v1, p0, Lcom/android/launcher3/LauncherRootView;->mRightInsetBarWidth:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 84
    :cond_0
    iget v0, p0, Lcom/android/launcher3/LauncherRootView;->mLeftInsetBarWidth:I

    if-lez v0, :cond_1

    .line 85
    iget v0, p0, Lcom/android/launcher3/LauncherRootView;->mLeftInsetBarWidth:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    :cond_1
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 48
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_5

    .line 49
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 48
    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mDrawSideInsetBar:Z

    .line 51
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/android/launcher3/LauncherRootView;->mRightInsetBarWidth:I

    .line 52
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/launcher3/LauncherRootView;->mLeftInsetBarWidth:I

    .line 53
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mDrawSideInsetBar:Z

    if-eqz v0, :cond_6

    new-instance v0, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherRootView;->setInsets(Landroid/graphics/Rect;)V

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mAlignedView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mDrawSideInsetBar:Z

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mAlignedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 58
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ne v2, v4, :cond_1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-eq v2, v4, :cond_2

    .line 59
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 60
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 61
    iget-object v2, p0, Lcom/android/launcher3/LauncherRootView;->mAlignedView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_2
    if-eqz v3, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onInsetsChanged(Landroid/graphics/Rect;)V

    .line 71
    :cond_3
    return v1

    :cond_4
    move v0, v1

    .line 49
    goto :goto_0

    :cond_5
    move v0, v2

    .line 48
    goto :goto_0

    :cond_6
    move-object v0, p1

    .line 53
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherRootView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mAlignedView:Landroid/view/View;

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/InsettableFrameLayout;->onFinishInflate()V

    .line 42
    return-void
.end method
