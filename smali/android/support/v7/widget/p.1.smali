.class public abstract Landroid/support/v7/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Landroid/support/v7/widget/A;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Landroid/support/v7/widget/K;

.field private final mHorizontalBoundCheckCallback:Landroid/support/v7/widget/J;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroid/support/v7/widget/g;

.field mVerticalBoundCheck:Landroid/support/v7/widget/K;

.field private final mVerticalBoundCheckCallback:Landroid/support/v7/widget/J;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6946
    new-instance v0, Landroid/support/v7/widget/at;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/at;-><init>(Landroid/support/v7/widget/p;)V

    iput-object v0, p0, Landroid/support/v7/widget/p;->mHorizontalBoundCheckCallback:Landroid/support/v7/widget/J;

    .line 6992
    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ap;-><init>(Landroid/support/v7/widget/p;)V

    iput-object v0, p0, Landroid/support/v7/widget/p;->mVerticalBoundCheckCallback:Landroid/support/v7/widget/J;

    .line 7042
    new-instance v0, Landroid/support/v7/widget/K;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mHorizontalBoundCheckCallback:Landroid/support/v7/widget/J;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/K;-><init>(Landroid/support/v7/widget/J;)V

    iput-object v0, p0, Landroid/support/v7/widget/p;->mHorizontalBoundCheck:Landroid/support/v7/widget/K;

    .line 7043
    new-instance v0, Landroid/support/v7/widget/K;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mVerticalBoundCheckCallback:Landroid/support/v7/widget/J;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/K;-><init>(Landroid/support/v7/widget/J;)V

    iput-object v0, p0, Landroid/support/v7/widget/p;->mVerticalBoundCheck:Landroid/support/v7/widget/K;

    .line 7048
    iput-boolean v2, p0, Landroid/support/v7/widget/p;->mRequestedSimpleAnimations:Z

    .line 7050
    iput-boolean v2, p0, Landroid/support/v7/widget/p;->mIsAttachedToWindow:Z

    .line 7052
    iput-boolean v2, p0, Landroid/support/v7/widget/p;->mAutoMeasure:Z

    .line 7058
    iput-boolean v3, p0, Landroid/support/v7/widget/p;->mMeasurementCacheEnabled:Z

    .line 7060
    iput-boolean v3, p0, Landroid/support/v7/widget/p;->mItemPrefetchEnabled:Z

    .line 9990
    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/p;Landroid/support/v7/widget/g;)V
    .locals 0

    .prologue
    .line 6938
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->onSmoothScrollerStopped(Landroid/support/v7/widget/g;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 7916
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 7917
    if-eqz p3, :cond_3

    .line 7919
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/B;->YN(Landroid/support/v7/widget/j;)V

    .line 7928
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 7929
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7930
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v2

    if-nez v2, :cond_5

    .line 7933
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    .line 7935
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/v7/widget/A;->Yy(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7960
    :cond_2
    :goto_2
    iget-boolean v2, v0, Landroid/support/v7/widget/i;->Pc:Z

    if-nez v2, :cond_9

    .line 7967
    :goto_3
    return-void

    .line 7917
    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7926
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/B;->YP(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 7929
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7939
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v2, v3, :cond_6

    .line 7954
    iget-object v2, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, p1, p2, v4}, Landroid/support/v7/widget/A;->Yv(Landroid/view/View;IZ)V

    .line 7955
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/i;->Pb:Z

    .line 7956
    iget-object v2, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v2}, Landroid/support/v7/widget/g;->WZ()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7957
    iget-object v2, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/g;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_2

    .line 7931
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->unScrap()V

    goto :goto_1

    .line 7941
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/A;->Yr(Landroid/view/View;)I

    move-result v2

    .line 7942
    if-eq p2, v5, :cond_7

    .line 7945
    :goto_4
    if-eq v2, v5, :cond_8

    .line 7950
    if-eq v2, p2, :cond_2

    .line 7951
    iget-object v3, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v3, v2, p2}, Landroid/support/v7/widget/p;->moveView(II)V

    goto :goto_2

    .line 7943
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result p2

    goto :goto_4

    .line 7946
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7948
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7964
    :cond_9
    iget-object v1, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 7965
    iput-boolean v4, v0, Landroid/support/v7/widget/i;->Pc:Z

    goto :goto_3
