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

    .line 6982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6990
    new-instance v0, Landroid/support/v7/widget/at;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/at;-><init>(Landroid/support/v7/widget/p;)V

    iput-object v0, p0, Landroid/support/v7/widget/p;->mHorizontalBoundCheckCallback:Landroid/support/v7/widget/J;

    .line 7036
    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ap;-><init>(Landroid/support/v7/widget/p;)V

    iput-object v0, p0, Landroid/support/v7/widget/p;->mVerticalBoundCheckCallback:Landroid/support/v7/widget/J;

    .line 7086
    new-instance v0, Landroid/support/v7/widget/K;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mHorizontalBoundCheckCallback:Landroid/support/v7/widget/J;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/K;-><init>(Landroid/support/v7/widget/J;)V

    iput-object v0, p0, Landroid/support/v7/widget/p;->mHorizontalBoundCheck:Landroid/support/v7/widget/K;

    .line 7087
    new-instance v0, Landroid/support/v7/widget/K;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mVerticalBoundCheckCallback:Landroid/support/v7/widget/J;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/K;-><init>(Landroid/support/v7/widget/J;)V

    iput-object v0, p0, Landroid/support/v7/widget/p;->mVerticalBoundCheck:Landroid/support/v7/widget/K;

    .line 7092
    iput-boolean v2, p0, Landroid/support/v7/widget/p;->mRequestedSimpleAnimations:Z

    .line 7094
    iput-boolean v2, p0, Landroid/support/v7/widget/p;->mIsAttachedToWindow:Z

    .line 7096
    iput-boolean v2, p0, Landroid/support/v7/widget/p;->mAutoMeasure:Z

    .line 7102
    iput-boolean v3, p0, Landroid/support/v7/widget/p;->mMeasurementCacheEnabled:Z

    .line 7104
    iput-boolean v3, p0, Landroid/support/v7/widget/p;->mItemPrefetchEnabled:Z

    .line 10035
    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/p;Landroid/support/v7/widget/g;)V
    .locals 0

    .prologue
    .line 6982
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->onSmoothScrollerStopped(Landroid/support/v7/widget/g;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 7960
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 7961
    if-eqz p3, :cond_3

    .line 7963
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/B;->ZP(Landroid/support/v7/widget/j;)V

    .line 7972
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 7973
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7974
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v2

    if-nez v2, :cond_5

    .line 7977
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    .line 7979
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/v7/widget/A;->ZA(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8004
    :cond_2
    :goto_2
    iget-boolean v2, v0, Landroid/support/v7/widget/i;->QJ:Z

    if-nez v2, :cond_9

    .line 8011
    :goto_3
    return-void

    .line 7961
    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7970
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/B;->ZR(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 7973
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7983
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v2, v3, :cond_6

    .line 7998
    iget-object v2, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, p1, p2, v4}, Landroid/support/v7/widget/A;->Zx(Landroid/view/View;IZ)V

    .line 7999
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/i;->QI:Z

    .line 8000
    iget-object v2, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v2}, Landroid/support/v7/widget/g;->XY()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8001
    iget-object v2, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/g;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_2

    .line 7975
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->unScrap()V

    goto :goto_1

    .line 7985
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/A;->Zt(Landroid/view/View;)I

    move-result v2

    .line 7986
    if-eq p2, v5, :cond_7

    .line 7989
    :goto_4
    if-eq v2, v5, :cond_8

    .line 7994
    if-eq v2, p2, :cond_2

    .line 7995
    iget-object v3, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v3, v2, p2}, Landroid/support/v7/widget/p;->moveView(II)V

    goto :goto_2

    .line 7987
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result p2

    goto :goto_4

    .line 7990
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7992
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8008
    :cond_9
    iget-object v1, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 8009
    iput-boolean v4, v0, Landroid/support/v7/widget/i;->QJ:Z

    goto/16 :goto_3
.end method

