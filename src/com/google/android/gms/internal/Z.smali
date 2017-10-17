.class public final Lcom/google/android/gms/internal/Z;
.super Lcom/google/android/gms/internal/aI;


# instance fields
.field public rf:I

.field public rg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/Z;->tF()Lcom/google/android/gms/internal/Z;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/Z;->rg:I

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/Z;->rf:I

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/Z;->rg:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/Z;->rf:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/Z;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/Z;

    iget v0, p0, Lcom/google/android/gms/internal/Z;->rg:I

    iget v1, p1, Lcom/google/android/gms/internal/Z;->rg:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/Z;->rf:I

    iget v1, p1, Lcom/google/android/gms/internal/Z;->rf:I

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

    iget v1, p0, Lcom/google/android/gms/internal/Z;->rg:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/Z;->rf:I

    add-int/2addr v0, v1

    return v0
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/Z;->rg:I

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/Z;->rf:I

    if-nez v0, :cond_1

    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/Z;->rg:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/Z;->rf:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_1
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/Z;->tE(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/Z;

    move-result-object v0

    return-object v0
.end method

.method public tE(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/Z;
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

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/Z;->rg:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/Z;->rf:I

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

.method public tF()Lcom/google/android/gms/internal/Z;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/Z;->rg:I

    iput v0, p0, Lcom/google/android/gms/internal/Z;->rf:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/Z;->sB:I

    return-object p0
.end method
