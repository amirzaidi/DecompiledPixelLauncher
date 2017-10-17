.class public Landroid/support/v7/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private OG:Landroid/util/SparseArray;

.field OH:I

.field OI:J

.field OJ:I

.field OK:Z

.field private OL:I

.field OM:I

.field ON:I

.field OO:Z

.field OP:Z

.field OQ:Z

.field OR:I

.field OS:I

.field OT:Z

.field OU:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11612
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/e;->OL:I

    .line 11623
    iput v1, p0, Landroid/support/v7/widget/e;->ON:I

    .line 11629
    iput v1, p0, Landroid/support/v7/widget/e;->OH:I

    .line 11641
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/e;->OS:I

    .line 11647
    iput v1, p0, Landroid/support/v7/widget/e;->OR:I

    .line 11649
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->OP:Z

    .line 11651
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->OO:Z

    .line 11653
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->OK:Z

    .line 11655
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->OU:Z

    .line 11661
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->OQ:Z

    .line 11663
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->OT:Z

    return-void
.end method

.method static synthetic WO(Landroid/support/v7/widget/e;I)I
    .locals 0

    .prologue
    .line 11597
    iput p1, p0, Landroid/support/v7/widget/e;->OL:I

    return p1
.end method


# virtual methods
.method WJ(I)V
    .locals 3

    .prologue
    .line 11603
    iget v0, p0, Landroid/support/v7/widget/e;->OS:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 11608
    return-void

    .line 11604
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11605
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/e;->OS:I

    .line 11606
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public WK()Z
    .locals 2

    .prologue
    .line 11812
    iget v0, p0, Landroid/support/v7/widget/e;->OL:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public WL()Z
    .locals 1

    .prologue
    .line 11738
    iget-boolean v0, p0, Landroid/support/v7/widget/e;->OT:Z

    return v0
.end method

.method WM(Landroid/support/v7/widget/q;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11697
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/e;->OS:I

    .line 11698
    invoke-virtual {p1}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/e;->OR:I

    .line 11699
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->OO:Z

    .line 11700
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->OK:Z

    .line 11701
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->OU:Z

    .line 11702
    return-void
.end method

.method public WN()Z
    .locals 1

    .prologue
    .line 11727
    iget-boolean v0, p0, Landroid/support/v7/widget/e;->OO:Z

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 11848
    iget-boolean v0, p0, Landroid/support/v7/widget/e;->OO:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/e;->OR:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/e;->ON:I

    iget v1, p0, Landroid/support/v7/widget/e;->OH:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/e;->OL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/e;->OG:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/e;->OR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/e;->ON:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/e;->OH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/e;->OP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/e;->OO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/e;->OQ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/e;->OT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
