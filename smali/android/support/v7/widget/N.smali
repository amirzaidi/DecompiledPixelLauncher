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

    .line 1102
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1106
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 1107
    :goto_0
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    .line 1108
    :goto_1
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1106
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ac;->abg(Landroid/support/v7/widget/e;Landroid/support/v7/widget/U;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/p;Z)I

    move-result v0

    return v0

    .line 1103
    :cond_0
    return v3

    :cond_1
    move v0, v4

    .line 1106
    goto :goto_0

    :cond_2
    move v3, v4

    .line 1107
    goto :goto_1
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1095
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 1096
    :goto_0
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    .line 1097
    :goto_1
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1095
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ac;->abf(Landroid/support/v7/widget/e;Landroid/support/v7/widget/U;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/p;ZZ)I

    move-result v0

    return v0

    .line 1092
    :cond_0
    return v3

    :cond_1
    move v0, v4

    .line 1095
    goto :goto_0

    :cond_2
    move v3, v4

    .line 1096
    goto :goto_1
.end method

.method private computeScrollRange(Landroid/support/v7/widget/e;)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1113
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1117
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 1118
    :goto_0
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    .line 1119
    :goto_1
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/N;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1117
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ac;->abe(Landroid/support/v7/widget/e;Landroid/support/v7/widget/U;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/p;Z)I

    move-result v0

    return v0

    .line 1114
    :cond_0
    return v3

    :cond_1
    move v0, v4

    .line 1117
    goto :goto_0

    :cond_2
    move v3, v4

    .line 1118
    goto :goto_1
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1811
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
    .line 1756
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

    .line 1712
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1716
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1713
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

    .line 1694
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1698
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1695
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
    .line 1816
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
    .line 1760
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
    .line 1797
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1798
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1797
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1805
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1806
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findFirstPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1805
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findLastPartiallyOrCompletelyInvisibleChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToEnd(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1734
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1735
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findLastReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1734
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findFirstReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1751
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    .line 1752
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findFirstReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1751
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findLastReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 887
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aas()I

    move-result v0

    sub-int/2addr v0, p1

    .line 889
    if-gtz v0, :cond_0

    .line 892
    return v1

    .line 890
    :cond_0
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/N;->scrollBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    neg-int v0, v0

    .line 895
    add-int v1, p1, v0

    .line 896
    if-nez p4, :cond_2

    .line 904
    :cond_1
    return v0

    .line 898
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->aas()I

    move-result v2

    sub-int v1, v2, v1

    .line 899
    if-lez v1, :cond_1

    .line 900
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/U;->aat(I)V

    .line 901
    add-int/2addr v0, v1

    return v0
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aak()I

    move-result v0

    sub-int v0, p1, v0

    .line 914
    if-gtz v0, :cond_0

    .line 918
    return v1

    .line 916
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/N;->scrollBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    neg-int v0, v0

    .line 920
    add-int v1, p1, v0

    .line 921
    if-nez p4, :cond_2

    .line 929
    :cond_1
    return v0

    .line 923
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->aak()I

    move-result v2

    sub-int/2addr v1, v2

    .line 924
    if-lez v1, :cond_1

    .line 925
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/U;->aat(I)V

    .line 926
    sub-int/2addr v0, v1

    return v0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1682
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

    .line 1672
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
    .line 681
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    :cond_0
    return-void

    .line 681
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 687
    invoke-virtual {p1}, Landroid/support/v7/widget/s;->XH()Ljava/util/List;

    move-result-object v5

    .line 688
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 690
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-lt v4, v6, :cond_2

    .line 709
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput-object v5, v0, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    .line 710
    if-gtz v3, :cond_7

    .line 719
    :goto_1
    if-gtz v2, :cond_8

    .line 727
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    .line 728
    return-void

    .line 691
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 692
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_3

    .line 695
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v1

    .line 696
    if-lt v1, v7, :cond_4

    const/4 v1, 0x0

    :goto_3
    iget-boolean v8, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-ne v1, v8, :cond_5

    const/4 v1, 0x1

    .line 698
    :goto_4
    const/4 v8, -0x1

    if-eq v1, v8, :cond_6

    .line 701
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/U;->aag(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    .line 690
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    move v1, v3

    .line 693
    goto :goto_5

    .line 696
    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, -0x1

    goto :goto_4

    .line 699
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/U;->aag(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    goto :goto_5

    .line 711
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 712
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(II)V

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v3, v0, Landroid/support/v7/widget/R;->Qm:I

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/R;->Qj:I

    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {v0}, Landroid/support/v7/widget/R;->ZQ()V

    .line 716
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    goto :goto_1

    .line 720
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 721
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(II)V

    .line 722
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v2, v0, Landroid/support/v7/widget/R;->Qm:I

    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/R;->Qj:I

    .line 724
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {v0}, Landroid/support/v7/widget/R;->ZQ()V

    .line 725
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    goto/16 :goto_2
.end method

.method private recycleByLayoutState(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;)V
    .locals 2

    .prologue
    .line 1459
    iget-boolean v0, p2, Landroid/support/v7/widget/R;->Qg:Z

    if-nez v0, :cond_1

    .line 1460
    :cond_0
    return-void

    .line 1459
    :cond_1
    iget-boolean v0, p2, Landroid/support/v7/widget/R;->Qo:Z

    if-nez v0, :cond_0

    .line 1462
    iget v0, p2, Landroid/support/v7/widget/R;->Ql:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1465
    iget v0, p2, Landroid/support/v7/widget/R;->Qn:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/N;->recycleViewsFromStart(Landroid/support/v7/widget/s;I)V

    .line 1467
    :goto_0
    return-void

    .line 1463
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/R;->Qn:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/N;->recycleViewsFromEnd(Landroid/support/v7/widget/s;I)V

    goto :goto_0
.end method

.method private recycleChildren(Landroid/support/v7/widget/s;II)V
    .locals 1

    .prologue
    .line 1342
    if-eq p2, p3, :cond_1

    .line 1348
    if-gt p3, p2, :cond_2

    .line 1353
    :goto_0
    if-gt p2, p3, :cond_3

    .line 1357
    :cond_0
    return-void

    .line 1343
    :cond_1
    return-void

    .line 1349
    :cond_2
    add-int/lit8 v0, p3, -0x1

    :goto_1
    if-lt v0, p2, :cond_0

    .line 1350
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/N;->removeAndRecycleViewAt(ILandroid/support/v7/widget/s;)V

    .line 1349
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1354
    :cond_3
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/N;->removeAndRecycleViewAt(ILandroid/support/v7/widget/s;)V

    .line 1353
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method private recycleViewsFromEnd(Landroid/support/v7/widget/s;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1415
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v2

    .line 1416
    if-ltz p2, :cond_1

    .line 1423
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aal()I

    move-result v0

    sub-int v3, v0, p2

    .line 1424
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_2

    .line 1435
    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-gez v0, :cond_5

    .line 1445
    :cond_0
    return-void

    .line 1421
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1425
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1426
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1427
    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v5

    if-ge v5, v3, :cond_4

    .line 1430
    :cond_3
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/N;->recycleChildren(Landroid/support/v7/widget/s;II)V

    .line 1431
    return-void

    .line 1427
    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1428
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/U;->aac(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_3

    .line 1425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1436
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1437
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_7

    .line 1440
    :cond_6
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/N;->recycleChildren(Landroid/support/v7/widget/s;II)V

    .line 1441
    return-void

    .line 1437
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1438
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/U;->aac(Landroid/view/View;)I

    move-result v1

    if-lt v1, v3, :cond_6

    .line 1435
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private recycleViewsFromStart(Landroid/support/v7/widget/s;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1370
    if-ltz p2, :cond_1

    .line 1379
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v2

    .line 1380
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_2

    move v0, v1

    .line 1391
    :goto_0
    if-lt v0, v2, :cond_5

    .line 1401
    :cond_0
    return-void

    .line 1375
    :cond_1
    return-void

    .line 1381
    :cond_2
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 1382
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1383
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_4

    .line 1386
    :cond_3
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/N;->recycleChildren(Landroid/support/v7/widget/s;II)V

    .line 1387
    return-void

    .line 1383
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1384
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/U;->aar(Landroid/view/View;)I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 1381
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1392
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1393
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v4

    if-le v4, p2, :cond_7

    .line 1396
    :cond_6
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/N;->recycleChildren(Landroid/support/v7/widget/s;II)V

    .line 1397
    return-void

    .line 1393
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1394
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/U;->aar(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_6

    .line 1391
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

    .line 760
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 764
    if-nez v0, :cond_2

    .line 768
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    if-ne v0, v3, :cond_3

    .line 771
    iget-boolean v0, p3, Landroid/support/v7/widget/S;->Qr:Z

    if-nez v0, :cond_4

    .line 773
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findReferenceChildClosestToStart(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    .line 774
    :goto_0
    if-nez v0, :cond_5

    .line 793
    return v1

    .line 761
    :cond_1
    return v1

    .line 764
    :cond_2
    invoke-virtual {p3, v0, p2}, Landroid/support/v7/widget/S;->ZX(Landroid/view/View;Landroid/support/v7/widget/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/S;->ZZ(Landroid/view/View;)V

    .line 766
    return v2

    .line 769
    :cond_3
    return v1

    .line 772
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->findReferenceChildClosestToEnd(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 775
    :cond_5
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/S;->ZW(Landroid/view/View;)V

    .line 778
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 791
    :cond_6
    :goto_1
    return v2

    .line 778
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 780
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 781
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 782
    invoke-virtual {v4}, Landroid/support/v7/widget/U;->aas()I

    move-result v4

    if-lt v3, v4, :cond_9

    :cond_8
    move v0, v2

    .line 785
    :goto_2
    if-eqz v0, :cond_6

    .line 786
    iget-boolean v0, p3, Landroid/support/v7/widget/S;->Qr:Z

    if-nez v0, :cond_a

    .line 787
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 788
    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aak()I

    move-result v0

    :goto_3
    iput v0, p3, Landroid/support/v7/widget/S;->Qq:I

    goto :goto_1

    .line 782
    :cond_9
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 783
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 784
    invoke-virtual {v3}, Landroid/support/v7/widget/U;->aak()I

    move-result v3

    if-lt v0, v3, :cond_8

    move v0, v1

    goto :goto_2

    .line 786
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 787
    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aas()I

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

    .line 801
    invoke-virtual {p1}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    return v1

    .line 801
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-eq v0, v5, :cond_0

    .line 805
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-gez v0, :cond_3

    .line 806
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    .line 807
    iput v4, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    .line 811
    return v1

    .line 805
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 816
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    iput v0, p2, Landroid/support/v7/widget/S;->mPosition:I

    .line 817
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_5

    .line 831
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    if-eq v0, v4, :cond_7

    .line 870
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/S;->Qr:Z

    .line 872
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_10

    .line 876
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aak()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/S;->Qq:I

    .line 879
    :goto_0
    return v2

    .line 817
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->aab()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qy:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/S;->Qr:Z

    .line 821
    iget-boolean v0, p2, Landroid/support/v7/widget/S;->Qr:Z

    if-nez v0, :cond_6

    .line 825
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aak()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qx:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/S;->Qq:I

    .line 828
    :goto_1
    return v2

    .line 822
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aas()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qx:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/S;->Qq:I

    goto :goto_1

    .line 832
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 833
    if-nez v0, :cond_8

    .line 859
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 865
    :goto_2
    invoke-virtual {p2}, Landroid/support/v7/widget/S;->ZY()V

    .line 867
    :goto_3
    return v2

    .line 834
    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->aag(Landroid/view/View;)I

    move-result v3

    .line 835
    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v4}, Landroid/support/v7/widget/U;->aah()I

    move-result v4

    if-gt v3, v4, :cond_9

    .line 840
    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 841
    invoke-virtual {v4}, Landroid/support/v7/widget/U;->aak()I

    move-result v4

    sub-int/2addr v3, v4

    .line 842
    if-ltz v3, :cond_a

    .line 847
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aas()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 848
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 849
    if-ltz v1, :cond_b

    .line 854
    iget-boolean v1, p2, Landroid/support/v7/widget/S;->Qr:Z

    if-nez v1, :cond_c

    .line 856
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 857
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v0

    :goto_4
    iput v0, p2, Landroid/support/v7/widget/S;->Qq:I

    goto :goto_3

    .line 837
    :cond_9
    invoke-virtual {p2}, Landroid/support/v7/widget/S;->ZY()V

    .line 838
    return v2

    .line 843
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aak()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/S;->Qq:I

    .line 844
    iput-boolean v1, p2, Landroid/support/v7/widget/S;->Qr:Z

    .line 845
    return v2

    .line 850
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aas()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/S;->Qq:I

    .line 851
    iput-boolean v2, p2, Landroid/support/v7/widget/S;->Qr:Z

    .line 852
    return v2

    .line 854
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 855
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 856
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aap()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    .line 861
    :cond_d
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 862
    iget v3, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-lt v3, v0, :cond_e

    move v0, v1

    :goto_5
    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_f

    :goto_6
    iput-boolean v1, p2, Landroid/support/v7/widget/S;->Qr:Z

    goto :goto_2

    :cond_e
    move v0, v2

    goto :goto_5

    :cond_f
    move v1, v2

    goto :goto_6

    .line 873
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aas()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/S;->Qq:I

    goto/16 :goto_0
.end method

.method private updateAnchorInfoForLayout(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/N;->updateAnchorFromPendingData(Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/N;->updateAnchorFromChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 748
    invoke-virtual {p3}, Landroid/support/v7/widget/S;->ZY()V

    .line 749
    iget-boolean v1, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    if-nez v1, :cond_2

    :goto_0
    iput v0, p3, Landroid/support/v7/widget/S;->mPosition:I

    .line 750
    return-void

    .line 736
    :cond_0
    return-void

    .line 743
    :cond_1
    return-void

    .line 749
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

    .line 1158
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0}, Landroid/support/v7/widget/N;->resolveIsInfinite()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/R;->Qo:Z

    .line 1159
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/N;->getExtraLayoutSpace(Landroid/support/v7/widget/e;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/R;->Qm:I

    .line 1160
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p1, v2, Landroid/support/v7/widget/R;->Ql:I

    .line 1162
    if-eq p1, v0, :cond_0

    .line 1176
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 1177
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v4, v3, Landroid/support/v7/widget/R;->Qm:I

    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v5}, Landroid/support/v7/widget/U;->aak()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/R;->Qm:I

    .line 1178
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-boolean v4, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v4, :cond_2

    :goto_0
    iput v1, v3, Landroid/support/v7/widget/R;->Qp:I

    .line 1180
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v3, Landroid/support/v7/widget/R;->Qp:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/R;->Qk:I

    .line 1181
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 1182
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1183
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aak()I

    move-result v1

    add-int/2addr v0, v1

    .line 1185
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p2, v1, Landroid/support/v7/widget/R;->Qj:I

    .line 1186
    if-nez p3, :cond_3

    .line 1189
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v0, v1, Landroid/support/v7/widget/R;->Qn:I

    .line 1190
    return-void

    .line 1163
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v2, Landroid/support/v7/widget/R;->Qm:I

    iget-object v4, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v4}, Landroid/support/v7/widget/U;->aan()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/R;->Qm:I

    .line 1165
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 1167
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-boolean v4, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v4, :cond_1

    :goto_3
    iput v0, v3, Landroid/support/v7/widget/R;->Qp:I

    .line 1169
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v3, Landroid/support/v7/widget/R;->Qp:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/R;->Qk:I

    .line 1170
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 1172
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1173
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aas()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1167
    goto :goto_3

    :cond_2
    move v1, v0

    .line 1178
    goto :goto_0

    .line 1187
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v1, Landroid/support/v7/widget/R;->Qj:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/R;->Qj:I

    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 937
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->aas()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/R;->Qj:I

    .line 938
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/R;->Qp:I

    .line 940
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p1, v0, Landroid/support/v7/widget/R;->Qk:I

    .line 941
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v1, v0, Landroid/support/v7/widget/R;->Ql:I

    .line 942
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p2, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 943
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/R;->Qn:I

    .line 944
    return-void

    .line 938
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Landroid/support/v7/widget/S;)V
    .locals 2

    .prologue
    .line 933
    iget v0, p1, Landroid/support/v7/widget/S;->mPosition:I

    iget v1, p1, Landroid/support/v7/widget/S;->Qq:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(II)V

    .line 934
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 951
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->aak()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/R;->Qj:I

    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p1, v0, Landroid/support/v7/widget/R;->Qk:I

    .line 953
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/R;->Qp:I

    .line 955
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v1, v0, Landroid/support/v7/widget/R;->Ql:I

    .line 956
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p2, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 957
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/R;->Qn:I

    .line 959
    return-void

    .line 953
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Landroid/support/v7/widget/S;)V
    .locals 2

    .prologue
    .line 947
    iget v0, p1, Landroid/support/v7/widget/S;->mPosition:I

    iget v1, p1, Landroid/support/v7/widget/S;->Qq:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(II)V

    .line 948
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1331
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

    .line 1290
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v0, :cond_1

    .line 1291
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1293
    :cond_0
    return-void

    :cond_1
    move p2, p1

    .line 1290
    goto :goto_0

    .line 1291
    :cond_2
    if-eqz p2, :cond_0

    .line 1296
    if-gtz p2, :cond_3

    const/4 v0, -0x1

    .line 1297
    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1298
    invoke-direct {p0, v0, v2, v1, p3}, Landroid/support/v7/widget/N;->updateLayoutState(IIZLandroid/support/v7/widget/e;)V

    .line 1299
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p3, v0, p4}, Landroid/support/v7/widget/N;->collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/e;Landroid/support/v7/widget/R;Landroid/support/v7/widget/I;)V

    .line 1300
    return-void

    :cond_3
    move v0, v1

    .line 1296
    goto :goto_1
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/I;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1210
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_2

    .line 1215
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/N;->resolveShouldLayoutReverse()V

    .line 1216
    iget-boolean v4, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    .line 1217
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-eq v0, v2, :cond_3

    .line 1220
    iget v3, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    move v0, v4

    .line 1224
    :goto_0
    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    move v2, v1

    .line 1228
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/N;->mInitialPrefetchItemCount:I

    if-lt v2, v4, :cond_6

    .line 1236
    :cond_1
    return-void

    .line 1210
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->aab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qy:Z

    .line 1213
    iget-object v3, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    goto :goto_0

    .line 1218
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

    .line 1224
    goto :goto_1

    .line 1229
    :cond_6
    if-ltz v3, :cond_1

    if-ge v3, p1, :cond_1

    .line 1230
    invoke-interface {p2, v3, v1}, Landroid/support/v7/widget/I;->Yk(II)V

    .line 1234
    add-int/2addr v3, v0

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/e;Landroid/support/v7/widget/R;Landroid/support/v7/widget/I;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1199
    iget v0, p2, Landroid/support/v7/widget/R;->Qk:I

    .line 1200
    if-gez v0, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1201
    iget v1, p2, Landroid/support/v7/widget/R;->Qn:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Landroid/support/v7/widget/I;->Yk(II)V

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollExtent(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1062
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollOffset(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1082
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
    .line 1077
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollExtent(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;->computeScrollOffset(Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 1087
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

    .line 1627
    sparse-switch p1, :sswitch_data_0

    .line 1660
    return v0

    .line 1629
    :sswitch_0
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v0, v2, :cond_0

    .line 1631
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1634
    return v1

    .line 1630
    :cond_0
    return v1

    .line 1632
    :cond_1
    return v2

    .line 1637
    :sswitch_1
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v0, v2, :cond_2

    .line 1639
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1642
    return v2

    .line 1638
    :cond_2
    return v2

    .line 1640
    :cond_3
    return v1

    .line 1645
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v3, v2, :cond_4

    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 1648
    :sswitch_3
    iget v1, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v1, v2, :cond_5

    :goto_1
    return v0

    :cond_5
    move v0, v2

    goto :goto_1

    .line 1651
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v2, :cond_6

    :goto_2
    return v0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 1654
    :sswitch_5
    iget v1, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v1, :cond_7

    :goto_3
    return v0

    :cond_7
    move v0, v2

    goto :goto_3

    .line 1627
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
    .line 980
    new-instance v0, Landroid/support/v7/widget/R;

    invoke-direct {v0}, Landroid/support/v7/widget/R;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    if-eqz v0, :cond_0

    .line 969
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    if-eqz v0, :cond_1

    .line 972
    :goto_1
    return-void

    .line 967
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->createLayoutState()Landroid/support/v7/widget/R;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    goto :goto_0

    .line 970
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/U;->aaq(Landroid/support/v7/widget/p;I)Landroid/support/v7/widget/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    goto :goto_1
.end method

.method fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    .line 1483
    iget v1, p2, Landroid/support/v7/widget/R;->Qj:I

    .line 1484
    iget v0, p2, Landroid/support/v7/widget/R;->Qn:I

    if-ne v0, v6, :cond_3

    .line 1491
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/R;->Qj:I

    iget v2, p2, Landroid/support/v7/widget/R;->Qm:I

    add-int/2addr v0, v2

    .line 1492
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutChunkResult:Landroid/support/v7/widget/T;

    .line 1493
    :cond_0
    :goto_1
    iget-boolean v3, p2, Landroid/support/v7/widget/R;->Qo:Z

    if-eqz v3, :cond_5

    :cond_1
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/R;->ZU(Landroid/support/v7/widget/e;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1533
    :cond_2
    :goto_2
    iget v0, p2, Landroid/support/v7/widget/R;->Qj:I

    sub-int v0, v1, v0

    return v0

    .line 1486
    :cond_3
    iget v0, p2, Landroid/support/v7/widget/R;->Qj:I

    if-ltz v0, :cond_4

    .line 1489
    :goto_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->recycleByLayoutState(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;)V

    goto :goto_0

    .line 1487
    :cond_4
    iget v0, p2, Landroid/support/v7/widget/R;->Qn:I

    iget v2, p2, Landroid/support/v7/widget/R;->Qj:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/R;->Qn:I

    goto :goto_3

    .line 1493
    :cond_5
    if-gtz v0, :cond_1

    goto :goto_2

    .line 1494
    :cond_6
    invoke-virtual {v2}, Landroid/support/v7/widget/T;->resetInternal()V

    .line 1498
    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/N;->layoutChunk(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/R;Landroid/support/v7/widget/T;)V

    .line 1502
    iget-boolean v3, v2, Landroid/support/v7/widget/T;->mFinished:Z

    if-nez v3, :cond_2

    .line 1505
    iget v3, p2, Landroid/support/v7/widget/R;->mOffset:I

    iget v4, v2, Landroid/support/v7/widget/T;->Qu:I

    iget v5, p2, Landroid/support/v7/widget/R;->Ql:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/R;->mOffset:I

    .line 1512
    iget-boolean v3, v2, Landroid/support/v7/widget/T;->Qv:Z

    if-nez v3, :cond_8

    .line 1514
    :cond_7
    iget v3, p2, Landroid/support/v7/widget/R;->Qj:I

    iget v4, v2, Landroid/support/v7/widget/T;->Qu:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/R;->Qj:I

    .line 1516
    iget v3, v2, Landroid/support/v7/widget/T;->Qu:I

    sub-int/2addr v0, v3

    .line 1519
    :goto_4
    iget v3, p2, Landroid/support/v7/widget/R;->Qn:I

    if-ne v3, v6, :cond_9

    .line 1526
    :goto_5
    if-eqz p4, :cond_0

    iget-boolean v3, v2, Landroid/support/v7/widget/T;->Qw:Z

    if-nez v3, :cond_2

    goto :goto_1

    .line 1512
    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget-object v3, v3, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    if-nez v3, :cond_7

    .line 1513
    invoke-virtual {p3}, Landroid/support/v7/widget/e;->WN()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    .line 1520
    :cond_9
    iget v3, p2, Landroid/support/v7/widget/R;->Qn:I

    iget v4, v2, Landroid/support/v7/widget/T;->Qu:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/R;->Qn:I

    .line 1521
    iget v3, p2, Landroid/support/v7/widget/R;->Qj:I

    if-ltz v3, :cond_a

    .line 1524
    :goto_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/N;->recycleByLayoutState(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;)V

    goto :goto_5

    .line 1522
    :cond_a
    iget v3, p2, Landroid/support/v7/widget/R;->Qn:I

    iget v4, p2, Landroid/support/v7/widget/R;->Qj:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/R;->Qn:I

    goto :goto_6
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1838
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1839
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

    .line 1878
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/N;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 1879
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

    .line 1927
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1928
    if-gt p2, p1, :cond_0

    if-lt p2, p1, :cond_1

    .line 1929
    :goto_0
    if-eqz v0, :cond_2

    .line 1934
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1935
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aak()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 1941
    const/16 v1, 0x1041

    .line 1943
    const/16 v0, 0x1001

    .line 1946
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v2, :cond_4

    .line 1947
    iget-object v2, p0, Landroid/support/v7/widget/N;->mVerticalBoundCheck:Landroid/support/v7/widget/K;

    .line 1949
    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/K;->ZM(IIII)Landroid/view/View;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1928
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1930
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1936
    :cond_3
    const/16 v1, 0x4104

    .line 1938
    const/16 v0, 0x4004

    goto :goto_1

    .line 1946
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/N;->mHorizontalBoundCheck:Landroid/support/v7/widget/K;

    .line 1947
    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/K;->ZM(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 3

    .prologue
    const/16 v1, 0x140

    const/4 v0, 0x0

    .line 1905
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1908
    if-nez p3, :cond_0

    move v2, v1

    .line 1915
    :goto_0
    if-nez p4, :cond_1

    .line 1919
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v1, :cond_2

    .line 1920
    iget-object v1, p0, Landroid/support/v7/widget/N;->mVerticalBoundCheck:Landroid/support/v7/widget/K;

    .line 1922
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/K;->ZM(IIII)Landroid/view/View;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1909
    :cond_0
    const/16 v2, 0x6003

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1916
    goto :goto_1

    .line 1919
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/N;->mHorizontalBoundCheck:Landroid/support/v7/widget/K;

    .line 1920
    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/K;->ZM(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method findReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1766
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1769
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aak()I

    move-result v5

    .line 1770
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aas()I

    move-result v6

    .line 1771
    if-gt p4, p3, :cond_0

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1772
    :goto_1
    if-ne p3, p4, :cond_1

    .line 1790
    if-nez v2, :cond_9

    :goto_2
    return-object v4

    .line 1771
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 1773
    :cond_1
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/N;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1774
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1775
    if-gez v0, :cond_3

    :cond_2
    move-object v0, v2

    move-object v3, v4

    .line 1772
    :goto_3
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1775
    :cond_3
    if-ge v0, p5, :cond_2

    .line 1776
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xf()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1780
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v0

    if-lt v0, v6, :cond_7

    .line 1782
    :cond_4
    if-eqz v2, :cond_8

    move-object v0, v2

    move-object v3, v4

    goto :goto_3

    .line 1777
    :cond_5
    if-eqz v4, :cond_6

    move-object v0, v2

    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    .line 1778
    goto :goto_3

    .line 1780
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1781
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 1786
    return-object v3

    :cond_8
    move-object v0, v3

    move-object v3, v4

    .line 1783
    goto :goto_3

    :cond_9
    move-object v4, v2

    .line 1790
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
    invoke-virtual {p1}, Landroid/support/v7/widget/e;->WK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    return v1

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aah()I

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

    .line 962
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

    .line 1538
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/R;->ZR(Landroid/support/v7/widget/s;)Landroid/view/View;

    move-result-object v1

    .line 1539
    if-eqz v1, :cond_1

    .line 1548
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/i;

    .line 1549
    iget-object v0, p3, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1557
    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iget v0, p3, Landroid/support/v7/widget/R;->Ql:I

    if-eq v0, v4, :cond_5

    move v0, v2

    :goto_0
    if-eq v3, v0, :cond_6

    .line 1561
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/N;->addDisappearingView(Landroid/view/View;I)V

    .line 1564
    :goto_1
    invoke-virtual {p0, v1, v2, v2}, Landroid/support/v7/widget/N;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1565
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->aag(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/T;->Qu:I

    .line 1567
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eq v0, v7, :cond_7

    .line 1583
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getPaddingTop()I

    move-result v3

    .line 1584
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->aaf(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    .line 1586
    iget v0, p3, Landroid/support/v7/widget/R;->Ql:I

    if-eq v0, v4, :cond_a

    .line 1590
    iget v0, p3, Landroid/support/v7/widget/R;->mOffset:I

    .line 1591
    iget v2, p3, Landroid/support/v7/widget/R;->mOffset:I

    iget v4, p4, Landroid/support/v7/widget/T;->Qu:I

    add-int/2addr v2, v4

    move v4, v2

    move v2, v0

    :goto_2
    move-object v0, p0

    .line 1596
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/N;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1603
    invoke-virtual {v6}, Landroid/support/v7/widget/i;->Xf()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1604
    :cond_0
    iput-boolean v7, p4, Landroid/support/v7/widget/T;->Qv:Z

    .line 1606
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/T;->Qw:Z

    .line 1607
    return-void

    .line 1545
    :cond_1
    iput-boolean v7, p4, Landroid/support/v7/widget/T;->mFinished:Z

    .line 1546
    return-void

    .line 1550
    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iget v0, p3, Landroid/support/v7/widget/R;->Ql:I

    if-eq v0, v4, :cond_3

    move v0, v2

    :goto_4
    if-eq v3, v0, :cond_4

    .line 1554
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/N;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    move v0, v7

    .line 1550
    goto :goto_4

    .line 1552
    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    move v0, v7

    .line 1557
    goto :goto_0

    .line 1559
    :cond_6
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->addDisappearingView(Landroid/view/View;)V

    goto :goto_1

    .line 1568
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1572
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getPaddingLeft()I

    move-result v0

    .line 1573
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/U;->aaf(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1575
    :goto_5
    iget v3, p3, Landroid/support/v7/widget/R;->Ql:I

    if-eq v3, v4, :cond_9

    .line 1579
    iget v3, p3, Landroid/support/v7/widget/R;->mOffset:I

    .line 1580
    iget v4, p3, Landroid/support/v7/widget/R;->mOffset:I

    iget v5, p4, Landroid/support/v7/widget/T;->Qu:I

    add-int/2addr v5, v4

    move v4, v2

    move v2, v0

    goto :goto_2

    .line 1569
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 1570
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->aaf(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_5

    .line 1576
    :cond_9
    iget v5, p3, Landroid/support/v7/widget/R;->mOffset:I

    .line 1577
    iget v3, p3, Landroid/support/v7/widget/R;->mOffset:I

    iget v4, p4, Landroid/support/v7/widget/T;->Qu:I

    sub-int/2addr v3, v4

    move v4, v2

    move v2, v0

    goto :goto_2

    .line 1587
    :cond_a
    iget v2, p3, Landroid/support/v7/widget/R;->mOffset:I

    .line 1588
    iget v0, p3, Landroid/support/v7/widget/R;->mOffset:I

    iget v4, p4, Landroid/support/v7/widget/T;->Qu:I

    sub-int/2addr v0, v4

    move v4, v2

    move v2, v0

    goto :goto_2

    .line 1603
    :cond_b
    invoke-virtual {v6}, Landroid/support/v7/widget/i;->Xe()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3
.end method

.method onAnchorReady(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;I)V
    .locals 0

    .prologue
    .line 669
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

    .line 1956
    invoke-direct {p0}, Landroid/support/v7/widget/N;->resolveShouldLayoutReverse()V

    .line 1957
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/N;->convertFocusDirectionToLayoutDirection(I)I

    move-result v2

    .line 1962
    if-eq v2, v5, :cond_1

    .line 1965
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1966
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1967
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aah()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eaaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1968
    invoke-direct {p0, v2, v0, v3, p4}, Landroid/support/v7/widget/N;->updateLayoutState(IIZLandroid/support/v7/widget/e;)V

    .line 1969
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v5, v0, Landroid/support/v7/widget/R;->Qn:I

    .line 1970
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput-boolean v3, v0, Landroid/support/v7/widget/R;->Qg:Z

    .line 1971
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, p4, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 1978
    if-eq v2, v6, :cond_2

    .line 1981
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/N;->findPartiallyOrCompletelyInvisibleChildClosestToEnd(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 1986
    :goto_0
    if-eq v2, v6, :cond_3

    .line 1989
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 1991
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1997
    return-object v1

    .line 1958
    :cond_0
    return-object v4

    .line 1963
    :cond_1
    return-object v4

    .line 1979
    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/N;->findPartiallyOrCompletelyInvisibleChildClosestToStart(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1987
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1992
    :cond_4
    if-eqz v1, :cond_5

    .line 1995
    return-object v0

    .line 1993
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

    if-eqz v0, :cond_6

    .line 480
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_7

    .line 485
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_8

    .line 489
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 490
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput-boolean v1, v0, Landroid/support/v7/widget/R;->Qg:Z

    .line 492
    invoke-direct {p0}, Landroid/support/v7/widget/N;->resolveShouldLayoutReverse()V

    .line 494
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iget-boolean v0, v0, Landroid/support/v7/widget/S;->Qs:Z

    if-nez v0, :cond_9

    .line 496
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-virtual {v0}, Landroid/support/v7/widget/S;->reset()V

    .line 497
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iget-boolean v2, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v0, Landroid/support/v7/widget/S;->Qr:Z

    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/N;->updateAnchorInfoForLayout(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;)V

    .line 500
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iput-boolean v4, v0, Landroid/support/v7/widget/S;->Qs:Z

    .line 510
    :goto_2
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/N;->getExtraLayoutSpace(Landroid/support/v7/widget/e;)I

    move-result v0

    .line 513
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v2, Landroid/support/v7/widget/R;->Qf:I

    if-gez v2, :cond_a

    move v2, v1

    .line 520
    :goto_3
    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v5}, Landroid/support/v7/widget/U;->aak()I

    move-result v5

    add-int/2addr v0, v5

    .line 521
    iget-object v5, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v5}, Landroid/support/v7/widget/U;->aan()I

    move-result v5

    add-int/2addr v2, v5

    .line 522
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v5

    if-nez v5, :cond_b

    .line 550
    :cond_3
    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iget-boolean v5, v5, Landroid/support/v7/widget/S;->Qr:Z

    if-nez v5, :cond_e

    .line 554
    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v5, :cond_4

    move v3, v4

    .line 558
    :cond_4
    :goto_5
    iget-object v5, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-virtual {p0, p1, p2, v5, v3}, Landroid/support/v7/widget/N;->onAnchorReady(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;I)V

    .line 559
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/N;->detachAndScrapAttachedViews(Landroid/support/v7/widget/s;)V

    .line 560
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0}, Landroid/support/v7/widget/N;->resolveIsInfinite()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/R;->Qo:Z

    .line 561
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/R;->Qi:Z

    .line 562
    iget-object v3, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    iget-boolean v3, v3, Landroid/support/v7/widget/S;->Qr:Z

    if-nez v3, :cond_f

    .line 589
    iget-object v3, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/S;)V

    .line 590
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v2, v3, Landroid/support/v7/widget/R;->Qm:I

    .line 591
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 592
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v2, Landroid/support/v7/widget/R;->mOffset:I

    .line 593
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v3, Landroid/support/v7/widget/R;->Qk:I

    .line 594
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->Qj:I

    if-gtz v5, :cond_11

    .line 598
    :goto_6
    iget-object v5, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(Landroid/support/v7/widget/S;)V

    .line 599
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v0, v5, Landroid/support/v7/widget/R;->Qm:I

    .line 600
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v0, Landroid/support/v7/widget/R;->Qk:I

    iget-object v6, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v6, v6, Landroid/support/v7/widget/R;->Qp:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/support/v7/widget/R;->Qk:I

    .line 601
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v0, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 604
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->Qj:I

    if-gtz v5, :cond_12

    .line 617
    :cond_5
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_13

    .line 637
    :goto_8
    invoke-direct {p0, p1, p2, v0, v2}, Landroid/support/v7/widget/N;->layoutForPredictiveAnimations(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V

    .line 638
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 641
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-virtual {v0}, Landroid/support/v7/widget/S;->reset()V

    .line 643
    :goto_9
    iget-boolean v0, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/N;->mLastStackFromEnd:Z

    .line 647
    return-void

    .line 479
    :cond_6
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    .line 481
    :cond_7
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/N;->removeAndRecycleAllViews(Landroid/support/v7/widget/s;)V

    .line 482
    return-void

    .line 485
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->aab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    goto/16 :goto_1

    .line 494
    :cond_9
    iget v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_a
    move v2, v0

    move v0, v1

    .line 515
    goto/16 :goto_3

    .line 522
    :cond_b
    iget v5, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    if-eq v5, v3, :cond_3

    iget v5, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_3

    .line 527
    iget v5, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/N;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 528
    if-eqz v5, :cond_3

    .line 531
    iget-boolean v6, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-nez v6, :cond_c

    .line 536
    iget-object v6, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 537
    invoke-virtual {v6}, Landroid/support/v7/widget/U;->aak()I

    move-result v6

    sub-int/2addr v5, v6

    .line 538
    iget v6, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    sub-int v5, v6, v5

    .line 540
    :goto_a
    if-gtz v5, :cond_d

    .line 543
    sub-int/2addr v2, v5

    goto/16 :goto_4

    .line 532
    :cond_c
    iget-object v6, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v6}, Landroid/support/v7/widget/U;->aas()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 533
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v5

    sub-int v5, v6, v5

    .line 534
    iget v6, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    sub-int/2addr v5, v6

    goto :goto_a

    .line 541
    :cond_d
    add-int/2addr v0, v5

    goto/16 :goto_4

    .line 551
    :cond_e
    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    if-eqz v5, :cond_4

    move v3, v4

    goto/16 :goto_5

    .line 564
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(Landroid/support/v7/widget/S;)V

    .line 565
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v0, v3, Landroid/support/v7/widget/R;->Qm:I

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 567
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v0, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 568
    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v3, v3, Landroid/support/v7/widget/R;->Qk:I

    .line 569
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->Qj:I

    if-gtz v5, :cond_10

    .line 573
    :goto_b
    iget-object v5, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/S;)V

    .line 574
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v2, v5, Landroid/support/v7/widget/R;->Qm:I

    .line 575
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v2, Landroid/support/v7/widget/R;->Qk:I

    iget-object v6, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v6, v6, Landroid/support/v7/widget/R;->Qp:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/support/v7/widget/R;->Qk:I

    .line 576
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 577
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v2, Landroid/support/v7/widget/R;->mOffset:I

    .line 579
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->Qj:I

    if-lez v5, :cond_5

    .line 581
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->Qj:I

    .line 582
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/N;->updateLayoutStateToFillStart(II)V

    .line 583
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v5, v0, Landroid/support/v7/widget/R;->Qm:I

    .line 584
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v0, v0, Landroid/support/v7/widget/R;->mOffset:I

    goto/16 :goto_7

    .line 570
    :cond_10
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->Qj:I

    add-int/2addr v2, v5

    goto :goto_b

    .line 595
    :cond_11
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->Qj:I

    add-int/2addr v0, v5

    goto/16 :goto_6

    .line 605
    :cond_12
    iget-object v5, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v5, v5, Landroid/support/v7/widget/R;->Qj:I

    .line 607
    invoke-direct {p0, v3, v2}, Landroid/support/v7/widget/N;->updateLayoutStateToFillEnd(II)V

    .line 608
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput v5, v2, Landroid/support/v7/widget/R;->Qm:I

    .line 609
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    .line 610
    iget-object v2, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v2, v2, Landroid/support/v7/widget/R;->mOffset:I

    goto/16 :goto_7

    .line 621
    :cond_13
    iget-boolean v3, p0, Landroid/support/v7/widget/N;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/N;->mStackFromEnd:Z

    xor-int/2addr v3, v5

    if-nez v3, :cond_14

    .line 629
    invoke-direct {p0, v0, p1, p2, v4}, Landroid/support/v7/widget/N;->fixLayoutStartGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I

    move-result v3

    .line 630
    add-int/2addr v0, v3

    .line 631
    add-int/2addr v2, v3

    .line 632
    invoke-direct {p0, v2, p1, p2, v1}, Landroid/support/v7/widget/N;->fixLayoutEndGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I

    move-result v1

    .line 633
    add-int/2addr v0, v1

    .line 634
    add-int/2addr v2, v1

    goto/16 :goto_8

    .line 622
    :cond_14
    invoke-direct {p0, v2, p1, p2, v4}, Landroid/support/v7/widget/N;->fixLayoutEndGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I

    move-result v3

    .line 623
    add-int/2addr v0, v3

    .line 624
    add-int/2addr v2, v3

    .line 625
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/N;->fixLayoutStartGap(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;Z)I

    move-result v1

    .line 626
    add-int/2addr v0, v1

    .line 627
    add-int/2addr v2, v1

    goto/16 :goto_8

    .line 639
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aau()V

    goto/16 :goto_9
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/e;)V
    .locals 1

    .prologue
    .line 651
    invoke-super {p0, p1}, Landroid/support/v7/widget/p;->onLayoutCompleted(Landroid/support/v7/widget/e;)V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 653
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    .line 654
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/N;->mAnchorInfo:Landroid/support/v7/widget/S;

    invoke-virtual {v0}, Landroid/support/v7/widget/S;->reset()V

    .line 656
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
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->aaa()V

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
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qy:Z

    .line 254
    if-nez v1, :cond_2

    .line 260
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 261
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    .line 262
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 263
    invoke-virtual {v2}, Landroid/support/v7/widget/U;->aak()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qx:I

    goto :goto_0

    .line 255
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/N;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 256
    iget-object v2, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->aas()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 257
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qx:I

    .line 258
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->Qz:I

    goto :goto_0
.end method

.method resolveIsInfinite()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1193
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aad()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return v0

    .line 1193
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 1194
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aal()I

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

    .line 1303
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    :cond_0
    return v4

    .line 1303
    :cond_1
    if-eqz p1, :cond_0

    .line 1306
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput-boolean v1, v0, Landroid/support/v7/widget/R;->Qg:Z

    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->ensureLayoutState()V

    .line 1308
    if-gtz p1, :cond_2

    const/4 v0, -0x1

    .line 1309
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1310
    invoke-direct {p0, v0, v2, v1, p3}, Landroid/support/v7/widget/N;->updateLayoutState(IIZLandroid/support/v7/widget/e;)V

    .line 1311
    iget-object v1, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iget v1, v1, Landroid/support/v7/widget/R;->Qn:I

    iget-object v3, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    .line 1312
    invoke-virtual {p0, p2, v3, p3, v4}, Landroid/support/v7/widget/N;->fill(Landroid/support/v7/widget/s;Landroid/support/v7/widget/R;Landroid/support/v7/widget/e;Z)I

    move-result v3

    add-int/2addr v1, v3

    .line 1313
    if-ltz v1, :cond_3

    .line 1319
    if-gt v2, v1, :cond_4

    .line 1320
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/U;->aat(I)V

    .line 1324
    iget-object v0, p0, Landroid/support/v7/widget/N;->mLayoutState:Landroid/support/v7/widget/R;

    iput p1, v0, Landroid/support/v7/widget/R;->Qf:I

    .line 1325
    return p1

    :cond_2
    move v0, v1

    .line 1308
    goto :goto_0

    .line 1317
    :cond_3
    return v4

    .line 1319
    :cond_4
    mul-int p1, v0, v1

    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    .line 1042
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1045
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/N;->scrollBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    return v0

    .line 1043
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    .prologue
    .line 999
    iput p1, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    .line 1000
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    .line 1001
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1004
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->requestLayout()V

    .line 1005
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->aaa()V

    goto :goto_0
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    .prologue
    .line 1027
    iput p1, p0, Landroid/support/v7/widget/N;->mPendingScrollPosition:I

    .line 1028
    iput p2, p0, Landroid/support/v7/widget/N;->mPendingScrollPositionOffset:I

    .line 1029
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1032
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->requestLayout()V

    .line 1033
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->aaa()V

    goto :goto_0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1054
    iget v0, p0, Landroid/support/v7/widget/N;->mOrientation:I

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/N;->scrollBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    return v0

    .line 1055
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

    .line 1611
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getHeightMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1613
    :cond_0
    :goto_0
    return v0

    .line 1612
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/N;->getWidthMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1613
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
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/av;->WW(I)V

    .line 447
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/N;->startSmoothScroll(Landroid/support/v7/widget/g;)V

    .line 448
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 2066
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
