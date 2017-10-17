.class public final Lcom/google/android/gms/internal/aA;
.super Lcom/google/android/gms/internal/ba;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public sm:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aA;->uD()Lcom/google/android/gms/internal/aA;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aA;->uF()Lcom/google/android/gms/internal/aA;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/aA;->sm:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/aA;->sm:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/internal/aA;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/aA;

    iget v2, p0, Lcom/google/android/gms/internal/aA;->sm:I

    iget v3, p1, Lcom/google/android/gms/internal/aA;->sm:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_5

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_6

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    return v0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    iget-object v1, p1, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aR;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/aA;->sm:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aR;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/aA;->sm:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ba;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/aA;->sm:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aA;->uE(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aA;

    move-result-object v0

    return-object v0
.end method

.method public synthetic se()Lcom/google/android/gms/internal/ba;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aA;

    return-object v0
.end method

.method public synthetic sg()Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aA;

    return-object v0
.end method

.method public uD()Lcom/google/android/gms/internal/aA;
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/aA;->sm:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aA;->tt:Lcom/google/android/gms/internal/aR;

    iput v1, p0, Lcom/google/android/gms/internal/aA;->sB:I

    return-object p0
.end method

.method public uE(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aA;
    .locals 1

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/aA;->sm:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public uF()Lcom/google/android/gms/internal/aA;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->se()Lcom/google/android/gms/internal/ba;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aA;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
