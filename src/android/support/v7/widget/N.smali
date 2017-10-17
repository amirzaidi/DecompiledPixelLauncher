.class public Landroid/support/v7/widget/N;
.super Landroid/support/v7/widget/p;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/G;


# instance fields
.field final mAnchorInfo:Landroid/support/v7/widget/S;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroid/support/v7/widget/T;

.field private mLayoutState:Landroid/support/v7/widget/R;

.field mOrientation:I

.field mOrientationHelper:Landroid/support/v7/widget/U;

.field mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/N;-><init>(Landroid/content/Context;IZ)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Landroid/support/v7/widget/p;-><init>()V

    .line 97
    iput-boolean v0, p0, Landroid/support/v7/widget/N;->mReverseLayout:Z

    .line 104
    iput-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    .line 111
    iput-boolean v0, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    .line 117
    iput-boolean v1, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    .line 129
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 139
    new-instance v0, Landroid/support/v7/widget/S;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/S;-><init>(Landroid/support/v7/widget/N;)V

    iput-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    .line 144
    new-instance v0, Landroid/support/v7/widget/T;

    invoke-direct {v0}, Landroid/support/v7/widget/T;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/N;->mLayoutChunkResult:Landroid/support/v7/widget/T;

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/N;->mInitialPrefetchItemCount:I

    .line 167
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/N;->setOrientation(I)V

    .line 168
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/N;->setReverseLayout(Z)V

    .line 169
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->setAutoMeasureEnabled(Z)V

    .line 170
    return-void
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/e;)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1119
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1123
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 1124
    :goto_0
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    .line 1125
    :goto_1
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1123
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ac;->aci(Landroid/support/v7/widget/e;Landroid/support/v7/widget/U;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/p;Z)I

    move-result v0

    return v0

    .line 1120
    :cond_0
    return v3

    :cond_1
    move v0, v4

    .line 1123
    goto :goto_0

    :cond_2
    move v3, v4

    .line 1124
    goto :goto_1
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1108
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1112
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 1113
    :goto_0
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    .line 1114
    :goto_1
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1112
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ac;->ach(Landroid/support/v7/widget/e;Landroid/support/v7/widget/U;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/p;ZZ)I

    move-result v0

    return v0

    .line 1109
    :cond_0
    return v3

    :cond_1
    move v0, v4

    .line 1112
    goto :goto_0

    :cond_2
    move v3, v4

    .line 1113
    goto :goto_1
.end method

