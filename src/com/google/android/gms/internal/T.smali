.class public final Lcom/google/android/gms/internal/T;
.super Lcom/google/android/gms/internal/aC;


# instance fields
.field public rm:I

.field public rn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aC;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->tE()Lcom/google/android/gms/internal/T;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/aC;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/T;->rn:I

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/T;->rm:I

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/T;->rn:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/T;->rm:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/T;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/T;

    iget v0, p0, Lcom/google/android/gms/internal/T;->rn:I

    iget v1, p1, Lcom/google/android/gms/internal/T;->rn:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/T;->rm:I

    iget v1, p1, Lcom/google/android/gms/internal/T;->rm:I

    if-ne v0, v1, :cond_3

    return v3

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
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

    iget v1, p0, Lcom/google/android/gms/internal/T;->rn:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/T;->rm:I

    add-int/2addr v0, v1

    return v0
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/T;->rn:I

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/T;->rm:I

    if-nez v0, :cond_1

    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aC;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/T;->rn:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/T;->rm:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_1
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/T;->tD(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/T;

    move-result-object v0

    return-object v0
.end method

.method public tD(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/T;
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

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/T;->rn:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/T;->rm:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public tE()Lcom/google/android/gms/internal/T;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/T;->rn:I

    iput v0, p0, Lcom/google/android/gms/internal/T;->rm:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/T;->sH:I

    return-object p0
.end method