.method public static chooseSize(III)I
    .locals 2

    .prologue
    .line 7291
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7292
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7293
    sparse-switch v0, :sswitch_data_0

    .line 7300
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 7295
    :sswitch_1
    return v1

    .line 7297
    :sswitch_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 7293
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
    .line 8187
    iget-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/A;->ZB(I)V

    .line 8188
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

    .line 8822
    sub-int v1, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 8825
    if-nez p4, :cond_0

    .line 8846
    if-gez p3, :cond_4

    .line 8849
    if-eq p3, v5, :cond_5

    .line 8852
    if-eq p3, v4, :cond_6

    move v1, v0

    .line 8863
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 8826
    :cond_0
    if-gez p3, :cond_1

    .line 8829
    if-eq p3, v5, :cond_2

    .line 8841
    if-eq p3, v4, :cond_3

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    move v1, p3

    .line 8828
    goto :goto_0

    .line 8830
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move p1, v0

    :goto_1
    move v1, v0

    move v0, p1

    .line 8839
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 8835
    goto :goto_1

    :sswitch_1
    move p1, v0

    .line 8838
    goto :goto_1

    :cond_3
    move v1, v0

    .line 8843
    goto :goto_0

    :cond_4
    move v0, v3

    move v1, p3

    .line 8848
    goto :goto_0

    :cond_5
    move v0, p1

    .line 8851
    goto :goto_0

    .line 8854
    :cond_6
    if-ne p1, v2, :cond_8

    :cond_7
    move v0, v2

    .line 8855
    goto :goto_0

    .line 8854
    :cond_8
    if-eq p1, v3, :cond_7

    goto :goto_0

    .line 8830
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
    .line 9212
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 9213
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v5

    .line 9214
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v6

    .line 9215
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v2

    sub-int v7, v1, v2

    .line 9216
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v2

    sub-int v8, v1, v2

    .line 9217
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v9, v1, v2

    .line 9218
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int v10, v1, v2

    .line 9219
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int v11, v9, v1

    .line 9220
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v12, v10, v1

    .line 9222
    sub-int v1, v9, v5

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9223
    sub-int v1, v10, v6

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9224
    sub-int v1, v11, v7

    const/4 v13, 0x0

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9225
    sub-int v8, v12, v8

    const/4 v12, 0x0

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 9231
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getLayoutDirection()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 9235
    if-nez v2, :cond_2

    sub-int v2, v9, v5

    .line 9236
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    move v2, v1

    .line 9241
    :goto_1
    if-nez v3, :cond_3

    sub-int v1, v10, v6

    .line 9242
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9243
    :goto_2
    const/4 v3, 0x0

    aput v2, v4, v3

    .line 9244
    const/4 v2, 0x1

    aput v1, v4, v2

    .line 9245
    return-object v4

    .line 9232
    :cond_0
    if-nez v1, :cond_1

    sub-int v1, v11, v7

    .line 9233
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 9235
    goto :goto_0

    :cond_3
    move v1, v3

    .line 9241
    goto :goto_2
.end method

