.class public abstract Lcom/google/android/gms/internal/aU;
.super Lcom/google/android/gms/internal/aC;


# instance fields
.field protected tz:Lcom/google/android/gms/internal/aL;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aC;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aU;->sg()Lcom/google/android/gms/internal/aU;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aL;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/aL;->vG(I)Lcom/google/android/gms/internal/aJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aJ;->computeSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aL;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aL;->vG(I)Lcom/google/android/gms/internal/aJ;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/aJ;->vv(Lcom/google/android/gms/internal/aP;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public sg()Lcom/google/android/gms/internal/aU;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/aC;->si()Lcom/google/android/gms/internal/aC;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aU;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/aR;->xb(Lcom/google/android/gms/internal/aU;Lcom/google/android/gms/internal/aU;)V

    return-object v0
.end method

.method public synthetic si()Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aU;

    return-object v0
.end method

.method protected final xs(Lcom/google/android/gms/internal/aY;I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xK()I

    move-result v1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/aY;->xU(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/aH;->vk(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xK()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/aY;->xH(II)[B

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/aV;

    invoke-direct {v3, p2, v1}, Lcom/google/android/gms/internal/aV;-><init>(I[B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/aL;->vH(I)Lcom/google/android/gms/internal/aJ;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/aJ;->vw(Lcom/google/android/gms/internal/aV;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/aL;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aL;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/aJ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aJ;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/aL;->vF(ILcom/google/android/gms/internal/aJ;)V

    goto :goto_1
.end method
