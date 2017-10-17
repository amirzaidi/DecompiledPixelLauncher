.class public abstract Landroid/support/v7/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private OA:J

.field private OB:J

.field private OC:J

.field private OD:Ljava/util/ArrayList;

.field private OE:Landroid/support/v7/widget/x;

.field private Oz:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 11942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11998
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/b;->OE:Landroid/support/v7/widget/x;

    .line 11999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/b;->OD:Ljava/util/ArrayList;

    .line 12002
    iput-wide v2, p0, Landroid/support/v7/widget/b;->OA:J

    .line 12003
    iput-wide v2, p0, Landroid/support/v7/widget/b;->Oz:J

    .line 12004
    iput-wide v4, p0, Landroid/support/v7/widget/b;->OB:J

    .line 12005
    iput-wide v4, p0, Landroid/support/v7/widget/b;->OC:J

    .line 12609
    return-void
.end method

.method static Wr(Landroid/support/v7/widget/j;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 12327
    invoke-static {p0}, Landroid/support/v7/widget/j;->access$1500(Landroid/support/v7/widget/j;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 12328
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12331
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 12338
    :cond_0
    :goto_0
    return v0

    .line 12329
    :cond_1
    const/4 v0, 0x4

    return v0

    .line 12332
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->getOldPosition()I

    move-result v1

    .line 12333
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->getAdapterPosition()I

    move-result v2

    .line 12334
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 12335
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public WA(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;ILjava/util/List;)Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 12127
    invoke-virtual {p0}, Landroid/support/v7/widget/b;->Wv()Landroid/support/v7/widget/E;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/E;->ZA(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v0

    return-object v0
.end method

.method public WB(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 12156
    invoke-virtual {p0}, Landroid/support/v7/widget/b;->Wv()Landroid/support/v7/widget/E;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/E;->ZA(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v0

    return-object v0
.end method

.method public WC()J
    .locals 2

    .prologue
    .line 12049
    iget-wide v0, p0, Landroid/support/v7/widget/b;->Oz:J

    return-wide v0
.end method

.method public abstract WD()Z
.end method

.method public final WE(Landroid/support/v7/widget/j;)V
    .locals 1

    .prologue
    .line 12411
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/b;->Wx(Landroid/support/v7/widget/j;)V

    .line 12412
    iget-object v0, p0, Landroid/support/v7/widget/b;->OE:Landroid/support/v7/widget/x;

    if-nez v0, :cond_0

    .line 12415
    :goto_0
    return-void

    .line 12413
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b;->OE:Landroid/support/v7/widget/x;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/x;->WH(Landroid/support/v7/widget/j;)V

    goto :goto_0
.end method

.method public abstract WF(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
.end method

.method public abstract WG()V
.end method

.method public Wo()J
    .locals 2

    .prologue
    .line 12067
    iget-wide v0, p0, Landroid/support/v7/widget/b;->OC:J

    return-wide v0
.end method

.method public final Wp()V
    .locals 3

    .prologue
    .line 12554
    iget-object v0, p0, Landroid/support/v7/widget/b;->OD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12555
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 12558
    iget-object v0, p0, Landroid/support/v7/widget/b;->OD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12559
    return-void

    .line 12556
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b;->OD:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/F;

    invoke-interface {v0}, Landroid/support/v7/widget/F;->ZC()V

    .line 12555
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public abstract Wq()V
.end method

.method Ws(Landroid/support/v7/widget/x;)V
    .locals 0

    .prologue
    .line 12088
    iput-object p1, p0, Landroid/support/v7/widget/b;->OE:Landroid/support/v7/widget/x;

    .line 12089
    return-void
.end method

.method public abstract Wt(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
.end method

.method public abstract Wu(Landroid/support/v7/widget/j;)V
.end method

.method public Wv()Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 12571
    new-instance v0, Landroid/support/v7/widget/E;

    invoke-direct {v0}, Landroid/support/v7/widget/E;-><init>()V

    return-object v0
.end method

.method public Ww(Landroid/support/v7/widget/j;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 12546
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/b;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/j;)Z

    move-result v0

    return v0
.end method

.method public Wx(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 12426
    return-void
.end method

.method public Wy()J
    .locals 2

    .prologue
    .line 12013
    iget-wide v0, p0, Landroid/support/v7/widget/b;->OB:J

    return-wide v0
.end method

.method public Wz()J
    .locals 2

    .prologue
    .line 12031
    iget-wide v0, p0, Landroid/support/v7/widget/b;->OA:J

    return-wide v0
.end method

.method public abstract animateAppearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
.end method

.method public abstract animateDisappearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/j;)Z
    .locals 1

    .prologue
    .line 12516
    const/4 v0, 0x1

    return v0
.end method