.end method

.method public static chooseSize(III)I
    .locals 2

    .prologue
    .line 7247
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7248
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7249
    sparse-switch v0, :sswitch_data_0

    .line 7256
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 7251
    :sswitch_1
    return v1

    .line 7253
    :sswitch_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 7249
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 8143
    iget-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/A;->Yz(I)V

    .line 8144
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 8777
    sub-int v1, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 8780
    if-nez p4, :cond_0

    .line 8801
    if-gez p3, :cond_4

    .line 8804
    if-eq p3, v5, :cond_5

    .line 8807
    if-eq p3, v4, :cond_6

    move v1, v0

    .line 8818
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 8781
    :cond_0
    if-gez p3, :cond_1

    .line 8784
    if-eq p3, v5, :cond_2

    .line 8796
    if-eq p3, v4, :cond_3

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    move v1, p3

    .line 8783
    goto :goto_0

    .line 8785
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move p1, v0

    :goto_1
    move v1, v0

    move v0, p1

    .line 8794
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 8790
    goto :goto_1

    :sswitch_1
    move p1, v0

    .line 8793
    goto :goto_1

    :cond_3
    move v1, v0

    .line 8798
    goto :goto_0

    :cond_4
    move v0, v3

    move v1, p3

    .line 8803
    goto :goto_0

    :cond_5
    move v0, p1

    .line 8806
    goto :goto_0

    .line 8809
    :cond_6
    if-ne p1, v2, :cond_8

    :cond_7
    move v0, v2

    .line 8810
    goto :goto_0

    .line 8809
    :cond_8
    if-eq p1, v3, :cond_7

    goto :goto_0

    .line 8785
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private getChildRectangleOnScreenScrollAmount(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 14

    .prologue
    .line 9167
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 9168
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v5

    .line 9169
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v6

    .line 9170
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v2

    sub-int v7, v1, v2

    .line 9171
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v2

    sub-int v8, v1, v2

    .line 9172
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v9, v1, v2

    .line 9173
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int v10, v1, v2

    .line 9174
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int v11, v9, v1

    .line 9175
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v12, v10, v1

    .line 9177
    sub-int v1, v9, v5

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9178
    sub-int v1, v10, v6

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9179
    sub-int v1, v11, v7

    const/4 v13, 0x0

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9180
    sub-int v8, v12, v8

    const/4 v12, 0x0

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 9186
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getLayoutDirection()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 9190
    if-nez v2, :cond_2

    sub-int v2, v9, v5

    .line 9191
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    move v2, v1

    .line 9196
    :goto_1
    if-nez v3, :cond_3

    sub-int v1, v10, v6

    .line 9197
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9198
    :goto_2
    const/4 v3, 0x0

    aput v2, v4, v3

    .line 9199
    const/4 v2, 0x1

    aput v1, v4, v2

    .line 9200
    return-object v4

    .line 9187
    :cond_0
    if-nez v1, :cond_1

    sub-int v1, v11, v7

    .line 9188
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 9190
    goto :goto_0

    :cond_3
    move v1, v3

    .line 9196
    goto :goto_2
.end method

.method private isFocusedChildVisibleAfterScrolling(Landroid/support/v7/widget/RecyclerView;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 9299
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 9300
    if-eqz v0, :cond_1

    .line 9303
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v1

    .line 9304
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v2

    .line 9305
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9306
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9307
    iget-object v5, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 9308
    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/p;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9310
    iget v0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    if-lt v0, v3, :cond_2

    .line 9312
    :cond_0
    return v6

    .line 9301
    :cond_1
    return v6

    .line 9310
    :cond_2
    iget v0, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    if-le v0, v1, :cond_0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-ge v0, v4, :cond_0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    if-le v0, v2, :cond_0

    .line 9314
    const/4 v0, 0x1

    return v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8671
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 8672
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 8673
    if-gtz p2, :cond_1

    .line 8676
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 8684
    return v0

    .line 8673
    :cond_1
    if-eq p0, p2, :cond_0

    .line 8674
    return v0

    .line 8678
    :sswitch_0
    return v1

    .line 8680
    :sswitch_1
    if-ge v3, p0, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 8682
    :sswitch_2
    if-eq v3, p0, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 8676
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private onSmoothScrollerStopped(Landroid/support/v7/widget/g;)V
    .locals 1

    .prologue
    .line 9624
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-eq v0, p1, :cond_0

    .line 9627
    :goto_0
    return-void

    .line 9625
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    goto :goto_0
.end method

.method private scrapOrRecycleView(Landroid/support/v7/widget/s;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 8531
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 8532
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8538
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8543
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/p;->detachViewAt(I)V

    .line 8544
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/s;->Xm(Landroid/view/View;)V

    .line 8545
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/B;->YH(Landroid/support/v7/widget/j;)V

    .line 8547
    :goto_0
    return-void

    .line 8536
    :cond_1
    return-void

    .line 8538
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 8539
    invoke-virtual {v1}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8540
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/p;->removeViewAt(I)V

    .line 8541
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/s;->XI(Landroid/support/v7/widget/j;)V

    goto :goto_0
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7871
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/p;->addDisappearingView(Landroid/view/View;I)V

    .line 7872
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 7889
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/p;->addViewInt(Landroid/view/View;IZ)V

    .line 7890
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7900
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/p;->addView(Landroid/view/View;I)V

    .line 7901
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 7912
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/p;->addViewInt(Landroid/view/View;IZ)V

    .line 7913
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7268
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 7271
    :goto_0
    return-void

    .line 7269
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8177
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/p;->attachView(Landroid/view/View;ILandroid/support/v7/widget/i;)V

    .line 8178
    return-void
.end method

.method public attachView(Landroid/view/View;ILandroid/support/v7/widget/i;)V
    .locals 2

    .prologue
    .line 8156
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 8157
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8160
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/B;->YP(Landroid/support/v7/widget/j;)V

    .line 8162
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/v7/widget/A;->Yy(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8166
    return-void

    .line 8158
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/B;->YN(Landroid/support/v7/widget/j;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9037
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9041
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 9042
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9043
    return-void

    .line 9038
    :cond_0
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9039
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 7772
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 7782
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/i;)Z
    .locals 1

    .prologue
    .line 7687
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/e;Landroid/support/v7/widget/I;)V
    .locals 0

    .prologue
    .line 7439
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/I;)V
    .locals 0

    .prologue
    .line 7467
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9478
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9493
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9508
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9523
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9538
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9553
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Landroid/support/v7/widget/s;)V
    .locals 2

    .prologue
    .line 8523
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    .line 8524
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 8528
    return-void

    .line 8525
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8526
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/p;->scrapOrRecycleView(Landroid/support/v7/widget/s;ILandroid/view/View;)V

    goto :goto_0
.end method

.method public detachViewAt(I)V
    .locals 1

    .prologue
    .line 8136
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/p;->detachViewInternal(ILandroid/view/View;)V

    .line 8137
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 7470
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/p;->mIsAttachedToWindow:Z

    .line 7471
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 7472
    return-void
.end method

.method dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V
    .locals 1

    .prologue
    .line 7475
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/p;->mIsAttachedToWindow:Z

    .line 7476
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V

    .line 7477
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8056
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8059
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 8060
    if-eqz v0, :cond_1

    .line 8063
    iget-object v1, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/A;->Yq(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8066
    return-object v0

    .line 8057
    :cond_0
    return-object v2

    .line 8061
    :cond_1
    return-object v2

    .line 8064
    :cond_2
    return-object v2
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 8083
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v1

    .line 8084
    :goto_0
    if-lt v0, v1, :cond_0

    .line 8095
    return-object v5

    .line 8085
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8086
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 8087
    if-eqz v3, :cond_1

    .line 8090
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_2

    .line 8084
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8090
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 8091
    invoke-virtual {v4}, Landroid/support/v7/widget/e;->WN()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8092
    :cond_3
    return-object v2

    .line 8091
    :cond_4
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public abstract generateDefaultLayoutParams()Landroid/support/v7/widget/i;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/i;
    .locals 1

    .prologue
    .line 7728
    new-instance v0, Landroid/support/v7/widget/i;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/i;
    .locals 1

    .prologue
    .line 7704
    instance-of v0, p1, Landroid/support/v7/widget/i;

    if-nez v0, :cond_0

    .line 7706
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    .line 7709
    new-instance v0, Landroid/support/v7/widget/i;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/i;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    .line 7705
    :cond_0
    new-instance v0, Landroid/support/v7/widget/i;

    check-cast p1, Landroid/support/v7/widget/i;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/i;-><init>(Landroid/support/v7/widget/i;)V

    return-object v0

    .line 7707
    :cond_1
    new-instance v0, Landroid/support/v7/widget/i;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/i;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 8015
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8284
    iget-object v1, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 8275
    iget-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9837
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 9838
    :cond_0
    return v0

    .line 9837
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v1, :cond_0

    .line 9840
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9016
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 8968
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8969
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8980
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8845
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 8846
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8831
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 8832
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9004
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8992
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8421
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 8424
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8425
    if-nez v0, :cond_2

    .line 8426
    :cond_0
    return-object v2

    .line 8422
    :cond_1
    return-object v2

    .line 8425
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/A;->Yq(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8428
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 8338
    iget v0, p0, Landroid/support/v7/widget/p;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    .prologue
    .line 8320
    iget v0, p0, Landroid/support/v7/widget/p;->mHeightMode:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 7842
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/f;->afr(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9087
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 9596
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/f;->afD(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 9589
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/f;->afB(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 8374
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 8347
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 8365
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 8356
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 8026
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xd()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9102
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9818
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 9819
    :cond_0
    return v0

    .line 9818
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v1, :cond_0

    .line 9821
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectionModeForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9802
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9057
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 8935
    if-nez p2, :cond_1

    .line 8940
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8943
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_2

    .line 8957
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 8958
    return-void

    .line 8936
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 8937
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 8938
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    .line 8937
    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 8944
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 8945
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8946
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 8947
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8948
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8949
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 8950
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 8951
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    .line 8952
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 8953
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 8949
    invoke-virtual {p3, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 8329
    iget v0, p0, Landroid/support/v7/widget/p;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    .prologue
    .line 8302
    iget v0, p0, Landroid/support/v7/widget/p;->mWidthMode:I

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 9976
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v2

    move v0, v1

    .line 9977
    :goto_0
    if-lt v0, v2, :cond_0

    .line 9984
    return v1

    .line 9978
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9979
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 9980
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_2

    .line 9977
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9980
    :cond_2
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1

    .line 9981
    const/4 v0, 0x1

    return v0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 1

    .prologue
    .line 7415
    iget-boolean v0, p0, Landroid/support/v7/widget/p;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Z
    .locals 1

    .prologue
    .line 9854
    const/4 v0, 0x0

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7829
    iget-object v1, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v1}, Landroid/support/v7/widget/g;->WZ()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x6003

    const/4 v2, 0x0

    .line 9279
    iget-object v0, p0, Landroid/support/v7/widget/p;->mHorizontalBoundCheck:Landroid/support/v7/widget/K;

    invoke-virtual {v0, p1, v3}, Landroid/support/v7/widget/K;->ZN(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 9282
    :goto_0
    if-nez p2, :cond_2

    .line 9285
    if-eqz v0, :cond_3

    :goto_1
    return v2

    .line 9279
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/p;->mVerticalBoundCheck:Landroid/support/v7/widget/K;

    .line 9281
    invoke-virtual {v0, p1, v3}, Landroid/support/v7/widget/K;->ZN(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 9283
    :cond_2
    return v0

    :cond_3
    move v2, v1

    .line 9285
    goto :goto_1
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 8916
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 8917
    iget-object v1, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 8918
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v0, Landroid/support/v7/widget/i;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/support/v7/widget/i;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v0, Landroid/support/v7/widget/i;->rightMargin:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p5, v1

    iget v0, v0, Landroid/support/v7/widget/i;->bottomMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 8921
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 7

    .prologue
    .line 8700
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 8702
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8703
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 8704
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 8706
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidthMode()I

    move-result v4

    .line 8707
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/i;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/i;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, v0, Landroid/support/v7/widget/i;->width:I

    .line 8709
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v6

    .line 8706
    invoke-static {v3, v4, v2, v5, v6}, Landroid/support/v7/widget/p;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 8710
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeightMode()I

    move-result v4

    .line 8711
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/i;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/i;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iget v5, v0, Landroid/support/v7/widget/i;->height:I

    .line 8713
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v6

    .line 8710
    invoke-static {v3, v4, v1, v5, v6}, Landroid/support/v7/widget/p;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 8714
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/support/v7/widget/p;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8717
    :goto_0
    return-void

    .line 8715
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public moveView(II)V
    .locals 3

    .prologue
    .line 8208
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8209
    if-eqz v0, :cond_0

    .line 8213
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->detachViewAt(I)V

    .line 8214
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/p;->attachView(Landroid/view/View;I)V

    .line 8215
    return-void

    .line 8210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    .prologue
    .line 8455
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8458
    :goto_0
    return-void

    .line 8456
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    goto :goto_0
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    .prologue
    .line 8467
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8470
    :goto_0
    return-void

    .line 8468
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    goto :goto_0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;)V
    .locals 0

    .prologue
    .line 9361
    return-void
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1

    .prologue
    .line 9389
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7542
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7551
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V
    .locals 0

    .prologue
    .line 7578
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 7579
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 9130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9725
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 9726
    :cond_0
    return-void

    .line 9725
    :cond_1
    if-eqz p3, :cond_0

    .line 9728
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 9733
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_4

    .line 9736
    :goto_1
    return-void

    .line 9728
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9729
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9730
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9731
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 9734
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 9709
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/p;->onInitializeAccessibilityEvent(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9710
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/a/a;)V
    .locals 2

    .prologue
    .line 9660
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/p;->onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v4/view/a/a;)V

    .line 9661
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v4/view/a/a;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 9690
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9691
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/a;->adW(I)V

    .line 9692
    invoke-virtual {p3, v1}, Landroid/support/v4/view/a/a;->adQ(Z)V

    .line 9694
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9695
    :cond_1
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/a;->adW(I)V

    .line 9696
    invoke-virtual {p3, v1}, Landroid/support/v4/view/a/a;->adQ(Z)V

    .line 9700
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->getRowCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    .line 9701
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->getColumnCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v1

    .line 9702
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->isLayoutHierarchical(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Z

    move-result v2

    .line 9703
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->getSelectionModeForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v3

    .line 9700
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/a/m;->aeU(IIZI)Landroid/support/v4/view/a/m;

    move-result-object v0

    .line 9704
    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/a;->adF(Ljava/lang/Object;)V

    .line 9705
    return-void

    .line 9690
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9694
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 9764
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 9765
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    :goto_1
    move v3, v1

    move v5, v4

    .line 9767
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/l;->aeO(IIIIZZ)Landroid/support/v4/view/a/l;

    move-result-object v0

    .line 9769
    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->adL(Ljava/lang/Object;)V

    .line 9770
    return-void

    .line 9764
    :cond_0
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 9765
    :cond_1
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2

    .prologue
    .line 9740
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 9742
    if-nez v0, :cond_1

    .line 9746
    :cond_0
    :goto_0
    return-void

    .line 9742
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/A;->Yq(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9743
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/p;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v4/view/a/a;)V

    goto :goto_0
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 9150
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9411
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 9399
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .prologue
    .line 9463
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9421
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9433
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 9446
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/p;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9447
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)V
    .locals 2

    .prologue
    .line 7642
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7643
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/e;)V
    .locals 0

    .prologue
    .line 7657
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V
    .locals 1

    .prologue
    .line 9571
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9572
    return-void
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 9345
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/p;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9323
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->isSmoothScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 9615
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 9609
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 9635
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 9859
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/p;->performAccessibilityAction(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 9875
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 9879
    sparse-switch p3, :sswitch_data_0

    move v0, v1

    move v2, v1

    .line 9897
    :goto_0
    if-eqz v2, :cond_6

    .line 9900
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 9901
    return v4

    .line 9876
    :cond_1
    return v1

    .line 9881
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 9884
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 9882
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    neg-int v0, v0

    goto :goto_1

    .line 9885
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_0

    .line 9889
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 9892
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 9890
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 9893
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_0

    .line 9897
    :cond_6
    if-nez v0, :cond_0

    .line 9898
    return v1

    .line 9879
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performAccessibilityActionForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 9927
    const/4 v0, 0x0

    return v0
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 9906
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/p;->performAccessibilityActionForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public removeAndRecycleAllViews(Landroid/support/v7/widget/s;)V
    .locals 2

    .prologue
    .line 9650
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 9656
    return-void

    .line 9651
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9652
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9653
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/p;->removeAndRecycleViewAt(ILandroid/support/v7/widget/s;)V

    goto :goto_0
.end method

.method removeAndRecycleScrapInt(Landroid/support/v7/widget/s;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8559
    invoke-virtual {p1}, Landroid/support/v7/widget/s;->Xk()I

    move-result v1

    .line 8561
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-gez v0, :cond_0

    .line 8582
    invoke-virtual {p1}, Landroid/support/v7/widget/s;->XF()V

    .line 8583
    if-gtz v1, :cond_4

    .line 8586
    :goto_1
    return-void

    .line 8562
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/s;->Xo(I)Landroid/view/View;

    move-result-object v2

    .line 8563
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 8564
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 8572
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 8573
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8576
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v4, :cond_3

    .line 8579
    :goto_3
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 8580
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/s;->XJ(Landroid/view/View;)V

    .line 8561
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8574
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_2

    .line 8577
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/b;->Wu(Landroid/support/v7/widget/j;)V

    goto :goto_3

    .line 8584
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_1
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/s;)V
    .locals 0

    .prologue
    .line 8252
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->removeView(Landroid/view/View;)V

    .line 8253
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/s;->Xu(Landroid/view/View;)V

    .line 8254
    return-void
.end method

.method public removeAndRecycleViewAt(ILandroid/support/v7/widget/s;)V
    .locals 1

    .prologue
    .line 8263
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8264
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->removeViewAt(I)V

    .line 8265
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/s;->Xu(Landroid/view/View;)V

    .line 8266
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7978
    iget-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/A;->removeView(Landroid/view/View;)V

    .line 7979
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .prologue
    .line 7990
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7991
    if-nez v0, :cond_0

    .line 7994
    :goto_0
    return-void

    .line 7992
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/A;->removeViewAt(I)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .prologue
    .line 9219
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/p;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9239
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/p;->getChildRectangleOnScreenScrollAmount(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object v0

    .line 9241
    aget v1, v0, v3

    .line 9242
    aget v0, v0, v4

    .line 9243
    if-nez p5, :cond_2

    .line 9244
    :cond_0
    if-eqz v1, :cond_3

    .line 9245
    :cond_1
    if-nez p4, :cond_4

    .line 9248
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 9250
    :goto_0
    return v4

    .line 9243
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/p;->isFocusedChildVisibleAfterScrolling(Landroid/support/v7/widget/RecyclerView;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9253
    :goto_1
    return v3

    .line 9244
    :cond_3
    if-nez v0, :cond_1

    goto :goto_1

    .line 9246
    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 7218
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 7221
    :goto_0
    return-void

    .line 7219
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 7745
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0

    .prologue
    .line 7795
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 7762
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0

    .prologue
    .line 7338
    iput-boolean p1, p0, Landroid/support/v7/widget/p;->mAutoMeasure:Z

    .line 7339
    return-void
.end method

.method setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 9956
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9957
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9955
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/p;->setMeasureSpecs(II)V

    .line 9959
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mWidth:I

    .line 7130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mWidthMode:I

    .line 7131
    iget v0, p0, Landroid/support/v7/widget/p;->mWidthMode:I

    if-eqz v0, :cond_2

    .line 7135
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mHeight:I

    .line 7136
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mHeightMode:I

    .line 7137
    iget v0, p0, Landroid/support/v7/widget/p;->mHeightMode:I

    if-eqz v0, :cond_3

    .line 7140
    :cond_1
    :goto_1
    return-void

    .line 7131
    :cond_2
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_0

    .line 7132
    iput v1, p0, Landroid/support/v7/widget/p;->mWidth:I

    goto :goto_0

    .line 7137
    :cond_3
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_1

    .line 7138
    iput v1, p0, Landroid/support/v7/widget/p;->mHeight:I

    goto :goto_1
.end method

.method public setMeasuredDimension(II)V
    .locals 1

    .prologue
    .line 9582
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9583
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 3

    .prologue
    .line 7207
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 7208
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 7209
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/p;->chooseSize(III)I

    move-result v0

    .line 7210
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/p;->chooseSize(III)I

    move-result v1

    .line 7211
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/p;->setMeasuredDimension(II)V

    .line 7212
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 8

    .prologue
    const v2, 0x7fffffff

    const/4 v0, 0x0

    const/high16 v3, -0x80000000

    .line 7156
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v5

    .line 7157
    if-eqz v5, :cond_0

    move v4, v0

    move v1, v3

    move v0, v2

    .line 7166
    :goto_0
    if-lt v4, v5, :cond_1

    .line 7183
    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 7184
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/p;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 7185
    return-void

    .line 7158
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 7159
    return-void

    .line 7167
    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7168
    iget-object v7, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7169
    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/p;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7170
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-lt v6, v0, :cond_2

    .line 7173
    :goto_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-gt v6, v1, :cond_3

    .line 7176
    :goto_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-lt v6, v2, :cond_4

    .line 7179
    :goto_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v3, :cond_5

    .line 7166
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7171
    :cond_2
    iget v0, v7, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 7174
    :cond_3
    iget v1, v7, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 7177
    :cond_4
    iget v2, v7, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 7180
    :cond_5
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 7113
    if-eqz p1, :cond_0

    .line 7119
    iput-object p1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7120
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iput-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    .line 7121
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mWidth:I

    .line 7122
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mHeight:I

    .line 7124
    :goto_0
    iput v2, p0, Landroid/support/v7/widget/p;->mWidthMode:I

    .line 7125
    iput v2, p0, Landroid/support/v7/widget/p;->mHeightMode:I

    .line 7126
    return-void

    .line 7114
    :cond_0
    iput-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7115
    iput-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    .line 7116
    iput v1, p0, Landroid/support/v7/widget/p;->mWidth:I

    .line 7117
    iput v1, p0, Landroid/support/v7/widget/p;->mHeight:I

    goto :goto_0
.end method

.method shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/i;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8638
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8641
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 8638
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/p;->mMeasurementCacheEnabled:Z

    if-eqz v1, :cond_0

    .line 8640
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p4, Landroid/support/v7/widget/i;->width:I

    invoke-static {v1, p2, v2}, Landroid/support/v7/widget/p;->isMeasurementUpToDate(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8641
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p4, Landroid/support/v7/widget/i;->height:I

    invoke-static {v1, p3, v2}, Landroid/support/v7/widget/p;->isMeasurementUpToDate(III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 1

    .prologue
    .line 9972
    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/i;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8624
    iget-boolean v1, p0, Landroid/support/v7/widget/p;->mMeasurementCacheEnabled:Z

    if-nez v1, :cond_1

    .line 8626
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 8625
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p4, Landroid/support/v7/widget/i;->width:I

    invoke-static {v1, p2, v2}, Landroid/support/v7/widget/p;->isMeasurementUpToDate(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8626
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p4, Landroid/support/v7/widget/i;->height:I

    invoke-static {v1, p3, v2}, Landroid/support/v7/widget/p;->isMeasurementUpToDate(III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;I)V
    .locals 2

    .prologue
    .line 7808
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7809
    return-void
.end method

.method public startSmoothScroll(Landroid/support/v7/widget/g;)V
    .locals 2

    .prologue
    .line 7817
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-nez v0, :cond_1

    .line 7821
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    .line 7822
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/g;->WY(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/p;)V

    .line 7823
    return-void

    .line 7817
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    .line 7818
    invoke-virtual {v0}, Landroid/support/v7/widget/g;->WZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7819
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v0}, Landroid/support/v7/widget/g;->stop()V

    goto :goto_0
.end method

.method stopSmoothScroller()V
    .locals 1

    .prologue
    .line 9618
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-nez v0, :cond_0

    .line 9621
    :goto_0
    return-void

    .line 9619
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v0}, Landroid/support/v7/widget/g;->stop()V

    goto :goto_0
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 7374
    const/4 v0, 0x0

    return v0
.end method
