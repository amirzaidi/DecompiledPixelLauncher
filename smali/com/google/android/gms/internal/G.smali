.class public final Lcom/google/android/gms/internal/G;
.super Lcom/google/android/gms/internal/aI;


# instance fields
.field public po:I

.field public pp:I

.field public pq:I

.field public pr:I

.field public ps:I

.field public pt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/G;->sL()Lcom/google/android/gms/internal/G;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/G;->pq:I

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/G;->po:I

    if-nez v1, :cond_1

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/G;->ps:I

    if-nez v1, :cond_2

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/G;->pp:I

    if-nez v1, :cond_3

    :goto_3
    iget v1, p0, Lcom/google/android/gms/internal/G;->pr:I

    if-nez v1, :cond_4

    :goto_4
    iget v1, p0, Lcom/google/android/gms/internal/G;->pt:I

    if-nez v1, :cond_5

    :goto_5
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/G;->pq:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/G;->po:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/G;->ps:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/G;->pp:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/G;->pr:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/G;->pt:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/G;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/G;

    iget v0, p0, Lcom/google/android/gms/internal/G;->pq:I

    iget v1, p1, Lcom/google/android/gms/internal/G;->pq:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/G;->po:I

    iget v1, p1, Lcom/google/android/gms/internal/G;->po:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/G;->ps:I

    iget v1, p1, Lcom/google/android/gms/internal/G;->ps:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/G;->pp:I

    iget v1, p1, Lcom/google/android/gms/internal/G;->pp:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/G;->pr:I

    iget v1, p1, Lcom/google/android/gms/internal/G;->pr:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/G;->pt:I

    iget v1, p1, Lcom/google/android/gms/internal/G;->pt:I

    if-ne v0, v1, :cond_7

    return v3

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    return v2

    :cond_4
    return v2

    :cond_5
    return v2

    :cond_6
    return v2

    :cond_7
    return v2
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/G;->pq:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/G;->po:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/G;->ps:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/G;->pp:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/G;->pr:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/G;->pt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public sL()Lcom/google/android/gms/internal/G;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/G;->pq:I

    iput v0, p0, Lcom/google/android/gms/internal/G;->po:I

    iput v0, p0, Lcom/google/android/gms/internal/G;->ps:I

    iput v0, p0, Lcom/google/android/gms/internal/G;->pp:I

    iput v0, p0, Lcom/google/android/gms/internal/G;->pr:I

    iput v0, p0, Lcom/google/android/gms/internal/G;->pt:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/G;->sB:I

    return-object p0
.end method

.method public sM(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/G;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vn(Lcom/google/android/gms/internal/be;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/G;->pq:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/G;->po:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/G;->ps:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/G;->pp:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/G;->pr:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/G;->pt:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/G;->pq:I

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/G;->po:I

    if-nez v0, :cond_1

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/G;->ps:I

    if-nez v0, :cond_2

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/G;->pp:I

    if-nez v0, :cond_3

    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/G;->pr:I

    if-nez v0, :cond_4

    :goto_4
    iget v0, p0, Lcom/google/android/gms/internal/G;->pt:I

    if-nez v0, :cond_5

    :goto_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/G;->pq:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/G;->po:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/G;->ps:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/G;->pp:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/G;->pr:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/G;->pt:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_5
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/G;->sM(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/G;

    move-result-object v0

    return-object v0
.end method
