.class Landroid/support/v7/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/I;


# instance fields
.field Pv:I

.field Pw:I

.field Px:[I

.field mCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method Yj(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 76
    iput v0, p0, Landroid/support/v7/widget/y;->mCount:I

    .line 77
    iget-object v0, p0, Landroid/support/v7/widget/y;->Px:[I

    if-nez v0, :cond_1

    .line 81
    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    .line 82
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v1, :cond_2

    .line 105
    :cond_0
    :goto_1
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/y;->Px:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 82
    :cond_2
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/support/v7/widget/p;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    if-nez p2, :cond_4

    .line 93
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    :cond_3
    :goto_2
    iget v1, p0, Landroid/support/v7/widget/y;->mCount:I

    iget v2, v0, Landroid/support/v7/widget/p;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_0

    .line 100
    iget v1, p0, Landroid/support/v7/widget/y;->mCount:I

    iput v1, v0, Landroid/support/v7/widget/p;->mPrefetchMaxCountObserved:I

    .line 101
    iput-boolean p2, v0, Landroid/support/v7/widget/p;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 102
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->Xv()V

    goto :goto_1

    .line 88
    :cond_4
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v1}, Landroid/support/v7/widget/C;->Zn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/p;->collectInitialPrefetchPositions(ILandroid/support/v7/widget/I;)V

    goto :goto_2

    .line 94
    :cond_5
    iget v1, p0, Landroid/support/v7/widget/y;->Pv:I

    iget v2, p0, Landroid/support/v7/widget/y;->Pw:I

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v7/widget/p;->collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/e;Landroid/support/v7/widget/I;)V

    goto :goto_2
.end method

.method public Yk(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    if-ltz p1, :cond_0

    .line 113
    if-ltz p2, :cond_1

    .line 118
    iget v0, p0, Landroid/support/v7/widget/y;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    .line 119
    iget-object v1, p0, Landroid/support/v7/widget/y;->Px:[I

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Landroid/support/v7/widget/y;->Px:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 129
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/y;->Px:[I

    aput p1, v1, v0

    .line 130
    iget-object v1, p0, Landroid/support/v7/widget/y;->Px:[I

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    .line 132
    iget v0, p0, Landroid/support/v7/widget/y;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/y;->mCount:I

    .line 133
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Layout positions must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pixel distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/y;->Px:[I

    .line 121
    iget-object v1, p0, Landroid/support/v7/widget/y;->Px:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/y;->Px:[I

    .line 124
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v7/widget/y;->Px:[I

    .line 125
    iget-object v2, p0, Landroid/support/v7/widget/y;->Px:[I

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method Yl(II)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Landroid/support/v7/widget/y;->Pv:I

    .line 72
    iput p2, p0, Landroid/support/v7/widget/y;->Pw:I

    .line 73
    return-void
.end method

.method Ym(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/y;->Px:[I

    if-nez v0, :cond_1

    .line 142
    :cond_0
    return v1

    .line 137
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/y;->mCount:I

    mul-int/lit8 v2, v0, 0x2

    move v0, v1

    .line 138
    :goto_0
    if-ge v0, v2, :cond_0

    .line 139
    iget-object v3, p0, Landroid/support/v7/widget/y;->Px:[I

    aget v3, v3, v0

    if-eq v3, p1, :cond_2

    .line 138
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method Yn()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/widget/y;->Px:[I

    if-nez v0, :cond_0

    .line 152
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/y;->mCount:I

    .line 153
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/y;->Px:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0
.end method
