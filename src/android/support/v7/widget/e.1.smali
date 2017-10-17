.class public Landroid/support/v7/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field QA:Z

.field private Qk:Landroid/util/SparseArray;

.field Ql:I

.field Qm:J

.field Qn:I

.field Qo:Z

.field private Qp:I

.field Qq:I

.field Qr:I

.field Qs:I

.field Qt:Z

.field Qu:I

.field Qv:Z

.field Qw:Z

.field Qx:I

.field Qy:I

.field Qz:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11658
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/e;->Qp:I

    .line 11669
    iput v1, p0, Landroid/support/v7/widget/e;->Qs:I

    .line 11675
    iput v1, p0, Landroid/support/v7/widget/e;->Ql:I

    .line 11687
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/e;->Qy:I

    .line 11693
    iput v1, p0, Landroid/support/v7/widget/e;->Qx:I

    .line 11695
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->Qv:Z

    .line 11697
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->Qt:Z

    .line 11699
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->Qo:Z

    .line 11701
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->QA:Z

    .line 11707
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->Qw:Z

    .line 11709
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->Qz:Z

    return-void
.end method

.method static synthetic XK(Landroid/support/v7/widget/e;I)I
    .locals 0

    .prologue
    .line 11643
    iput p1, p0, Landroid/support/v7/widget/e;->Qp:I

    return p1
.end method


# virtual methods
.method XH(I)V
    .locals 3

    .prologue
    .line 11649
    iget v0, p0, Landroid/support/v7/widget/e;->Qy:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 11654
    return-void

    .line 11650
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11651
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/e;->Qy:I

    .line 11652
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public XI()Z
    .locals 2

    .prologue
    .line 11861
    iget v0, p0, Landroid/support/v7/widget/e;->Qp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public XJ()Z
    .locals 1

    .prologue
    .line 11787
    iget-boolean v0, p0, Landroid/support/v7/widget/e;->Qz:Z

    return v0
.end method

.method XL(Landroid/support/v7/widget/q;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11746
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/e;->Qy:I

    .line 11747
    invoke-virtual {p1}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/e;->Qx:I

    .line 11748
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->Qt:Z

    .line 11749
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->Qo:Z

    .line 11750
    iput-boolean v1, p0, Landroid/support/v7/widget/e;->QA:Z

    .line 11751
    return-void
.end method

.method public XM()Z
    .locals 1

    .prologue
    .line 11776
    iget-boolean v0, p0, Landroid/support/v7/widget/e;->Qt:Z

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 11897
    iget-boolean v0, p0, Landroid/support/v7/widget/e;->Qt:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/e;->Qx:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/e;->Qs:I

    iget v1, p0, Landroid/support/v7/widget/e;->Ql:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/e;->Qp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/e;->Qk:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/e;->Qx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/e;->Qs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/e;->Ql:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/e;->Qv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/e;->Qt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/e;->Qw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/e;->Qz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
