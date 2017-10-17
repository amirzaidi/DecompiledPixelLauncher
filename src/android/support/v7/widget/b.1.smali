.class public abstract Landroid/support/v7/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Qd:J

.field private Qe:J

.field private Qf:J

.field private Qg:J

.field private Qh:Ljava/util/ArrayList;

.field private Qi:Landroid/support/v7/widget/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 12013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12069
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/b;->Qi:Landroid/support/v7/widget/x;

    .line 12070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/b;->Qh:Ljava/util/ArrayList;

    .line 12073
    iput-wide v2, p0, Landroid/support/v7/widget/b;->Qe:J

    .line 12074
    iput-wide v2, p0, Landroid/support/v7/widget/b;->Qd:J

    .line 12075
    iput-wide v4, p0, Landroid/support/v7/widget/b;->Qf:J

    .line 12076
    iput-wide v4, p0, Landroid/support/v7/widget/b;->Qg:J

    .line 12680
    return-void
.end method

.method static Xp(Landroid/support/v7/widget/j;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 12398
    invoke-static {p0}, Landroid/support/v7/widget/j;->access$1600(Landroid/support/v7/widget/j;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 12399
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12402
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 12409
    :cond_0
    :goto_0
    return v0

    .line 12400
    :cond_1
    const/4 v0, 0x4

    return v0

    .line 12403
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->getOldPosition()I

    move-result v1

    .line 12404
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->getAdapterPosition()I

    move-result v2

    .line 12405
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 12406
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public XA()J
    .locals 2

    .prologue
    .line 12120
    iget-wide v0, p0, Landroid/support/v7/widget/b;->Qd:J

    return-wide v0
.end method

.method public abstract XB()Z
.end method

.method public final XC(Landroid/support/v7/widget/j;)V
    .locals 1

    .prologue
    .line 12482
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/b;->Xv(Landroid/support/v7/widget/j;)V

    .line 12483
    iget-object v0, p0, Landroid/support/v7/widget/b;->Qi:Landroid/support/v7/widget/x;

    if-nez v0, :cond_0

    .line 12486
    :goto_0
    return-void

    .line 12484
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b;->Qi:Landroid/support/v7/widget/x;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/x;->XF(Landroid/support/v7/widget/j;)V

    goto :goto_0
.end method

.method public abstract XD(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
.end method

.method public abstract XE()V
.end method

.method public Xm()J
    .locals 2

    .prologue
    .line 12138
    iget-wide v0, p0, Landroid/support/v7/widget/b;->Qg:J

    return-wide v0
.end method

.method public final Xn()V
    .locals 3

    .prologue
    .line 12625
    iget-object v0, p0, Landroid/support/v7/widget/b;->Qh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12626
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 12629
    iget-object v0, p0, Landroid/support/v7/widget/b;->Qh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12630
    return-void

    .line 12627
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/b;->Qh:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/F;

    invoke-interface {v0}, Landroid/support/v7/widget/F;->aaE()V

    .line 12626
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public abstract Xo()V
.end method

.method Xq(Landroid/support/v7/widget/x;)V
    .locals 0

    .prologue
    .line 12159
    iput-object p1, p0, Landroid/support/v7/widget/b;->Qi:Landroid/support/v7/widget/x;

    .line 12160
    return-void
.end method

.method public abstract Xr(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
.end method

.method public abstract Xs(Landroid/support/v7/widget/j;)V
.end method

.method public Xt()Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 12642
    new-instance v0, Landroid/support/v7/widget/E;

    invoke-direct {v0}, Landroid/support/v7/widget/E;-><init>()V

    return-object v0
.end method

.method public Xu(Landroid/support/v7/widget/j;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/b;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/j;)Z

    move-result v0

    return v0
.end method

.method public Xv(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 12497
    return-void
.end method

.method public Xw()J
    .locals 2

    .prologue
    .line 12084
    iget-wide v0, p0, Landroid/support/v7/widget/b;->Qf:J

    return-wide v0
.end method

.method public Xx()J
    .locals 2

    .prologue
    .line 12102
    iget-wide v0, p0, Landroid/support/v7/widget/b;->Qe:J

    return-wide v0
.end method

.method public Xy(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;ILjava/util/List;)Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 12198
    invoke-virtual {p0}, Landroid/support/v7/widget/b;->Xt()Landroid/support/v7/widget/E;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/E;->aaC(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v0

    return-object v0
.end method

.method public Xz(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 12227
    invoke-virtual {p0}, Landroid/support/v7/widget/b;->Xt()Landroid/support/v7/widget/E;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/E;->aaC(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v0

    return-object v0
.end method

.method public abstract animateAppearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
.end method

.method public abstract animateDisappearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/j;)Z
    .locals 1

    .prologue
    .line 12587
    const/4 v0, 0x1

    return v0
.end method