.method private computeScrollRange(Landroid/support/v7/widget/e;)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1130
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1134
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 1135
    :goto_0
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    .line 1136
    :goto_1
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1134
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ac;->acg(Landroid/support/v7/widget/e;Landroid/support/v7/widget/U;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/p;Z)I

    move-result v0

    return v0

    .line 1131
    :cond_0
    return v3

    :cond_1
    move v0, v4

    .line 1134
    goto :goto_0

    :cond_2
    move v3, v4

    .line 1135
    goto :goto_1
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1829
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/N;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1774
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/N;->findReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1730
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1734
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1731
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1712
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1716
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1713
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1834
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/N;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1778
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v5

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/N;->findReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1815
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1816
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1815
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1823
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1824
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1823
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToEnd(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1752
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1753
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findLastReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1752
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findFirstReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1769
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1770
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findFirstReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1769
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findLastReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 904
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abu()I

    move-result v0

    sub-int/2addr v0, p1

    .line 906
    if-gtz v0, :cond_0

    .line 909
    return v1

    .line 907
    :cond_0
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/N;->scrollBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    neg-int v0, v0

    .line 912
    add-int v1, p1, v0

    .line 913
    if-nez p4, :cond_2

    .line 921
    :cond_1
    return v0

    .line 915
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->abu()I

    move-result v2

    sub-int v1, v2, v1

    .line 916
    if-lez v1, :cond_1

    .line 917
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/U;->abv(I)V

    .line 918
    add-int/2addr v0, v1

    return v0
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 929
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abm()I

    move-result v0

    sub-int v0, p1, v0

    .line 931
    if-gtz v0, :cond_0

    .line 935
    return v1

    .line 933
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/N;->scrollBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    neg-int v0, v0

    .line 937
    add-int v1, p1, v0

    .line 938
    if-nez p4, :cond_2

    .line 946
    :cond_1
    return v0

    .line 940
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->abm()I

    move-result v2

    sub-int/2addr v1, v2

    .line 941
    if-lez v1, :cond_1

    .line 942
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/U;->abv(I)V

    .line 943
    sub-int/2addr v0, v1

    return v0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1700
    iget-boolean v1, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1690
    iget-boolean v1, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V
    .locals 9

    .prologue
    .line 698
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->XJ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    :cond_0
    return-void

    .line 698
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/e;->XM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 704
    invoke-virtual {p1}, Landroid/support/v7/widget/s;->YH()Ljava/util/List;

    move-result-object v5

    .line 705
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 707
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-lt v4, v6, :cond_2

    .line 726
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput-object v5, v0, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    .line 727
    if-gtz v3, :cond_7

    .line 736
    :goto_1
    if-gtz v2, :cond_8

    .line 744
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    .line 745
    return-void

    .line 708
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 709
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_3

    .line 712
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v1

    .line 713
    if-lt v1, v7, :cond_4

    const/4 v1, 0x0

    :goto_3
    iget-boolean v8, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-ne v1, v8, :cond_5

    const/4 v1, 0x1

    .line 715
    :goto_4
    const/4 v8, -0x1

    if-eq v1, v8, :cond_6

    .line 718
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/U;->abi(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    .line 707
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    move v1, v3

    .line 710
    goto :goto_5

    .line 713
    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, -0x1

    goto :goto_4

    .line 716
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/U;->abi(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    goto :goto_5

    .line 728
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 729
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(II)V

    .line 730
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v3, v0, Landroid/support/v7/widget/R;->RT:I

    .line 731
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/R;->RQ:I

    .line 732
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {v0}, Landroid/support/v7/widget/R;->aaS()V

    .line 733
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    goto :goto_1

    .line 737
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 738
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(II)V

    .line 739
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v2, v0, Landroid/support/v7/widget/R;->RT:I

    .line 740
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/R;->RQ:I

    .line 741
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {v0}, Landroid/support/v7/widget/R;->aaS()V

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    goto/16 :goto_2
.end method

.method private recycleByLayoutState(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;)V
    .locals 2

    .prologue
    .line 1477
    iget-boolean v0, p2, Landroid/support/v7/widget/R;->RN:Z

    if-nez v0, :cond_1

    .line 1478
    :cond_0
    return-void

    .line 1477
    :cond_1
    iget-boolean v0, p2, Landroid/support/v7/widget/R;->RV:Z

    if-nez v0, :cond_0

    .line 1480
    iget v0, p2, Landroid/support/v7/widget/R;->RS:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1483
    iget v0, p2, Landroid/support/v7/widget/R;->RU:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/N;->recycleViewsFromStart(Landroid/support/v7/widget/s;I)V

    .line 1485
    :goto_0
    return-void

    .line 1481
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/R;->RU:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/N;->recycleViewsFromEnd(Landroid/support/v7/widget/s;I)V

    goto :goto_0
.end method

.method private recycleChildren(Landroid/support/v7/widget/s;II)V
    .locals 1

    .prologue
    .line 1360
    if-eq p2, p3, :cond_1

    .line 1366
    if-gt p3, p2, :cond_2

    .line 1371
    :goto_0
    if-gt p2, p3, :cond_3

    .line 1375
    :cond_0
    return-void

    .line 1361
    :cond_1
    return-void

    .line 1367
    :cond_2
    add-int/lit8 v0, p3, -0x1

    :goto_1
    if-lt v0, p2, :cond_0

    .line 1368
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/N;->removeAndRecycleViewAt(ILandroid/support/v7/widget/s;)V

    .line 1367
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1372
    :cond_3
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/N;->removeAndRecycleViewAt(ILandroid/support/v7/widget/s;)V

    .line 1371
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method private recycleViewsFromEnd(Landroid/support/v7/widget/s;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1433
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v2

    .line 1434
    if-ltz p2, :cond_1

    .line 1441
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abn()I

    move-result v0

    sub-int v3, v0, p2

    .line 1442
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_2

    .line 1453
    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-gez v0, :cond_5

    .line 1463
    :cond_0
    return-void

    .line 1439
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1443
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1444
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1445
    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v5

    if-ge v5, v3, :cond_4

    .line 1448
    :cond_3
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/N;->recycleChildren(Landroid/support/v7/widget/s;II)V

    .line 1449
    return-void

    .line 1445
    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1446
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/U;->abe(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_3

    .line 1443
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1454
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1455
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_7

    .line 1458
    :cond_6
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/N;->recycleChildren(Landroid/support/v7/widget/s;II)V

    .line 1459
    return-void

    .line 1455
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1456
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/U;->abe(Landroid/view/View;)I

    move-result v1

    if-lt v1, v3, :cond_6

    .line 1453
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private recycleViewsFromStart(Landroid/support/v7/widget/s;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1388
    if-ltz p2, :cond_1

    .line 1397
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v2

    .line 1398
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 1409
    :goto_0
    if-lt v0, v2, :cond_5

    .line 1419
    :cond_0
    return-void

    .line 1393
    :cond_1
    return-void

    .line 1399
    :cond_2
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 1400
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1401
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_4

    .line 1404
    :cond_3
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/N;->recycleChildren(Landroid/support/v7/widget/s;II)V

    .line 1405
    return-void

    .line 1401
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1402
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/U;->abt(Landroid/view/View;)I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 1399
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1410
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1411
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v4

    if-le v4, p2, :cond_7

    .line 1414
    :cond_6
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/N;->recycleChildren(Landroid/support/v7/widget/s;II)V

    .line 1415
    return-void

    .line 1411
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1412
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/U;->abt(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_6

    .line 1409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resolveShouldLayoutReverse()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 352
    iget v2, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-ne v2, v1, :cond_1

    .line 353
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mReverseLayout:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    .line 357
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    iget-boolean v2, p0, Landroid/support/v7/widget/N;->mReverseLayout:Z

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 777
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 781
    if-nez v0, :cond_2

    .line 785
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    if-ne v0, v3, :cond_3

    .line 788
    iget-boolean v0, p3, Landroid/support/v7/widget/S;->RY:Z

    if-nez v0, :cond_4

    .line 790
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findReferenceChildClosestToStart(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    .line 791
    :goto_0
    if-nez v0, :cond_5

    .line 810
    return v1

    .line 778
    :cond_1
    return v1

    .line 781
    :cond_2
    invoke-virtual {p3, v0, p2}, Landroid/support/v7/widget/S;->aaZ(Landroid/view/View;Landroid/support/v7/widget/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 782
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/S;->abb(Landroid/view/View;)V

    .line 783
    return v2

    .line 786
    :cond_3
    return v1

    .line 789
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findReferenceChildClosestToEnd(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 792
    :cond_5
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/S;->aaY(Landroid/view/View;)V

    .line 795
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->XM()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 808
    :cond_6
    :goto_1
    return v2

    .line 795
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 797
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 798
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 799
    invoke-virtual {v4}, Landroid/support/v7/widget/U;->abu()I

    move-result v4

    if-lt v3, v4, :cond_9

    :cond_8
    move v0, v2

    .line 802
    :goto_2
    if-eqz v0, :cond_6

    .line 803
    iget-boolean v0, p3, Landroid/support/v7/widget/S;->RY:Z

    if-nez v0, :cond_a

    .line 804
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 805
    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abm()I

    move-result v0

    :goto_3
    iput v0, p3, Landroid/support/v7/widget/S;->RX:I

    goto :goto_1

    .line 799
    :cond_9
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 800
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 801
    invoke-virtual {v3}, Landroid/support/v7/widget/U;->abm()I

    move-result v3

    if-lt v0, v3, :cond_8

    move v0, v1

    goto :goto_2

    .line 803
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 804
    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abu()I

    move-result v0

    goto :goto_3
.end method

.method private updateAnchorFromPendingData(Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 818
    invoke-virtual {p1}, Landroid/support/v7/widget/e;->XM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    :cond_0
    return v1

    .line 818
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-eq v0, v5, :cond_0

    .line 822
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-gez v0, :cond_3

    .line 823
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    .line 824
    iput v4, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    .line 828
    return v1

    .line 822
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 833
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    iput v0, p2, Landroid/support/v7/widget/S;->mPosition:I

    .line 834
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_5

    .line 848
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    if-eq v0, v4, :cond_7

    .line 887
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/S;->RY:Z

    .line 889
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_10

    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abm()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/S;->RX:I

    .line 896
    :goto_0
    return v2

    .line 834
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->abd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 837
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sf:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/S;->RY:Z

    .line 838
    iget-boolean v0, p2, Landroid/support/v7/widget/S;->RY:Z

    if-nez v0, :cond_6

    .line 842
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abm()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Se:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/S;->RX:I

    .line 845
    :goto_1
    return v2

    .line 839
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abu()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Se:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/S;->RX:I

    goto :goto_1

    .line 849
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 850
    if-nez v0, :cond_8

    .line 876
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 882
    :goto_2
    invoke-virtual {p2}, Landroid/support/v7/widget/S;->aba()V

    .line 884
    :goto_3
    return v2

    .line 851
    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->abi(Landroid/view/View;)I

    move-result v3

    .line 852
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v4}, Landroid/support/v7/widget/U;->abj()I

    move-result v4

    if-gt v3, v4, :cond_9

    .line 857
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 858
    invoke-virtual {v4}, Landroid/support/v7/widget/U;->abm()I

    move-result v4

    sub-int/2addr v3, v4

    .line 859
    if-ltz v3, :cond_a

    .line 864
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abu()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 865
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 866
    if-ltz v1, :cond_b

    .line 871
    iget-boolean v1, p2, Landroid/support/v7/widget/S;->RY:Z

    if-nez v1, :cond_c

    .line 873
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 874
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v0

    :goto_4
    iput v0, p2, Landroid/support/v7/widget/S;->RX:I

    goto :goto_3

    .line 854
    :cond_9
    invoke-virtual {p2}, Landroid/support/v7/widget/S;->aba()V

    .line 855
    return v2

    .line 860
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abm()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/S;->RX:I

    .line 861
    iput-boolean v1, p2, Landroid/support/v7/widget/S;->RY:Z

    .line 862
    return v2

    .line 867
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abu()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/S;->RX:I

    .line 868
    iput-boolean v2, p2, Landroid/support/v7/widget/S;->RY:Z

    .line 869
    return v2

    .line 871
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 872
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 873
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abr()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    .line 878
    :cond_d
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 879
    iget v3, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-lt v3, v0, :cond_e

    move v0, v1

    :goto_5
    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_f

    :goto_6
    iput-boolean v1, p2, Landroid/support/v7/widget/S;->RY:Z

    goto :goto_2

    :cond_e
    move v0, v2

    goto :goto_5

    :cond_f
    move v1, v2

    goto :goto_6

    .line 890
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abu()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/S;->RX:I

    goto/16 :goto_0
.end method

.method private updateAnchorInfoForLayout(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 749
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/N;->updateAnchorFromPendingData(Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/N;->updateAnchorFromChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 765
    invoke-virtual {p3}, Landroid/support/v7/widget/S;->aba()V

    .line 766
    iget-boolean v1, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    if-nez v1, :cond_2

    :goto_0
    iput v0, p3, Landroid/support/v7/widget/S;->mPosition:I

    .line 767
    return-void

    .line 753
    :cond_0
    return-void

    .line 760
    :cond_1
    return-void

    .line 766
    :cond_2
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private updateLayoutState(IIZLandroid/support/v7/widget/e;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 1175
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0}, Landroid/support/v7/widget/N;->resolveIsInfinite()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/R;->RV:Z

    .line 1176
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/N;->getExtraLayoutSpace(Landroid/support/v7/widget/e;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/R;->RT:I

    .line 1177
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p1, v2, Landroid/support/v7/widget/R;->RS:I

    .line 1179
    if-eq p1, v0, :cond_0

    .line 1193
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 1194
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v4, v3, Landroid/support/v7/widget/R;->RT:I

    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v5}, Landroid/support/v7/widget/U;->abm()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/R;->RT:I

    .line 1195
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-boolean v4, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v4, :cond_2

    :goto_0
    iput v1, v3, Landroid/support/v7/widget/R;->RW:I

    .line 1197
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v3, Landroid/support/v7/widget/R;->RW:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/R;->RR:I

    .line 1198
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 1199
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1200
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abm()I

    move-result v1

    add-int/2addr v0, v1

    .line 1202
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p2, v1, Landroid/support/v7/widget/R;->RQ:I

    .line 1203
    if-nez p3, :cond_3

    .line 1206
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v0, v1, Landroid/support/v7/widget/R;->RU:I

    .line 1207
    return-void

    .line 1180
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v2, Landroid/support/v7/widget/R;->RT:I

    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v4}, Landroid/support/v7/widget/U;->abp()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/R;->RT:I

    .line 1182
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 1184
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-boolean v4, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v4, :cond_1

    :goto_3
    iput v0, v3, Landroid/support/v7/widget/R;->RW:I

    .line 1186
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v3, Landroid/support/v7/widget/R;->RW:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/R;->RR:I

    .line 1187
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 1189
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1190
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abu()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1184
    goto :goto_3

    :cond_2
    move v1, v0

    .line 1195
    goto :goto_0

    .line 1204
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v1, Landroid/support/v7/widget/R;->RQ:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/R;->RQ:I

    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 954
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->abu()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/R;->RQ:I

    .line 955
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/R;->RW:I

    .line 957
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p1, v0, Landroid/support/v7/widget/R;->RR:I

    .line 958
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v1, v0, Landroid/support/v7/widget/R;->RS:I

    .line 959
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p2, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 960
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/R;->RU:I

    .line 961
    return-void

    .line 955
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Landroid/support/v7/widget/S;)V
    .locals 2

    .prologue
    .line 950
    iget v0, p1, Landroid/support/v7/widget/S;->mPosition:I

    iget v1, p1, Landroid/support/v7/widget/S;->RX:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(II)V

    .line 951
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 968
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->abm()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/R;->RQ:I

    .line 969
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p1, v0, Landroid/support/v7/widget/R;->RR:I

    .line 970
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/R;->RW:I

    .line 972
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v1, v0, Landroid/support/v7/widget/R;->RS:I

    .line 973
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p2, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 974
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/R;->RU:I

    .line 976
    return-void

    .line 970
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Landroid/support/v7/widget/S;)V
    .locals 2

    .prologue
    .line 964
    iget v0, p1, Landroid/support/v7/widget/S;->mPosition:I

    iget v1, p1, Landroid/support/v7/widget/S;->RX:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(II)V

    .line 965
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 1349
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/p;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 289
    iget v1, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 297
    iget v1, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/e;Landroid/support/v7/widget/I;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1307
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v0, :cond_1

    .line 1308
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1310
    :cond_0
    return-void

    :cond_1
    move p2, p1

    .line 1307
    goto :goto_0

    .line 1308
    :cond_2
    if-eqz p2, :cond_0

    .line 1313
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1314
    if-gtz p2, :cond_3

    const/4 v0, -0x1

    .line 1315
    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1316
    invoke-direct {p0, v0, v2, v1, p3}, Landroid/support/v7/widget/N;->updateLayoutState(IIZLandroid/support/v7/widget/e;)V

    .line 1317
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p3, v0, p4}, Landroid/support/v7/widget/N;->collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/e;Landroid/support/v7/widget/R;Landroid/support/v7/widget/I;)V

    .line 1318
    return-void

    :cond_3
    move v0, v1

    .line 1314
    goto :goto_1
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/I;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1227
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_2

    .line 1232
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/N;->resolveShouldLayoutReverse()V

    .line 1233
    iget-boolean v4, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    .line 1234
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-eq v0, v2, :cond_3

    .line 1237
    iget v3, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    move v0, v4

    .line 1241
    :goto_0
    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    move v2, v1

    .line 1245
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/N;->mInitialPrefetchItemCount:I

    if-lt v2, v4, :cond_6

    .line 1253
    :cond_1
    return-void

    .line 1227
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->abd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sf:Z

    .line 1230
    iget-object v3, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

    goto :goto_0

    .line 1235
    :cond_3
    if-nez v4, :cond_4

    move v0, v1

    :goto_3
    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, p1, -0x1

    goto :goto_3

    :cond_5
    move v0, v2

    .line 1241
    goto :goto_1

    .line 1246
    :cond_6
    if-ltz v3, :cond_1

    if-ge v3, p1, :cond_1

    .line 1247
    invoke-interface {p2, v3, v1}, Landroid/support/v7/widget/I;->Zm(II)V

    .line 1251
    add-int/2addr v3, v0

    .line 1245
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/e;Landroid/support/v7/widget/R;Landroid/support/v7/widget/I;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1216
    iget v0, p2, Landroid/support/v7/widget/R;->RR:I

    .line 1217
    if-gez v0, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1218
    iget v1, p2, Landroid/support/v7/widget/R;->RU:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Landroid/support/v7/widget/I;->Zm(II)V

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollExtent(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1079
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollOffset(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1099
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollRange(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 456
    if-lt p1, v2, :cond_1

    :goto_0
    iget-boolean v2, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-ne v0, v2, :cond_2

    .line 457
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v0, :cond_3

    .line 460
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 453
    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    move v0, v1

    .line 456
    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 458
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1094
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollExtent(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollOffset(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollRange(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/high16 v0, -0x80000000

    const/4 v2, 0x1

    .line 1645
    sparse-switch p1, :sswitch_data_0

    .line 1678
    return v0

    .line 1647
    :sswitch_0
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v0, v2, :cond_0

    .line 1649
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1652
    return v1

    .line 1648
    :cond_0
    return v1

    .line 1650
    :cond_1
    return v2

    .line 1655
    :sswitch_1
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v0, v2, :cond_2

    .line 1657
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1660
    return v2

    .line 1656
    :cond_2
    return v2

    .line 1658
    :cond_3
    return v1

    .line 1663
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v3, v2, :cond_4

    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 1666
    :sswitch_3
    iget v1, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v1, v2, :cond_5

    :goto_1
    return v0

    :cond_5
    move v0, v2

    goto :goto_1

    .line 1669
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v2, :cond_6

    :goto_2
    return v0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 1672
    :sswitch_5
    iget v1, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v1, :cond_7

    :goto_3
    return v0

    :cond_7
    move v0, v2

    goto :goto_3

    .line 1645
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method createLayoutState()Landroid/support/v7/widget/R;
    .locals 1

    .prologue
    .line 997
    new-instance v0, Landroid/support/v7/widget/R;

    invoke-direct {v0}, Landroid/support/v7/widget/R;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    if-eqz v0, :cond_0

    .line 986
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    if-eqz v0, :cond_1

    .line 989
    :goto_1
    return-void

    .line 984
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->createLayoutState()Landroid/support/v7/widget/R;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    goto :goto_0

    .line 987
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/U;->abs(Landroid/support/v7/widget/p;I)Landroid/support/v7/widget/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    goto :goto_1
.end method

.method fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    .line 1501
    iget v1, p2, Landroid/support/v7/widget/R;->RQ:I

    .line 1502
    iget v0, p2, Landroid/support/v7/widget/R;->RU:I

    if-ne v0, v6, :cond_3

    .line 1509
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/R;->RQ:I

    iget v2, p2, Landroid/support/v7/widget/R;->RT:I

    add-int/2addr v0, v2

    .line 1510
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutChunkResult:Landroid/support/v7/widget/T;

    .line 1511
    :cond_0
    :goto_1
    iget-boolean v3, p2, Landroid/support/v7/widget/R;->RV:Z

    if-eqz v3, :cond_5

    :cond_1
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/R;->aaW(Landroid/support/v7/widget/e;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1551
    :cond_2
    :goto_2
    iget v0, p2, Landroid/support/v7/widget/R;->RQ:I

    sub-int v0, v1, v0

    return v0

    .line 1504
    :cond_3
    iget v0, p2, Landroid/support/v7/widget/R;->RQ:I

    if-ltz v0, :cond_4

    .line 1507
    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->recycleByLayoutState(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;)V

    goto :goto_0

    .line 1505
    :cond_4
    iget v0, p2, Landroid/support/v7/widget/R;->RU:I

    iget v2, p2, Landroid/support/v7/widget/R;->RQ:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/R;->RU:I

    goto :goto_3

    .line 1511
    :cond_5
    if-gtz v0, :cond_1

    goto :goto_2

    .line 1512
    :cond_6
    invoke-virtual {v2}, Landroid/support/v7/widget/T;->resetInternal()V

    .line 1516
    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/N;->layoutChunk(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/R;Landroid/support/v7/widget/T;)V

    .line 1520
    iget-boolean v3, v2, Landroid/support/v7/widget/T;->mFinished:Z

    if-nez v3, :cond_2

    .line 1523
    iget v3, p2, Landroid/support/v7/widget/R;->mOffset:I

    iget v4, v2, Landroid/support/v7/widget/T;->Sb:I

    iget v5, p2, Landroid/support/v7/widget/R;->RS:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/R;->mOffset:I

    .line 1530
    iget-boolean v3, v2, Landroid/support/v7/widget/T;->Sc:Z

    if-nez v3, :cond_8

    .line 1532
    :cond_7
    iget v3, p2, Landroid/support/v7/widget/R;->RQ:I

    iget v4, v2, Landroid/support/v7/widget/T;->Sb:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/R;->RQ:I

    .line 1534
    iget v3, v2, Landroid/support/v7/widget/T;->Sb:I

    sub-int/2addr v0, v3

    .line 1537
    :goto_4
    iget v3, p2, Landroid/support/v7/widget/R;->RU:I

    if-ne v3, v6, :cond_9

    .line 1544
    :goto_5
    if-eqz p4, :cond_0

    iget-boolean v3, v2, Landroid/support/v7/widget/T;->Sd:Z

    if-nez v3, :cond_2

    goto :goto_1

    .line 1530
    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v3, v3, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    if-nez v3, :cond_7

    .line 1531
    invoke-virtual {p3}, Landroid/support/v7/widget/e;->XM()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    .line 1538
    :cond_9
    iget v3, p2, Landroid/support/v7/widget/R;->RU:I

    iget v4, v2, Landroid/support/v7/widget/T;->Sb:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/R;->RU:I

    .line 1539
    iget v3, p2, Landroid/support/v7/widget/R;->RQ:I

    if-ltz v3, :cond_a

    .line 1542
    :goto_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->recycleByLayoutState(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;)V

    goto :goto_5

    .line 1540
    :cond_a
    iget v3, p2, Landroid/support/v7/widget/R;->RU:I

    iget v4, p2, Landroid/support/v7/widget/R;->RQ:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/R;->RU:I

    goto :goto_6
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1856
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1857
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1896
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 1897
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    :cond_0
    return v0
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1945
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1946
    if-gt p2, p1, :cond_0

    if-lt p2, p1, :cond_1

    .line 1947
    :goto_0
    if-eqz v0, :cond_2

    .line 1952
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1953
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abm()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 1959
    const/16 v1, 0x1041

    .line 1961
    const/16 v0, 0x1001

    .line 1964
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v2, :cond_4

    .line 1965
    iget-object v2, p0, Landroid/support/v7/widget/N;->mVerticalBoundCheck:Landroid/support/v7/widget/K;

    .line 1967
    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/K;->aaO(IIII)Landroid/view/View;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1946
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1948
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1954
    :cond_3
    const/16 v1, 0x4104

    .line 1956
    const/16 v0, 0x4004

    goto :goto_1

    .line 1964
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/N;->mHorizontalBoundCheck:Landroid/support/v7/widget/K;

    .line 1965
    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/K;->aaO(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 3

    .prologue
    const/16 v1, 0x140

    const/4 v0, 0x0

    .line 1923
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1926
    if-nez p3, :cond_0

    move v2, v1

    .line 1933
    :goto_0
    if-nez p4, :cond_1

    .line 1937
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v1, :cond_2

    .line 1938
    iget-object v1, p0, Landroid/support/v7/widget/N;->mVerticalBoundCheck:Landroid/support/v7/widget/K;

    .line 1940
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/K;->aaO(IIII)Landroid/view/View;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1927
    :cond_0
    const/16 v2, 0x6003

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1934
    goto :goto_1

    .line 1937
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/N;->mHorizontalBoundCheck:Landroid/support/v7/widget/K;

    .line 1938
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/K;->aaO(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method findReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1784
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1787
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abm()I

    move-result v5

    .line 1788
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abu()I

    move-result v6

    .line 1789
    if-gt p4, p3, :cond_0

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1790
    :goto_1
    if-ne p3, p4, :cond_1

    .line 1808
    if-nez v2, :cond_9

    :goto_2
    return-object v4

    .line 1789
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 1791
    :cond_1
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1792
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1793
    if-gez v0, :cond_3

    :cond_2
    move-object v0, v2

    move-object v3, v4

    .line 1790
    :goto_3
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1793
    :cond_3
    if-ge v0, p5, :cond_2

    .line 1794
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yf()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1798
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v0

    if-lt v0, v6, :cond_7

    .line 1800
    :cond_4
    if-eqz v2, :cond_8

    move-object v0, v2

    move-object v3, v4

    goto :goto_3

    .line 1795
    :cond_5
    if-eqz v4, :cond_6

    move-object v0, v2

    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    .line 1796
    goto :goto_3

    .line 1798
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1799
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 1804
    return-object v3

    :cond_8
    move-object v0, v3

    move-object v3, v4

    .line 1801
    goto :goto_3

    :cond_9
    move-object v4, v2

    .line 1808
    goto :goto_2
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    .line 398
    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 402
    sub-int v1, p1, v1

    .line 403
    if-gez v1, :cond_2

    .line 410
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/p;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 399
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 403
    :cond_2
    if-ge v1, v0, :cond_0

    .line 404
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 405
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 406
    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/i;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 194
    new-instance v0, Landroid/support/v7/widget/i;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/i;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/support/v7/widget/e;->XI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    return v1

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abj()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 979
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getLayoutDirection()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method layoutChunk(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/R;Landroid/support/v7/widget/T;)V
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1556
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/R;->aaT(Landroid/support/v7/widget/s;)Landroid/view/View;

    move-result-object v1

    .line 1557
    if-eqz v1, :cond_1

    .line 1566
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/i;

    .line 1567
    iget-object v0, p3, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1575
    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iget v0, p3, Landroid/support/v7/widget/R;->RS:I

    if-eq v0, v4, :cond_5

    move v0, v2

    :goto_0
    if-eq v3, v0, :cond_6

    .line 1579
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/N;->addDisappearingView(Landroid/view/View;I)V

    .line 1582
    :goto_1
    invoke-virtual {p0, v1, v2, v2}, Landroid/support/v7/widget/N;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1583
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->abi(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/T;->Sb:I

    .line 1585
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v0, v7, :cond_7

    .line 1601
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getPaddingTop()I

    move-result v3

    .line 1602
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->abh(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    .line 1604
    iget v0, p3, Landroid/support/v7/widget/R;->RS:I

    if-eq v0, v4, :cond_a

    .line 1608
    iget v0, p3, Landroid/support/v7/widget/R;->mOffset:I

    .line 1609
    iget v2, p3, Landroid/support/v7/widget/R;->mOffset:I

    iget v4, p4, Landroid/support/v7/widget/T;->Sb:I

    add-int/2addr v2, v4

    move v4, v2

    move v2, v0

    :goto_2
    move-object v0, p0

    .line 1614
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/N;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1621
    invoke-virtual {v6}, Landroid/support/v7/widget/i;->Yf()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1622
    :cond_0
    iput-boolean v7, p4, Landroid/support/v7/widget/T;->Sc:Z

    .line 1624
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/T;->Sd:Z

    .line 1625
    return-void

    .line 1563
    :cond_1
    iput-boolean v7, p4, Landroid/support/v7/widget/T;->mFinished:Z

    .line 1564
    return-void

    .line 1568
    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iget v0, p3, Landroid/support/v7/widget/R;->RS:I

    if-eq v0, v4, :cond_3

    move v0, v2

    :goto_4
    if-eq v3, v0, :cond_4

    .line 1572
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/N;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    move v0, v7

    .line 1568
    goto :goto_4

    .line 1570
    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    move v0, v7

    .line 1575
    goto :goto_0

    .line 1577
    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->addDisappearingView(Landroid/view/View;)V

    goto :goto_1

    .line 1586
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1590
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getPaddingLeft()I

    move-result v0

    .line 1591
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/U;->abh(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1593
    :goto_5
    iget v3, p3, Landroid/support/v7/widget/R;->RS:I

    if-eq v3, v4, :cond_9

    .line 1597
    iget v3, p3, Landroid/support/v7/widget/R;->mOffset:I

    .line 1598
    iget v4, p3, Landroid/support/v7/widget/R;->mOffset:I

    iget v5, p4, Landroid/support/v7/widget/T;->Sb:I

    add-int/2addr v5, v4

    move v4, v2

    move v2, v0

    goto :goto_2

    .line 1587
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 1588
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->abh(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_5

    .line 1594
    :cond_9
    iget v5, p3, Landroid/support/v7/widget/R;->mOffset:I

    .line 1595
    iget v3, p3, Landroid/support/v7/widget/R;->mOffset:I

    iget v4, p4, Landroid/support/v7/widget/T;->Sb:I

    sub-int/2addr v3, v4

    move v4, v2

    move v2, v0

    goto :goto_2

    .line 1605
    :cond_a
    iget v2, p3, Landroid/support/v7/widget/R;->mOffset:I

    .line 1606
    iget v0, p3, Landroid/support/v7/widget/R;->mOffset:I

    iget v4, p4, Landroid/support/v7/widget/T;->Sb:I

    sub-int/2addr v0, v4

    move v4, v2

    move v2, v0

    goto :goto_2

    .line 1621
    :cond_b
    invoke-virtual {v6}, Landroid/support/v7/widget/i;->Ye()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3
.end method

.method onAnchorReady(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;I)V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/p;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V

    .line 229
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mRecycleChildrenOnDetach:Z

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/N;->removeAndRecycleAllViews(Landroid/support/v7/widget/s;)V

    .line 231
    invoke-virtual {p2}, Landroid/support/v7/widget/s;->clear()V

    goto :goto_0
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1974
    invoke-direct {p0}, Landroid/support/v7/widget/N;->resolveShouldLayoutReverse()V

    .line 1975
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/N;->convertFocusDirectionToLayoutDirection(I)I

    move-result v2

    .line 1980
    if-eq v2, v5, :cond_1

    .line 1983
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1984
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1985
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abj()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eaaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1986
    invoke-direct {p0, v2, v0, v3, p4}, Landroid/support/v7/widget/N;->updateLayoutState(IIZLandroid/support/v7/widget/e;)V

    .line 1987
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v5, v0, Landroid/support/v7/widget/R;->RU:I

    .line 1988
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput-boolean v3, v0, Landroid/support/v7/widget/R;->RN:Z

    .line 1989
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, p4, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 1996
    if-eq v2, v6, :cond_2

    .line 1999
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/N;->findPartiallyOrCompletelyInvisibleChildClosestToEnd(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 2004
    :goto_0
    if-eq v2, v6, :cond_3

    .line 2007
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 2009
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2015
    return-object v1

    .line 1976
    :cond_0
    return-object v4

    .line 1981
    :cond_1
    return-object v4

    .line 1997
    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/N;->findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2005
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2010
    :cond_4
    if-eqz v1, :cond_5

    .line 2013
    return-object v0

    .line 2011
    :cond_5
    return-object v4
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/support/v7/widget/p;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 240
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 479
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_7

    .line 480
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_8

    .line 485
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_9

    .line 489
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 490
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput-boolean v1, v0, Landroid/support/v7/widget/R;->RN:Z

    .line 492
    invoke-direct {p0}, Landroid/support/v7/widget/N;->resolveShouldLayoutReverse()V

    .line 494
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 495
    iget-object v2, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iget-boolean v2, v2, Landroid/support/v7/widget/S;->RZ:Z

    if-nez v2, :cond_a

    .line 497
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-virtual {v0}, Landroid/support/v7/widget/S;->reset()V

    .line 498
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iget-boolean v2, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v0, Landroid/support/v7/widget/S;->RY:Z

    .line 500
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/N;->updateAnchorInfoForLayout(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)V

    .line 501
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iput-boolean v4, v0, Landroid/support/v7/widget/S;->RZ:Z

    .line 527
    :cond_3
    :goto_2
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/N;->getExtraLayoutSpace(Landroid/support/v7/widget/e;)I

    move-result v0

    .line 530
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v2, Landroid/support/v7/widget/R;->RM:I

    if-gez v2, :cond_d

    move v2, v1

    .line 537
    :goto_3
    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v5}, Landroid/support/v7/widget/U;->abm()I

    move-result v5

    add-int/2addr v0, v5

    .line 538
    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v5}, Landroid/support/v7/widget/U;->abp()I

    move-result v5

    add-int/2addr v2, v5

    .line 539
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->XM()Z

    move-result v5

    if-nez v5, :cond_e

    .line 567
    :cond_4
    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iget-boolean v5, v5, Landroid/support/v7/widget/S;->RY:Z

    if-nez v5, :cond_11

    .line 571
    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v5, :cond_5

    move v3, v4

    .line 575
    :cond_5
    :goto_5
    iget-object v5, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-virtual {p0, p1, p2, v5, v3}, Landroid/support/v7/widget/N;->onAnchorReady(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;I)V

    .line 576
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/N;->detachAndScrapAttachedViews(Landroid/support/v7/widget/s;)V

    .line 577
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0}, Landroid/support/v7/widget/N;->resolveIsInfinite()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/R;->RV:Z

    .line 578
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p2}, Landroid/support/v7/widget/e;->XM()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/R;->RP:Z

    .line 579
    iget-object v3, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iget-boolean v3, v3, Landroid/support/v7/widget/S;->RY:Z

    if-nez v3, :cond_12

    .line 606
    iget-object v3, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/S;)V

    .line 607
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v2, v3, Landroid/support/v7/widget/R;->RT:I

    .line 608
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 609
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v2, Landroid/support/v7/widget/R;->mOffset:I

    .line 610
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v3, Landroid/support/v7/widget/R;->RR:I

    .line 611
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->RQ:I

    if-gtz v5, :cond_14

    .line 615
    :goto_6
    iget-object v5, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(Landroid/support/v7/widget/S;)V

    .line 616
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v0, v5, Landroid/support/v7/widget/R;->RT:I

    .line 617
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v0, Landroid/support/v7/widget/R;->RR:I

    iget-object v6, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v6, v6, Landroid/support/v7/widget/R;->RW:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/support/v7/widget/R;->RR:I

    .line 618
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 619
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v0, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 621
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->RQ:I

    if-gtz v5, :cond_15

    .line 634
    :cond_6
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_16

    .line 654
    :goto_8
    invoke-direct {p0, p1, p2, v0, v2}, Landroid/support/v7/widget/N;->layoutForPredictiveAnimations(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V

    .line 655
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->XM()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 658
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-virtual {v0}, Landroid/support/v7/widget/S;->reset()V

    .line 660
    :goto_9
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/N;->mLastStackFromEnd:Z

    .line 664
    return-void

    .line 479
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    .line 481
    :cond_8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/N;->removeAndRecycleAllViews(Landroid/support/v7/widget/s;)V

    .line 482
    return-void

    .line 485
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->abd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    goto/16 :goto_1

    .line 495
    :cond_a
    iget v2, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v2, :cond_2

    .line 502
    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 503
    invoke-virtual {v5}, Landroid/support/v7/widget/U;->abu()I

    move-result v5

    if-lt v2, v5, :cond_c

    .line 517
    :cond_b
    iget-object v2, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/S;->abb(Landroid/view/View;)V

    goto/16 :goto_2

    .line 503
    :cond_c
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 504
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v2

    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 505
    invoke-virtual {v5}, Landroid/support/v7/widget/U;->abm()I

    move-result v5

    if-le v2, v5, :cond_b

    goto/16 :goto_2

    :cond_d
    move v2, v0

    move v0, v1

    .line 532
    goto/16 :goto_3

    .line 539
    :cond_e
    iget v5, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-eq v5, v3, :cond_4

    iget v5, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_4

    .line 544
    iget v5, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/N;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 545
    if-eqz v5, :cond_4

    .line 548
    iget-boolean v6, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v6, :cond_f

    .line 553
    iget-object v6, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 554
    invoke-virtual {v6}, Landroid/support/v7/widget/U;->abm()I

    move-result v6

    sub-int/2addr v5, v6

    .line 555
    iget v6, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    sub-int v5, v6, v5

    .line 557
    :goto_a
    if-gtz v5, :cond_10

    .line 560
    sub-int/2addr v2, v5

    goto/16 :goto_4

    .line 549
    :cond_f
    iget-object v6, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v6}, Landroid/support/v7/widget/U;->abu()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 550
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v5

    sub-int v5, v6, v5

    .line 551
    iget v6, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    sub-int/2addr v5, v6

    goto :goto_a

    .line 558
    :cond_10
    add-int/2addr v0, v5

    goto/16 :goto_4

    .line 568
    :cond_11
    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-eqz v5, :cond_5

    move v3, v4

    goto/16 :goto_5

    .line 581
    :cond_12
    iget-object v3, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(Landroid/support/v7/widget/S;)V

    .line 582
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v0, v3, Landroid/support/v7/widget/R;->RT:I

    .line 583
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 584
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v0, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 585
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v3, Landroid/support/v7/widget/R;->RR:I

    .line 586
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->RQ:I

    if-gtz v5, :cond_13

    .line 590
    :goto_b
    iget-object v5, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/S;)V

    .line 591
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v2, v5, Landroid/support/v7/widget/R;->RT:I

    .line 592
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v2, Landroid/support/v7/widget/R;->RR:I

    iget-object v6, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v6, v6, Landroid/support/v7/widget/R;->RW:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/support/v7/widget/R;->RR:I

    .line 593
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 594
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v2, Landroid/support/v7/widget/R;->mOffset:I

    .line 596
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->RQ:I

    if-lez v5, :cond_6

    .line 598
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->RQ:I

    .line 599
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(II)V

    .line 600
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v5, v0, Landroid/support/v7/widget/R;->RT:I

    .line 601
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v0, v0, Landroid/support/v7/widget/R;->mOffset:I

    goto/16 :goto_7

    .line 587
    :cond_13
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->RQ:I

    add-int/2addr v2, v5

    goto :goto_b

    .line 612
    :cond_14
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->RQ:I

    add-int/2addr v0, v5

    goto/16 :goto_6

    .line 622
    :cond_15
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->RQ:I

    .line 624
    invoke-direct {p0, v3, v2}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(II)V

    .line 625
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v5, v2, Landroid/support/v7/widget/R;->RT:I

    .line 626
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 627
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v2, Landroid/support/v7/widget/R;->mOffset:I

    goto/16 :goto_7

    .line 638
    :cond_16
    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    xor-int/2addr v3, v5

    if-nez v3, :cond_17

    .line 646
    invoke-direct {p0, v0, p1, p2, v4}, Landroid/support/v7/widget/N;->fixLayoutStartGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I

    move-result v3

    .line 647
    add-int/2addr v0, v3

    .line 648
    add-int/2addr v2, v3

    .line 649
    invoke-direct {p0, v2, p1, p2, v1}, Landroid/support/v7/widget/N;->fixLayoutEndGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I

    move-result v1

    .line 650
    add-int/2addr v0, v1

    .line 651
    add-int/2addr v2, v1

    goto/16 :goto_8

    .line 639
    :cond_17
    invoke-direct {p0, v2, p1, p2, v4}, Landroid/support/v7/widget/N;->fixLayoutEndGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I

    move-result v3

    .line 640
    add-int/2addr v0, v3

    .line 641
    add-int/2addr v2, v3

    .line 642
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/N;->fixLayoutStartGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I

    move-result v1

    .line 643
    add-int/2addr v0, v1

    .line 644
    add-int/2addr v2, v1

    goto/16 :goto_8

    .line 656
    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abw()V

    goto/16 :goto_9
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/e;)V
    .locals 1

    .prologue
    .line 668
    invoke-super {p0, p1}, Landroid/support/v7/widget/p;->onLayoutCompleted(Landroid/support/v7/widget/e;)V

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 670
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    .line 671
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-virtual {v0}, Landroid/support/v7/widget/S;->reset()V

    .line 673
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 273
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 274
    :cond_0
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->requestLayout()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 250
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 266
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->abc()V

    .line 268
    :goto_0
    return-object v0

    .line 247
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 251
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 252
    iget-boolean v1, p0, Landroid/support/v7/widget/N;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 253
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sf:Z

    .line 254
    if-nez v1, :cond_2

    .line 260
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 261
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

    .line 262
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 263
    invoke-virtual {v2}, Landroid/support/v7/widget/U;->abm()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Se:I

    goto :goto_0

    .line 255
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 256
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->abu()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 257
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Se:I

    .line 258
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Sg:I

    goto :goto_0
.end method

.method resolveIsInfinite()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1210
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abf()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return v0

    .line 1210
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1211
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abn()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method scrollBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1321
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1322
    :cond_0
    return v4

    .line 1321
    :cond_1
    if-eqz p1, :cond_0

    .line 1324
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput-boolean v1, v0, Landroid/support/v7/widget/R;->RN:Z

    .line 1325
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1326
    if-gtz p1, :cond_2

    const/4 v0, -0x1

    .line 1327
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1328
    invoke-direct {p0, v0, v2, v1, p3}, Landroid/support/v7/widget/N;->updateLayoutState(IIZLandroid/support/v7/widget/e;)V

    .line 1329
    iget-object v1, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v1, v1, Landroid/support/v7/widget/R;->RU:I

    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    .line 1330
    invoke-virtual {p0, p2, v3, p3, v4}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 1331
    if-ltz v1, :cond_3

    .line 1337
    if-gt v2, v1, :cond_4

    .line 1338
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->abv(I)V

    .line 1342
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p1, v0, Landroid/support/v7/widget/R;->RM:I

    .line 1343
    return p1

    :cond_2
    move v0, v1

    .line 1326
    goto :goto_0

    .line 1335
    :cond_3
    return v4

    .line 1337
    :cond_4
    mul-int p1, v0, v1

    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    .line 1059
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1062
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/N;->scrollBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    return v0

    .line 1060
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    .prologue
    .line 1016
    iput p1, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    .line 1017
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    .line 1018
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1021
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->requestLayout()V

    .line 1022
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->abc()V

    goto :goto_0
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    .prologue
    .line 1044
    iput p1, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    .line 1045
    iput p2, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    .line 1046
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1049
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->requestLayout()V

    .line 1050
    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->abc()V

    goto :goto_0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1071
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/N;->scrollBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    return v0

    .line 1072
    :cond_0
    return v1
.end method

.method public setOrientation(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 333
    if-nez p1, :cond_1

    .line 336
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 337
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq p1, v0, :cond_2

    .line 340
    iput p1, p0, Landroid/support/v7/widget/N;->mOrientation:I

    .line 341
    iput-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 342
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->requestLayout()V

    .line 343
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_2
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 385
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mReverseLayout:Z

    if-eq p1, v0, :cond_0

    .line 388
    iput-boolean p1, p0, Landroid/support/v7/widget/N;->mReverseLayout:Z

    .line 389
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->requestLayout()V

    .line 390
    return-void

    .line 386
    :cond_0
    return-void
.end method

.method shouldMeasureTwice()Z
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 1629
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getHeightMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return v0

    .line 1630
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getWidthMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1631
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->hasFlexibleChildInBothOrientations()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;I)V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Landroid/support/v7/widget/av;

    .line 445
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/av;-><init>(Landroid/content/Context;)V

    .line 446
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/av;->XV(I)V

    .line 447
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->startSmoothScroll(Landroid/support/v7/widget/g;)V

    .line 448
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
