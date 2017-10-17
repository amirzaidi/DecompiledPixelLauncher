.class public abstract Lcom/android/launcher3/BaseContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;


# static fields
.field private static final sBgPaddingRect:Landroid/graphics/Rect;


# instance fields
.field protected final mBaseDrawable:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field private final mLastTouchDownPosPx:Landroid/graphics/PointF;

.field private mRevealView:Landroid/view/View;

.field private mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/BaseContainerView;->sBgPaddingRect:Landroid/graphics/Rect;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mLastTouchDownPosPx:Landroid/graphics/PointF;

    .line 65
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/android/launcher3/R$styleable;->BaseContainerView:[I

    .line 68
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 192
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getTouchDelegateTargetView()Landroid/view/View;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mLastTouchDownPosPx:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mLastTouchDownPosPx:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/BaseContainerView;->mLastTouchDownPosPx:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/BaseContainerView;->mLastTouchDownPosPx:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 204
    invoke-static {v1, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 208
    return v5

    .line 213
    :cond_2
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mLastTouchDownPosPx:Landroid/graphics/PointF;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updatePaddings()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getContainerPadding()[I

    move-result-object v2

    .line 124
    aget v3, v2, v0

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v3, v4

    .line 125
    const/4 v4, 0x1

    aget v2, v2, v4

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v2, v4

    .line 126
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    iget v0, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    move v1, v0

    .line 131
    :goto_0
    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/android/launcher3/BaseContainerView;->updateBackground(IIII)V

    .line 132
    return-void

    :cond_0
    move v1, v0

    .line 129
    goto :goto_0
.end method


# virtual methods
.method public final getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public final getRevealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mRevealView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getTouchDelegateTargetView()Landroid/view/View;
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->addLauncherLayoutChangedListener(Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getTouchDelegateTargetView()Landroid/view/View;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/TransformingTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 87
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->removeLauncherLayoutChangedListener(Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;)V

    .line 95
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 101
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mContent:Landroid/view/View;

    .line 102
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mRevealView:Landroid/view/View;

    .line 104
    invoke-direct {p0}, Lcom/android/launcher3/BaseContainerView;->updatePaddings()V

    .line 105
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/launcher3/BaseContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherLayoutChanged()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/BaseContainerView;->updatePaddings()V

    .line 110
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getTouchDelegateTargetView()Landroid/view/View;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/BaseContainerView;->getRevealView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/BaseContainerView;->sBgPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 152
    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sget-object v3, Lcom/android/launcher3/BaseContainerView;->sBgPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sget-object v4, Lcom/android/launcher3/BaseContainerView;->sBgPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    sget-object v5, Lcom/android/launcher3/BaseContainerView;->sBgPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sget-object v5, Lcom/android/launcher3/BaseContainerView;->sBgPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    .line 152
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/launcher3/util/TransformingTouchDelegate;->setBounds(IIII)V

    .line 158
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/launcher3/BaseContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setRevealDrawableColor(I)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 173
    return-void
.end method

.method protected updateBackground(IIII)V
    .locals 7

    .prologue
    .line 139
    iget-object v6, p0, Lcom/android/launcher3/BaseContainerView;->mRevealView:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v6, p0, Lcom/android/launcher3/BaseContainerView;->mContent:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/launcher3/BaseContainerView;->mBaseDrawable:Landroid/graphics/drawable/Drawable;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method