.method private isFocusedChildVisibleAfterScrolling(Landroid/support/v7/widget/RecyclerView;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 9344
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 9345
    if-eqz v0, :cond_1

    .line 9348
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v1

    .line 9349
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v2

    .line 9350
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9351
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9352
    iget-object v5, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 9353
    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/p;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9355
    iget v0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    if-lt v0, v3, :cond_2

    .line 9357
    :cond_0
    return v6

    .line 9346
    :cond_1
    return v6

    .line 9355
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

    .line 9359
    const/4 v0, 0x1

    return v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8716
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 8717
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 8718
    if-gtz p2, :cond_1

    .line 8721
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 8729
    return v0

    .line 8718
    :cond_1
    if-eq p0, p2, :cond_0

    .line 8719
    return v0

    .line 8723
    :sswitch_0
    return v1

    .line 8725
    :sswitch_1
    if-ge v3, p0, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 8727
    :sswitch_2
    if-eq v3, p0, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 8721
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
    .line 9669
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-eq v0, p1, :cond_0

    .line 9672
    :goto_0
    return-void

    .line 9670
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    goto :goto_0
.end method

.method private scrapOrRecycleView(Landroid/support/v7/widget/s;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 8576
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 8577
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8583
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8588
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/p;->detachViewAt(I)V

    .line 8589
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/s;->Ym(Landroid/view/View;)V

    .line 8590
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/B;->ZJ(Landroid/support/v7/widget/j;)V

    .line 8592
    :goto_0
    return-void

    .line 8581
    :cond_1
    return-void

    .line 8583
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 8584
    invoke-virtual {v1}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8585
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/p;->removeViewAt(I)V

    .line 8586
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/s;->YI(Landroid/support/v7/widget/j;)V

    goto :goto_0
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7915
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/p;->addDisappearingView(Landroid/view/View;I)V

    .line 7916
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 7933
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/p;->addViewInt(Landroid/view/View;IZ)V

    .line 7934
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7944
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/p;->addView(Landroid/view/View;I)V

    .line 7945
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 7956
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/p;->addViewInt(Landroid/view/View;IZ)V

    .line 7957
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7312
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 7315
    :goto_0
    return-void

    .line 7313
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8221
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/p;->attachView(Landroid/view/View;ILandroid/support/v7/widget/i;)V

    .line 8222
    return-void
.end method

.method public attachView(Landroid/view/View;ILandroid/support/v7/widget/i;)V
    .locals 2

    .prologue
    .line 8200
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 8201
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8204
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/B;->ZR(Landroid/support/v7/widget/j;)V

    .line 8206
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/v7/widget/A;->ZA(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8210
    return-void

    .line 8202
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/B;->ZP(Landroid/support/v7/widget/j;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9082
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9086
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 9087
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9088
    return-void

    .line 9083
    :cond_0
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9084
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 7816
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 7826
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/i;)Z
    .locals 1

    .prologue
    .line 7731
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
    .line 7483
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/I;)V
    .locals 0

    .prologue
    .line 7511
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9523
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9538
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9553
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9568
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9583
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 9598
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Landroid/support/v7/widget/s;)V
    .locals 2

    .prologue
    .line 8568
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    .line 8569
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 8573
    return-void

    .line 8570
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8571
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/p;->scrapOrRecycleView(Landroid/support/v7/widget/s;ILandroid/view/View;)V

    goto :goto_0
.end method

.method public detachViewAt(I)V
    .locals 1

    .prologue
    .line 8180
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/p;->detachViewInternal(ILandroid/view/View;)V

    .line 8181
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 7514
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/p;->mIsAttachedToWindow:Z

    .line 7515
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 7516
    return-void
.end method

.method dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V
    .locals 1

    .prologue
    .line 7519
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/p;->mIsAttachedToWindow:Z

    .line 7520
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V

    .line 7521
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8100
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8103
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 8104
    if-eqz v0, :cond_1

    .line 8107
    iget-object v1, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/A;->Zs(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8110
    return-object v0

    .line 8101
    :cond_0
    return-object v2

    .line 8105
    :cond_1
    return-object v2

    .line 8108
    :cond_2
    return-object v2
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 8127
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v1

    .line 8128
    :goto_0
    if-lt v0, v1, :cond_0

    .line 8139
    return-object v5

    .line 8129
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8130
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 8131
    if-eqz v3, :cond_1

    .line 8134
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_2

    .line 8128
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8134
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 8135
    invoke-virtual {v4}, Landroid/support/v7/widget/e;->XM()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8136
    :cond_3
    return-object v2

    .line 8135
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
    .line 7772
    new-instance v0, Landroid/support/v7/widget/i;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/i;
    .locals 1

    .prologue
    .line 7748
    instance-of v0, p1, Landroid/support/v7/widget/i;

    if-nez v0, :cond_0

    .line 7750
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    .line 7753
    new-instance v0, Landroid/support/v7/widget/i;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/i;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    .line 7749
    :cond_0
    new-instance v0, Landroid/support/v7/widget/i;

    check-cast p1, Landroid/support/v7/widget/i;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/i;-><init>(Landroid/support/v7/widget/i;)V

    return-object v0

    .line 7751
    :cond_1
    new-instance v0, Landroid/support/v7/widget/i;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/i;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 8059
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9117
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

    .line 8328
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
    .line 8319
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

    .line 9882
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 9883
    :cond_0
    return v0

    .line 9882
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v1, :cond_0

    .line 9885
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
    .line 9061
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
    .line 9013
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9014
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9025
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
    .line 8890
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 8891
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
    .line 8876
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 8877
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
    .line 9049
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
    .line 9037
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

    .line 8465
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 8468
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8469
    if-nez v0, :cond_2

    .line 8470
    :cond_0
    return-object v2

    .line 8466
    :cond_1
    return-object v2

    .line 8469
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/A;->Zs(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8472
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 8382
    iget v0, p0, Landroid/support/v7/widget/p;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    .prologue
    .line 8364
    iget v0, p0, Landroid/support/v7/widget/p;->mHeightMode:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 7886
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/f;->ags(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9132
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
    .line 9641
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/f;->agF(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 9634
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/f;->agD(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 8418
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
    .line 8391
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
    .line 8409
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
    .line 8400
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
    .line 8070
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yd()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9147
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

    .line 9863
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 9864
    :cond_0
    return v0

    .line 9863
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v1, :cond_0

    .line 9866
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
    .line 9847
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9102
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

    .line 8980
    if-nez p2, :cond_1

    .line 8985
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8988
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_2

    .line 9002
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 9003
    return-void

    .line 8981
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 8982
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 8983
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    .line 8982
    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 8989
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 8990
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8991
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 8992
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8993
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8994
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 8995
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 8996
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    .line 8997
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 8998
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 8994
    invoke-virtual {p3, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 8373
    iget v0, p0, Landroid/support/v7/widget/p;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    .prologue
    .line 8346
    iget v0, p0, Landroid/support/v7/widget/p;->mWidthMode:I

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 10021
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v2

    move v0, v1

    .line 10022
    :goto_0
    if-lt v0, v2, :cond_0

    .line 10029
    return v1

    .line 10023
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10024
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10025
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_2

    .line 10022
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10025
    :cond_2
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1

    .line 10026
    const/4 v0, 0x1

    return v0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 1

    .prologue
    .line 7459
    iget-boolean v0, p0, Landroid/support/v7/widget/p;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Z
    .locals 1

    .prologue
    .line 9899
    const/4 v0, 0x0

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7873
    iget-object v1, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v1}, Landroid/support/v7/widget/g;->XY()Z

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

    .line 9324
    iget-object v0, p0, Landroid/support/v7/widget/p;->mHorizontalBoundCheck:Landroid/support/v7/widget/K;

    invoke-virtual {v0, p1, v3}, Landroid/support/v7/widget/K;->aaP(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 9327
    :goto_0
    if-nez p2, :cond_2

    .line 9330
    if-eqz v0, :cond_3

    :goto_1
    return v2

    .line 9324
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/p;->mVerticalBoundCheck:Landroid/support/v7/widget/K;

    .line 9326
    invoke-virtual {v0, p1, v3}, Landroid/support/v7/widget/K;->aaP(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 9328
    :cond_2
    return v0

    :cond_3
    move v2, v1

    .line 9330
    goto :goto_1
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 8961
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 8962
    iget-object v1, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 8963
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

    .line 8966
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 7

    .prologue
    .line 8745
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 8747
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8748
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 8749
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 8751
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getWidthMode()I

    move-result v4

    .line 8752
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

    .line 8754
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v6

    .line 8751
    invoke-static {v3, v4, v2, v5, v6}, Landroid/support/v7/widget/p;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 8755
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getHeightMode()I

    move-result v4

    .line 8756
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

    .line 8758
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v6

    .line 8755
    invoke-static {v3, v4, v1, v5, v6}, Landroid/support/v7/widget/p;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 8759
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/support/v7/widget/p;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8762
    :goto_0
    return-void

    .line 8760
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public moveView(II)V
    .locals 3

    .prologue
    .line 8252
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8253
    if-eqz v0, :cond_0

    .line 8257
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->detachViewAt(I)V

    .line 8258
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/p;->attachView(Landroid/view/View;I)V

    .line 8259
    return-void

    .line 8254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 8255
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    .prologue
    .line 8499
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8502
    :goto_0
    return-void

    .line 8500
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    goto :goto_0
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    .prologue
    .line 8511
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8514
    :goto_0
    return-void

    .line 8512
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    goto :goto_0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;)V
    .locals 0

    .prologue
    .line 9406
    return-void
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1

    .prologue
    .line 9434
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7586
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7595
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V
    .locals 0

    .prologue
    .line 7622
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 7623
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 9175
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9770
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 9771
    :cond_0
    return-void

    .line 9770
    :cond_1
    if-eqz p3, :cond_0

    .line 9773
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 9778
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_4

    .line 9781
    :goto_1
    return-void

    .line 9773
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9774
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9775
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9776
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 9779
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
    .line 9754
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/p;->onInitializeAccessibilityEvent(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9755
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/a/a;)V
    .locals 2

    .prologue
    .line 9705
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/p;->onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v4/view/a/a;)V

    .line 9706
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v4/view/a/a;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 9735
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9736
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/a;->aeY(I)V

    .line 9737
    invoke-virtual {p3, v1}, Landroid/support/v4/view/a/a;->aeS(Z)V

    .line 9739
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9740
    :cond_1
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/a;->aeY(I)V

    .line 9741
    invoke-virtual {p3, v1}, Landroid/support/v4/view/a/a;->aeS(Z)V

    .line 9745
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->getRowCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    .line 9746
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->getColumnCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v1

    .line 9747
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->isLayoutHierarchical(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Z

    move-result v2

    .line 9748
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/p;->getSelectionModeForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v3

    .line 9745
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/a/m;->afW(IIZI)Landroid/support/v4/view/a/m;

    move-result-object v0

    .line 9749
    invoke-virtual {p3, v0}, Landroid/support/v4/view/a/a;->aeH(Ljava/lang/Object;)V

    .line 9750
    return-void

    .line 9735
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9739
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

    .line 9809
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 9810
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    :goto_1
    move v3, v1

    move v5, v4

    .line 9812
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/l;->afQ(IIIIZZ)Landroid/support/v4/view/a/l;

    move-result-object v0

    .line 9814
    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->aeN(Ljava/lang/Object;)V

    .line 9815
    return-void

    .line 9809
    :cond_0
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 9810
    :cond_1
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v2

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2

    .prologue
    .line 9785
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 9787
    if-nez v0, :cond_1

    .line 9791
    :cond_0
    :goto_0
    return-void

    .line 9787
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/A;->Zs(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9788
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
    .line 9195
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9456
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 9444
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .prologue
    .line 9508
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9466
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9478
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 9491
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/p;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9492
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)V
    .locals 2

    .prologue
    .line 7686
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7687
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/e;)V
    .locals 0

    .prologue
    .line 7701
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V
    .locals 1

    .prologue
    .line 9616
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9617
    return-void
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 9390
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/p;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9368
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
    .line 9660
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 9654
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 9680
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 9904
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

    .line 9920
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 9924
    sparse-switch p3, :sswitch_data_0

    move v0, v1

    move v2, v1

    .line 9942
    :goto_0
    if-eqz v2, :cond_6

    .line 9945
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 9946
    return v4

    .line 9921
    :cond_1
    return v1

    .line 9926
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 9929
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 9927
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

    .line 9930
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

    .line 9934
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 9937
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 9935
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

    .line 9938
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

    .line 9942
    :cond_6
    if-nez v0, :cond_0

    .line 9943
    return v1

    .line 9924
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performAccessibilityActionForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 9972
    const/4 v0, 0x0

    return v0
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 9951
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
    .line 9695
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 9701
    return-void

    .line 9696
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9697
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9698
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/p;->removeAndRecycleViewAt(ILandroid/support/v7/widget/s;)V

    goto :goto_0
.end method

.method removeAndRecycleScrapInt(Landroid/support/v7/widget/s;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8604
    invoke-virtual {p1}, Landroid/support/v7/widget/s;->Yk()I

    move-result v1

    .line 8606
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-gez v0, :cond_0

    .line 8627
    invoke-virtual {p1}, Landroid/support/v7/widget/s;->YF()V

    .line 8628
    if-gtz v1, :cond_4

    .line 8631
    :goto_1
    return-void

    .line 8607
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/s;->Yo(I)Landroid/view/View;

    move-result-object v2

    .line 8608
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 8609
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 8617
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 8618
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8621
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v4, :cond_3

    .line 8624
    :goto_3
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 8625
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/s;->YJ(Landroid/view/View;)V

    .line 8606
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8619
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_2

    .line 8622
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/b;->Xs(Landroid/support/v7/widget/j;)V

    goto :goto_3

    .line 8629
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_1
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/s;)V
    .locals 0

    .prologue
    .line 8296
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->removeView(Landroid/view/View;)V

    .line 8297
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/s;->Yu(Landroid/view/View;)V

    .line 8298
    return-void
.end method

.method public removeAndRecycleViewAt(ILandroid/support/v7/widget/s;)V
    .locals 1

    .prologue
    .line 8307
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8308
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->removeViewAt(I)V

    .line 8309
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/s;->Yu(Landroid/view/View;)V

    .line 8310
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8022
    iget-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/A;->removeView(Landroid/view/View;)V

    .line 8023
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .prologue
    .line 8034
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8035
    if-nez v0, :cond_0

    .line 8038
    :goto_0
    return-void

    .line 8036
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/A;->removeViewAt(I)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .prologue
    .line 9264
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

    .line 9284
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/p;->getChildRectangleOnScreenScrollAmount(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object v0

    .line 9286
    aget v1, v0, v3

    .line 9287
    aget v0, v0, v4

    .line 9288
    if-nez p5, :cond_2

    .line 9289
    :cond_0
    if-eqz v1, :cond_3

    .line 9290
    :cond_1
    if-nez p4, :cond_4

    .line 9293
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 9295
    :goto_0
    return v4

    .line 9288
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/p;->isFocusedChildVisibleAfterScrolling(Landroid/support/v7/widget/RecyclerView;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9298
    :goto_1
    return v3

    .line 9289
    :cond_3
    if-nez v0, :cond_1

    goto :goto_1

    .line 9291
    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 7262
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 7265
    :goto_0
    return-void

    .line 7263
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 7789
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0

    .prologue
    .line 7839
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 7806
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0

    .prologue
    .line 7382
    iput-boolean p1, p0, Landroid/support/v7/widget/p;->mAutoMeasure:Z

    .line 7383
    return-void
.end method

.method setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 10001
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10002
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10000
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/p;->setMeasureSpecs(II)V

    .line 10004
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mWidth:I

    .line 7174
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mWidthMode:I

    .line 7175
    iget v0, p0, Landroid/support/v7/widget/p;->mWidthMode:I

    if-eqz v0, :cond_2

    .line 7179
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mHeight:I

    .line 7180
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mHeightMode:I

    .line 7181
    iget v0, p0, Landroid/support/v7/widget/p;->mHeightMode:I

    if-eqz v0, :cond_3

    .line 7184
    :cond_1
    :goto_1
    return-void

    .line 7175
    :cond_2
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_0

    .line 7176
    iput v1, p0, Landroid/support/v7/widget/p;->mWidth:I

    goto :goto_0

    .line 7181
    :cond_3
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_1

    .line 7182
    iput v1, p0, Landroid/support/v7/widget/p;->mHeight:I

    goto :goto_1
.end method

.method public setMeasuredDimension(II)V
    .locals 1

    .prologue
    .line 9627
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9628
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 3

    .prologue
    .line 7251
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 7252
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 7253
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/p;->chooseSize(III)I

    move-result v0

    .line 7254
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/p;->chooseSize(III)I

    move-result v1

    .line 7255
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/p;->setMeasuredDimension(II)V

    .line 7256
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 8

    .prologue
    const v2, 0x7fffffff

    const/4 v0, 0x0

    const/high16 v3, -0x80000000

    .line 7200
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v5

    .line 7201
    if-eqz v5, :cond_0

    move v4, v0

    move v1, v3

    move v0, v2

    .line 7210
    :goto_0
    if-lt v4, v5, :cond_1

    .line 7227
    iget-object v4, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 7228
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/p;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 7229
    return-void

    .line 7202
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 7203
    return-void

    .line 7211
    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7212
    iget-object v7, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7213
    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/p;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7214
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-lt v6, v0, :cond_2

    .line 7217
    :goto_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-gt v6, v1, :cond_3

    .line 7220
    :goto_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-lt v6, v2, :cond_4

    .line 7223
    :goto_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v3, :cond_5

    .line 7210
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7215
    :cond_2
    iget v0, v7, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 7218
    :cond_3
    iget v1, v7, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 7221
    :cond_4
    iget v2, v7, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 7224
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

    .line 7157
    if-eqz p1, :cond_0

    .line 7163
    iput-object p1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7164
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iput-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    .line 7165
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mWidth:I

    .line 7166
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/p;->mHeight:I

    .line 7168
    :goto_0
    iput v2, p0, Landroid/support/v7/widget/p;->mWidthMode:I

    .line 7169
    iput v2, p0, Landroid/support/v7/widget/p;->mHeightMode:I

    .line 7170
    return-void

    .line 7158
    :cond_0
    iput-object v0, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7159
    iput-object v0, p0, Landroid/support/v7/widget/p;->mChildHelper:Landroid/support/v7/widget/A;

    .line 7160
    iput v1, p0, Landroid/support/v7/widget/p;->mWidth:I

    .line 7161
    iput v1, p0, Landroid/support/v7/widget/p;->mHeight:I

    goto :goto_0
.end method

.method shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/i;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8683
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8686
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 8683
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/p;->mMeasurementCacheEnabled:Z

    if-eqz v1, :cond_0

    .line 8685
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p4, Landroid/support/v7/widget/i;->width:I

    invoke-static {v1, p2, v2}, Landroid/support/v7/widget/p;->isMeasurementUpToDate(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8686
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
    .line 10017
    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/i;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8669
    iget-boolean v1, p0, Landroid/support/v7/widget/p;->mMeasurementCacheEnabled:Z

    if-nez v1, :cond_1

    .line 8671
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 8670
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p4, Landroid/support/v7/widget/i;->width:I

    invoke-static {v1, p2, v2}, Landroid/support/v7/widget/p;->isMeasurementUpToDate(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8671
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
    .line 7852
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7853
    return-void
.end method

.method public startSmoothScroll(Landroid/support/v7/widget/g;)V
    .locals 2

    .prologue
    .line 7861
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-nez v0, :cond_1

    .line 7865
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    .line 7866
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/g;->XX(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/p;)V

    .line 7867
    return-void

    .line 7861
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    .line 7862
    invoke-virtual {v0}, Landroid/support/v7/widget/g;->XY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7863
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v0}, Landroid/support/v7/widget/g;->stop()V

    goto :goto_0
.end method

.method stopSmoothScroller()V
    .locals 1

    .prologue
    .line 9663
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    if-nez v0, :cond_0

    .line 9666
    :goto_0
    return-void

    .line 9664
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    invoke-virtual {v0}, Landroid/support/v7/widget/g;->stop()V

    goto :goto_0
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 7418
    const/4 v0, 0x0

    return v0
.end method
