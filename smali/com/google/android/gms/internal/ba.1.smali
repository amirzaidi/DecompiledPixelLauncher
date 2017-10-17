.class public abstract Lcom/google/android/gms/internal/ba;
.super Lcom/google/android/gms/internal/aI;


# instance fields
.field protected tt:Lcom/google/android/gms/internal/aR;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->se()Lcom/google/android/gms/internal/ba;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/aR;->vH(I)Lcom/google/android/gms/internal/aP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aP;->computeSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aR;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aR;->vH(I)Lcom/google/android/gms/internal/aP;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/aP;->vw(Lcom/google/android/gms/internal/aV;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public se()Lcom/google/android/gms/internal/ba;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->sg()Lcom/google/android/gms/internal/aI;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ba;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/aX;->xc(Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/ba;)V

    return-object v0
.end method

.method public synthetic sg()Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ba;

    return-object v0
.end method

.method protected final xt(Lcom/google/android/gms/internal/be;I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xL()I

    move-result v1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/be;->xV(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/aN;->vl(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xL()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/be;->xI(II)[B

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/bb;

    invoke-direct {v3, p2, v1}, Lcom/google/android/gms/internal/bb;-><init>(I[B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/aR;->vI(I)Lcom/google/android/gms/internal/aP;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/aP;->vx(Lcom/google/android/gms/internal/bb;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/aR;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aR;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/aP;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aP;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/aR;->vG(ILcom/google/android/gms/internal/aP;)V

    goto :goto_1
.end method
