.class public abstract Landroid/support/v7/widget/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Q;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 940
    iget-object v0, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 942
    :goto_0
    if-le v1, v0, :cond_1

    .line 951
    add-int/lit8 v0, v1, -0x1

    .line 952
    if-gez v0, :cond_3

    .line 955
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 943
    :cond_1
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 944
    iget-object v3, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 945
    if-lt v3, p1, :cond_2

    .line 948
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 946
    :cond_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 952
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 953
    iget-object v1, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method getCachedSpanIndex(II)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 872
    iget-boolean v0, p0, Landroid/support/v7/widget/Q;->mCacheSpanIndices:Z

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 876
    if-ne v0, v1, :cond_1

    .line 879
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/Q;->getSpanIndex(II)I

    move-result v0

    .line 880
    iget-object v1, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 881
    return v0

    .line 873
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/Q;->getSpanIndex(II)I

    move-result v0

    return v0

    .line 877
    :cond_1
    return v0
.end method

.method public getSpanGroupIndex(II)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 971
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Q;->getSpanSize(I)I

    move-result v5

    move v4, v3

    move v0, v3

    move v1, v3

    .line 972
    :goto_0
    if-lt v4, p1, :cond_0

    .line 984
    add-int/2addr v1, v5

    if-gt v1, p2, :cond_3

    .line 987
    :goto_1
    return v0

    .line 973
    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/Q;->getSpanSize(I)I

    move-result v2

    .line 974
    add-int/2addr v1, v2

    .line 975
    if-eq v1, p2, :cond_1

    .line 978
    if-gt v1, p2, :cond_2

    .line 972
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 977
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_2

    .line 981
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    .line 985
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSpanIndex(II)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 908
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Q;->getSpanSize(I)I

    move-result v4

    .line 909
    if-eq v4, p2, :cond_1

    .line 915
    iget-boolean v0, p0, Landroid/support/v7/widget/Q;->mCacheSpanIndices:Z

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    move v3, v0

    move v0, v2

    .line 922
    :goto_1
    if-lt v3, p1, :cond_4

    .line 932
    add-int v2, v0, v4

    if-le v2, p2, :cond_7

    .line 935
    return v1

    .line 910
    :cond_1
    return v1

    .line 915
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 916
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Q;->findReferenceIndexFromCache(I)I

    move-result v0

    .line 917
    if-gez v0, :cond_3

    move v0, v1

    move v2, v1

    goto :goto_0

    .line 918
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Q;->getSpanSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 923
    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Q;->getSpanSize(I)I

    move-result v2

    .line 924
    add-int/2addr v0, v2

    .line 925
    if-eq v0, p2, :cond_5

    .line 927
    if-gt v0, p2, :cond_6

    .line 922
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 926
    goto :goto_2

    :cond_6
    move v0, v2

    .line 929
    goto :goto_2

    .line 933
    :cond_7
    return v0
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Landroid/support/v7/widget/Q;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 860
    return-void
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 0

    .prologue
    .line 851
    iput-boolean p1, p0, Landroid/support/v7/widget/Q;->mCacheSpanIndices:Z

    .line 852
    return-void
.end method
