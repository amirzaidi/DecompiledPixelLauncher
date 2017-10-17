.class public final Lcom/google/android/gms/internal/C;
.super Lcom/google/android/gms/internal/aI;


# instance fields
.field public pd:F

.field public pe:I

.field public pf:J

.field public pg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/C;->sE()Lcom/google/android/gms/internal/C;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/C;->pe:I

    if-nez v1, :cond_1

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/C;->pf:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/C;->pf:J

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/C;->pd:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_2

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/C;->pg:I

    if-nez v1, :cond_3

    :goto_2
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/C;->pe:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/C;->pd:F

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wd(IF)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/C;->pg:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/C;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/C;

    iget v0, p0, Lcom/google/android/gms/internal/C;->pe:I

    iget v1, p1, Lcom/google/android/gms/internal/C;->pe:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/C;->pf:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/C;->pf:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    return v4

    :cond_0
    return v5

    :cond_1
    return v4

    :cond_2
    return v4

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/C;->pd:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/google/android/gms/internal/C;->pd:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/C;->pg:I

    iget v1, p1, Lcom/google/android/gms/internal/C;->pg:I

    if-ne v0, v1, :cond_5

    return v5

    :cond_4
    return v4

    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/C;->pe:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/C;->pf:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/C;->pf:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/C;->pd:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/C;->pg:I

    add-int/2addr v0, v1

    return v0
.end method

.method public sD(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/C;
    .locals 2

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

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/C;->pe:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/C;->pf:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->yd()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/C;->pd:F

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/C;->pg:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sE()Lcom/google/android/gms/internal/C;
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/C;->pe:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/C;->pf:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/C;->pd:F

    iput v2, p0, Lcom/google/android/gms/internal/C;->pg:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/C;->sB:I

    return-object p0
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/C;->pe:I

    if-nez v0, :cond_1

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/C;->pf:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/C;->pf:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/C;->pd:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/C;->pg:I

    if-nez v0, :cond_3

    :goto_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/C;->pe:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/C;->pd:F

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wr(IF)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/C;->pg:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_2
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/C;->sD(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/C;

    move-result-object v0

    return-object v0
.end method
