.class final Lcom/android/launcher3/PagedView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PagedView;

.field final synthetic val$dragViewIndex:I

.field final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/PagedView;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iput p2, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1535
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1540
    iget v0, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    if-ge v0, v1, :cond_1

    move v1, v2

    .line 1541
    :goto_0
    iget v0, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    if-ge v0, v4, :cond_2

    .line 1542
    iget v0, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1543
    :goto_1
    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    iget v5, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    if-le v4, v5, :cond_3

    .line 1544
    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    add-int/lit8 v4, v4, -0x1

    :goto_2
    move v5, v0

    .line 1545
    :goto_3
    if-gt v5, v4, :cond_4

    .line 1546
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1550
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    iget-object v7, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v7, v0

    .line 1551
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    iget-object v8, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    add-int v9, v5, v1

    invoke-virtual {v8, v9}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v8

    add-int/2addr v8, v0

    .line 1555
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1556
    if-eqz v0, :cond_0

    .line 1557
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1560
    :cond_0
    sub-int v0, v7, v8

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1561
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v7, v9

    invoke-static {v6, v0, v7}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1562
    sget v7, Lcom/android/launcher3/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1563
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1564
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1545
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_1
    move v1, v3

    .line 1540
    goto :goto_0

    .line 1542
    :cond_2
    iget v0, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    goto :goto_1

    .line 1544
    :cond_3
    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    goto :goto_2

    .line 1567
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, v1, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->removeView(Landroid/view/View;)V

    .line 1568
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, v1, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/PagedView;->addView(Landroid/view/View;I)V

    .line 1569
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iput v2, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1570
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v0, v0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_5

    .line 1571
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v0, v0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    iget-object v1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setActiveMarker(I)V

    .line 1573
    :cond_5
    return-void
.end method
