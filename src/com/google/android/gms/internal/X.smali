.class public final Lcom/google/android/gms/internal/X;
.super Lcom/google/android/gms/internal/aU;


# instance fields
.field public rD:J

.field public rE:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aU;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/X;->tL()Lcom/google/android/gms/internal/X;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    invoke-super {p0}, Lcom/google/android/gms/internal/aU;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/X;->type:I

    if-ne v1, v4, :cond_2

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/X;->rE:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/X;->rE:J

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/X;->rD:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/X;->rD:J

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/X;->type:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x3

    iget v0, p0, Lcom/google/android/gms/internal/X;->type:I

    if-ne v0, v3, :cond_2

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/X;->rE:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/X;->rE:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/X;->rD:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/X;->rD:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aU;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/X;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_0
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/X;->tM(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/X;

    move-result-object v0

    return-object v0
.end method

.method public tL()Lcom/google/android/gms/internal/X;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/X;->type:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/X;->rE:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/X;->rD:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/X;->tz:Lcom/google/android/gms/internal/aL;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/X;->sH:I

    return-object p0
.end method

.method public tM(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/X;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/aU;->xs(Lcom/google/android/gms/internal/aY;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/X;->type:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/X;->rE:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/X;->rD:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
