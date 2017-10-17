.class public abstract Lcom/android/launcher3/BaseRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/n;


# instance fields
.field private mDeltaThreshold:F

.field private mDownX:I

.field private mDownY:I

.field mDy:I

.field private mLastY:I

.field protected final mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mDy:I

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mDeltaThreshold:F

    .line 62
    new-instance v0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;-><init>(Lcom/android/launcher3/BaseRecyclerView;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    .line 64
    new-instance v0, Lcom/android/launcher3/BaseRecyclerView$ScrollListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/BaseRecyclerView$ScrollListener;-><init>(Lcom/android/launcher3/BaseRecyclerView;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/m;)V

    .line 66
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 123
    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isDraggingThumb()Z

    move-result v0

    return v0

    .line 126
    :pswitch_0
    iput v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownX:I

    .line 127
    iput v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    iput v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownY:I

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->shouldStopScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->stopScroll()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownX:I

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownY:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 134
    :pswitch_1
    iput v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownX:I

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownY:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFastScrollCompleted()V

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownX:I

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerView;->mDownY:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerView;->mLastY:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->handleTouchEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseRecyclerView;->onUpdateScrollbar(I)V

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->draw(Landroid/graphics/Canvas;)V

    .line 206
    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->getThumbHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 184
    return v0
.end method

.method public abstract getCurrentScrollY()I
.end method

.method public getFastScrollerTrackColor(I)I
    .locals 0

    .prologue
    .line 191
    return p1
.end method

.method public getScrollBar()Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    return-object v0
.end method

.method protected getScrollbarTrackHeight()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getHeight()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 98
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0e002a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setPopupView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method protected onFastScrollCompleted()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onFinishInflate()V

    .line 92
    invoke-virtual {p0, p0}, Lcom/android/launcher3/BaseRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/n;)V

    .line 93
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0, p2}, Lcom/android/launcher3/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/android/launcher3/BaseRecyclerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    return-void
.end method

.method protected abstract onUpdateScrollbar(I)V
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->reattachThumbToScroll()V

    .line 87
    return-void
.end method

.method protected abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method protected shouldStopScroll(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mDy:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mDeltaThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    return v2
.end method

.method protected supportsFastScrolling()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(II)V
    .locals 2

    .prologue
    .line 218
    if-gtz p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setThumbOffsetY(I)V

    .line 220
    return-void

    .line 227
    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 230
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setThumbOffsetY(I)V

    .line 231
    return-void
.end method
