.class public final Lcom/google/android/gms/internal/ac;
.super Lcom/google/android/gms/internal/ba;


# instance fields
.field public rs:Ljava/lang/String;

.field public rt:J

.field public ru:J

.field public rv:I

.field public rw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ac;->tL()Lcom/google/android/gms/internal/ac;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->computeSerializedSize()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ac;->rt:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ac;->rt:J

    const/4 v1, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ac;->ru:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ac;->ru:J

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ac;->rv:I

    if-nez v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->rs:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->rw:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    return v0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ac;->rv:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->rs:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->rw:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ac;->rt:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ac;->rt:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ac;->ru:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ac;->ru:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ac;->rv:I

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->rs:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->rw:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ba;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ac;->rv:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->rs:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->rw:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ac;->tK(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/ac;

    move-result-object v0

    return-object v0
.end method

.method public tK(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/ac;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ba;->xt(Lcom/google/android/gms/internal/be;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ac;->rt:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ac;->ru:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ac;->rv:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->rs:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->rw:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public tL()Lcom/google/android/gms/internal/ac;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ac;->rt:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ac;->ru:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ac;->rv:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->rs:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->rw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->tt:Lcom/google/android/gms/internal/aR;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ac;->sB:I

    return-object p0
.end method
