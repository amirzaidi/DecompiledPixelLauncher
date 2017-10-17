.class public final Lcom/google/android/gms/internal/A;
.super Lcom/google/android/gms/internal/aC;


# instance fields
.field public pA:I

.field public pv:I

.field public pw:I

.field public px:I

.field public py:I

.field public pz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aC;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/A;->sK()Lcom/google/android/gms/internal/A;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/aC;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/A;->px:I

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/A;->pv:I

    if-nez v1, :cond_1

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/A;->pz:I

    if-nez v1, :cond_2

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/A;->pw:I

    if-nez v1, :cond_3

    :goto_3
    iget v1, p0, Lcom/google/android/gms/internal/A;->py:I

    if-nez v1, :cond_4

    :goto_4
    iget v1, p0, Lcom/google/android/gms/internal/A;->pA:I

    if-nez v1, :cond_5

    :goto_5
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/A;->px:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/A;->pv:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/A;->pz:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/A;->pw:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/A;->py:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/A;->pA:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/A;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/A;

    iget v0, p0, Lcom/google/android/gms/internal/A;->px:I

    iget v1, p1, Lcom/google/android/gms/internal/A;->px:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/A;->pv:I

    iget v1, p1, Lcom/google/android/gms/internal/A;->pv:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/A;->pz:I

    iget v1, p1, Lcom/google/android/gms/internal/A;->pz:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/A;->pw:I

    iget v1, p1, Lcom/google/android/gms/internal/A;->pw:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/A;->py:I

    iget v1, p1, Lcom/google/android/gms/internal/A;->py:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/A;->pA:I

    iget v1, p1, Lcom/google/android/gms/internal/A;->pA:I

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

    iget v1, p0, Lcom/google/android/gms/internal/A;->px:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/A;->pv:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/A;->pz:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/A;->pw:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/A;->py:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/A;->pA:I

    add-int/2addr v0, v1

    return v0
.end method

.method public sK()Lcom/google/android/gms/internal/A;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/A;->px:I

    iput v0, p0, Lcom/google/android/gms/internal/A;->pv:I

    iput v0, p0, Lcom/google/android/gms/internal/A;->pz:I

    iput v0, p0, Lcom/google/android/gms/internal/A;->pw:I

    iput v0, p0, Lcom/google/android/gms/internal/A;->py:I

    iput v0, p0, Lcom/google/android/gms/internal/A;->pA:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/A;->sH:I

    return-object p0
.end method

.method public sL(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/A;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vm(Lcom/google/android/gms/internal/aY;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/A;->px:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/A;->pv:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/A;->pz:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/A;->pw:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/A;->py:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/A;->pA:I

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

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/A;->px:I

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/A;->pv:I

    if-nez v0, :cond_1

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/A;->pz:I

    if-nez v0, :cond_2

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/A;->pw:I

    if-nez v0, :cond_3

    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/A;->py:I

    if-nez v0, :cond_4

    :goto_4
    iget v0, p0, Lcom/google/android/gms/internal/A;->pA:I

    if-nez v0, :cond_5

    :goto_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aC;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/A;->px:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/A;->pv:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/A;->pz:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/A;->pw:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/A;->py:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/A;->pA:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_5
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/A;->sL(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/A;

    move-result-object v0

    return-object v0
.end method
